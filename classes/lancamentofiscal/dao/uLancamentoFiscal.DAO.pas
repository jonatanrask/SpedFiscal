unit uLancamentoFiscal.DAO;

interface

uses
  uLancamentoFiscal, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TLancamentoFiscalDAO = class
    class procedure CarregarLancamentoFiscal  (LancamentoFiscal: TLancamentoFiscal);
    class procedure SalvarLancamentoFiscal    (LancamentoFiscal: TLancamentoFiscal);
    class procedure ExcluirLancamentoFiscal   (LancamentoFiscal: TLancamentoFiscal);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uLancamentoFiscal.dm, Forms;

constructor TLancamentoFiscalDAO.Create();
begin
  if not Assigned(DataModuleLancamentoFiscal) then
  begin
    DataModuleLancamentoFiscal := TDataModuleLancamentoFiscal.Create(Application)
  end;
end;

destructor TLancamentoFiscalDAO.Destroy;
begin
  FreeAndNil(DataModuleLancamentoFiscal);
  inherited;
end;

class procedure TLancamentoFiscalDAO.CarregarLancamentoFiscal(LancamentoFiscal: TLancamentoFiscal);
begin
  try
    with DataModuleLancamentoFiscal.FDLancamentoFiscalQuery do
    begin
      ParamByName('lancamento_fiscal_id').AsInteger := LancamentoFiscal.LancamentoFiscalID;
      Open;
      if RecordCount > 0 then
      begin
        LancamentoFiscal.CodigoObs     := FieldByName('codigo_obs').AsInteger;
        LancamentoFiscal.Texto         := FieldByName('texto').AsString;
        LancamentoFiscal.DataAlteracao := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum lançamento fiscal encontrado com esse Id');
      end;
    end;
  finally
    DataModuleLancamentoFiscal.FDLancamentoFiscalQuery.Close;
  end;

end;

class procedure TLancamentoFiscalDAO.SalvarLancamentoFiscal(LancamentoFiscal: TLancamentoFiscal);
begin
  try
    with DataModuleLancamentoFiscal.FDLancamentoFiscalQuery do
    begin
      ParamByName('lacamento_fiscal_id').AsInteger := LancamentoFiscal.LancamentoFiscalID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('codigo_obs').AsInteger      := LancamentoFiscal.CodigoObs;
      FieldByName('texto').AsString            := LancamentoFiscal.Texto;

      Post;
      ApplyUpdates;
      CommitUpdates;
      
    end;
  finally
    DataModuleLancamentoFiscal.FDLancamentoFiscalQuery.Close;
  end;

end;

class procedure TLancamentoFiscalDAO.ExcluirLancamentoFiscal(LancamentoFiscal   : TLancamentoFiscal);
begin
  try
   with DataModuleLancamentoFiscal.FDLancamentoFiscalDeleteQuery do
    begin
      ParamByName('lacamento_fiscal_id').AsInteger := LancamentoFiscal.LancamentoFiscalID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleLancamentoFiscal.FDLancamentoFiscalDeleteQuery.Close;
  end;
end;

end.

