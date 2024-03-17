unit uConhecimento.DAO;

interface

uses
  uConhecimento, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TConhecimentoDAO = class
  public
    class procedure CarregarConhecimento(Conhecimento: TConhecimento);
    class procedure SalvarConhecimento  (Conhecimento: TConhecimento);
    class procedure ExcluirConhecimento (Conhecimento: TConhecimento);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uConhecimento.dm, Forms;

{ TConhecimentoDAO }

constructor TConhecimentoDAO.Create();
begin
  if not Assigned(DataModuleConhecimento) then
  begin
    DataModuleConhecimento := TDataModuleConhecimento.Create(Application)
  end;
end;

destructor TConhecimentoDAO.Destroy;
begin
  FreeAndNil(DataModuleConhecimento);
  inherited;
end;

class procedure TConhecimentoDAO.CarregarConhecimento(Conhecimento: TConhecimento);
begin
  try
    with DataModuleConhecimento.FDConhecimentoQuery do
    begin
      ParamByName('conhecimento_id').AsInteger := Conhecimento.ConhecimentoID;
      Open;
      if RecordCount > 0 then
      begin
        Conhecimento.CTE := FieldByName('cte').AsString;
        Conhecimento.EmpresaID := FieldByName('empresa_id').AsInteger;
        Conhecimento.ClienteID := FieldByName('cliente_id').AsInteger;
        Conhecimento.ItemID := FieldByName('empresa_id').AsInteger;
        Conhecimento.DocumentoFiscalID := FieldByName('documento_fiscal_id').AsInteger;
        Conhecimento.LancamentoFiscalID := FieldByName('lancamento_fiscal_id').AsInteger;
        Conhecimento.DataAlteracao := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum conhecimento encontrado com esse Id');
      end;

    end;
  finally
    DataModuleConhecimento.FDConhecimentoQuery.Close;
  end;
end;

class procedure TConhecimentoDAO.SalvarConhecimento(Conhecimento: TConhecimento);
begin
   try
    with DataModuleConhecimento.FDConhecimentoQuery do
    begin
      ParamByName('conhecimento_id').AsInteger := Conhecimento.ConhecimentoID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('cte').AsString                   := Conhecimento.CTE;
      FieldByName('empresa_id').AsInteger           := Conhecimento.EmpresaID;
      FieldByName('cliente_id').AsInteger           := Conhecimento.ClienteID;
      FieldByName('empresa_id').AsInteger           := Conhecimento.ItemID;
      FieldByName('documento_fiscal_id').AsInteger  := Conhecimento.DocumentoFiscalID;
      FieldByName('lancamento_fiscal_id').AsInteger := Conhecimento.LancamentoFiscalID;

      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleConhecimento.FDConhecimentoQuery.Close;
  end;
end;

class procedure TConhecimentoDAO.ExcluirConhecimento(Conhecimento: TConhecimento);
begin
  try
    with DataModuleConhecimento.FDConhecimentoDeleteQuery do
    begin
      ParamByName('conhecimento_id').AsInteger := Conhecimento.ConhecimentoID;
      Open;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleConhecimento.FDConhecimentoDeleteQuery.Close;
  end;
end;

end.

