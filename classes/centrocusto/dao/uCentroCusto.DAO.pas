unit uCentroCusto.DAO;

interface

uses
  uCentroCusto, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TCentroCustoDAO = class
  public
    class procedure CarregarCentroCusto (CentroCusto: TCentroCusto);
    class procedure SalvarCentroCusto   (CentroCusto: TCentroCusto);
    class procedure ExcluirCentroCusto  (CentroCusto: TCentroCusto);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TCentroCustoDAO }

uses
  uCentroCusto.dm, Forms;

constructor TCentroCustoDAO.Create();
begin
  if not Assigned(DataModuleCentroCusto) then
  begin
    DataModuleCentroCusto := TDataModuleCentroCusto.Create(Application)
  end;
end;

destructor TCentroCustoDAO.Destroy;
begin
  FreeAndNil(DataModuleCentroCusto);
  inherited;
end;

class procedure TCentroCustoDAO.CarregarCentroCusto(CentroCusto: TCentroCusto);
begin
  try
    with DataModuleCentroCusto.FDCentroCustoQuery do
    begin
      ParamByName('centro_custo_id').AsInteger := CentroCusto.CentroCustoID;
      Open;
      if RecordCount > 0 then
      begin
        CentroCusto.CodigoCentroCustos  := FieldByName('codigo_centro_custros').AsString;
        CentroCusto.NomeCentroCustos    := FieldByName('nome_centro_custos').AsString;
        CentroCusto.DataAlteracao       := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum Centro Custo encontrado com esse Id');
      end;

    end;
  finally
    DataModuleCentroCusto.FDCentroCustoQuery.Close;
  end;
end;

class procedure TCentroCustoDAO.SalvarCentroCusto(CentroCusto: TCentroCusto);
begin
  try
    with DataModuleCentroCusto.FDCentroCustoDeleteQuery do
    begin
      ParamByName('centro_custo_id').AsInteger := CentroCusto.CentroCustoID;
      Open;
      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('codigo_centro_custros').AsString := CentroCusto.CodigoCentroCustos;
      FieldByName('nome_centro_custos').AsString    := CentroCusto.NomeCentroCustos;
      FieldByName('data_alteracao').AsDateTime      := CentroCusto.DataAlteracao;

      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleCentroCusto.FDCentroCustoDeleteQuery.Close;
  end;
end;

class procedure TCentroCustoDAO.ExcluirCentroCusto(CentroCusto: TCentroCusto);
begin
  try
    with DataModuleCentroCusto.FDCentroCustoQuery do
    begin
      ParamByName('centro_custo_id').AsInteger := CentroCusto.CentroCustoID;
      Open;
      ExecSQL;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleCentroCusto.FDCentroCustoQuery.Close;
  end;
end;

end.

