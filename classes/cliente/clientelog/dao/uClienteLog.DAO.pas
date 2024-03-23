unit uClienteLog.DAO;

interface

uses
  uClienteLog, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TClienteLogDAO = class
  public

    class procedure CarregarLogsCliente(ClienteLog: TClienteLog);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uClienteLog.dm, Forms;

constructor TClienteLogDAO.Create();
begin
  if not Assigned(DataModuleClienteLog) then
  begin
    DataModuleClienteLog := TDataModuleClienteLog.Create(Application)
  end;
end;

destructor TClienteLogDAO.Destroy;
begin
  FreeAndNil(DataModuleClienteLog);
  inherited;
end;

class procedure TClienteLogDAO.CarregarLogsCliente(ClienteLog: TClienteLog);
begin
  try
    with DataModuleClienteLog.FDClienteLogQuery do
    begin
      ParamByName('cliente_id').AsInteger := ClienteLog.ClienteID;
      Open;
      if RecordCount > 0 then
      begin
        ClienteLog.ClienteLogID     := FieldByName('cliente_log_id').AsInteger;
        ClienteLog.ClienteID        := FieldByName('cliente_id').AsInteger;
        ClienteLog.DataAlteracao    := FieldByName('data_alteracao').AsDateTime;
        ClienteLog.NumeroCampo      := FieldByName('numero_campo').AsInteger;
        ClienteLog.ConteudoAnterior := FieldByName('conteudo_anterior').AsString;
      end
      else
      begin
        raise Exception.Create('Nenhum log encontrado com esse Id');
      end;

    end;
  finally
    DataModuleClienteLog.FDClienteLogQuery.Close;
  end;

end;

end.

