unit uUnidadeMedida.DAO;

interface

uses
  uUnidadeMedida, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TUnidadeMedidaDAO = class
  public
    class procedure CarregarUnidadeMedida (UnidadeMedida: TUnidadeMedida);
    class procedure SalvarUnidadeMedida   (UnidadeMedida: TUnidadeMedida);
    class procedure ExcluirUnidadeMedida  (UnidadeMedida: TUnidadeMedida);

    constructor Create;
    destructor Destroy; override;
  end;

implementation
uses
  uUnidadeMedida.dm, Forms;

constructor TUnidadeMedidaDAO.Create();
begin
  if not Assigned(DataModuleUnidadeMedida) then
  begin
    DataModuleUnidadeMedida := TDataModuleUnidadeMedida.Create(Application)
  end;
end;

destructor TUnidadeMedidaDAO.Destroy;
begin
  FreeAndNil(DataModuleUnidadeMedida);
  inherited;
end;

class procedure TUnidadeMedidaDAO.CarregarUnidadeMedida(UnidadeMedida: TUnidadeMedida);
begin
  try
    with DataModuleUnidadeMedida.FDUnidadeMedidaQuery do
    begin
      ParamByName('nature_operacao_id').AsInteger := UnidadeMedida.UnidadeMedidaID;
      if RecordCount > 0 then
      begin
        UnidadeMedida.Descricao     := FieldByName('descricao').AsString;
        UnidadeMedida.DataAlteracao := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhuma Unidade de Medida encontrada com esse Id');
      end;
    end;
  finally
    DataModuleUnidadeMedida.FDUnidadeMedidaQuery.Close;
  end;
end;

class procedure TUnidadeMedidaDAO.SalvarUnidadeMedida(UnidadeMedida: TUnidadeMedida);
begin
  try
    with DataModuleUnidadeMedida.FDUnidadeMedidaQuery do
    begin
      ParamByName('nature_operacao_id').AsInteger := UnidadeMedida.UnidadeMedidaID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('descricao').AsString := UnidadeMedida.Descricao;

      Post;
      ApplyUpdates;
      CommitUpdates;

    end;
  finally
    DataModuleUnidadeMedida.FDUnidadeMedidaQuery.Close;
  end;
end;

class procedure TUnidadeMedidaDAO.ExcluirUnidadeMedida(UnidadeMedida: TUnidadeMedida);
begin
  try
   with DataModuleUnidadeMedida.FDUnidadeMedidaDeleteQuery do
    begin
      ParamByName('nature_operacao_id').AsInteger := UnidadeMedida.UnidadeMedidaID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleUnidadeMedida.FDUnidadeMedidaDeleteQuery.Close;
  end;
end;

end.

