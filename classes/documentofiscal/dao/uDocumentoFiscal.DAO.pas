unit uDocumentoFiscal.DAO;

interface

uses
  uDocumentoFiscal, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDocumentoFiscalDAO = class
    class procedure CarregarDocumentoFiscal (DocumentoFiscal: TDocumentoFiscal);
    class procedure SalvarDocumentoFiscal   (DocumentoFiscal: TDocumentoFiscal);
    class procedure ExcluirDocumentoFiscal  (DocumentoFiscal: TDocumentoFiscal);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uDocumentoFiscal.dm, Forms;

constructor TDocumentoFiscalDAO.Create();
begin
  if not Assigned(DataModuleDocumentoFiscal) then
  begin
    DataModuleDocumentoFiscal := TDataModuleDocumentoFiscal.Create(Application)
  end;
end;

destructor TDocumentoFiscalDAO.Destroy;
begin
  FreeAndNil(DataModuleDocumentoFiscal);
  inherited;
end;

class procedure TDocumentoFiscalDAO.CarregarDocumentoFiscal(DocumentoFiscal: TDocumentoFiscal);
begin
  try
    with DataModuleDocumentoFiscal.FDDocumentoFiscalQuery do
    begin
      ParamByName('documento_fiscal_id').AsInteger := DocumentoFiscal.DocumentoFiscalID;
      Open;
      if RecordCount > 0 then
      begin
        DocumentoFiscal.CodigoInformacao  := FieldByName('codigo_informacao').AsInteger;
        DocumentoFiscal.Texto             := FieldByName('texto').AsString;
        DocumentoFiscal.DataAlteracao     := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum documento fiscal encontrado com esse Id');
      end;

    end;
  finally
    DataModuleDocumentoFiscal.FDDocumentoFiscalQuery.Close;
  end;
end;

class procedure TDocumentoFiscalDAO.SalvarDocumentoFiscal(DocumentoFiscal: TDocumentoFiscal);
begin
 try
    with DataModuleDocumentoFiscal.FDDocumentoFiscalQuery do
    begin
      ParamByName('documento_fiscal_id').AsInteger := DocumentoFiscal.DocumentoFiscalID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      DocumentoFiscal.CodigoInformacao := FieldByName('codigo_informacao').AsInteger;
      DocumentoFiscal.Texto            := FieldByName('texto').AsString;

      Post;
      ApplyUpdates;
      CommitUpdates;

    end;
  finally
    DataModuleDocumentoFiscal.FDDocumentoFiscalQuery.Close;
  end;
end;

class procedure TDocumentoFiscalDAO.ExcluirDocumentoFiscal(DocumentoFiscal: TDocumentoFiscal);
begin
  try
    with DataModuleDocumentoFiscal.FDDocumentoFiscalDeleteQuery do
    begin
      ParamByName('documento_fiscal_id').AsInteger := DocumentoFiscal.DocumentoFiscalID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleDocumentoFiscal.FDDocumentoFiscalDeleteQuery.Close;
  end;
end;

end.

