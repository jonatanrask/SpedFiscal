unit uClienteLog;

interface

uses
  uClienteLog.intf;

type
  TClienteLog = class(TInterfacedObject, IClienteLog)
  private
    FClienteLogID     : Integer;
    FClienteID        : Integer;
    FDataAlteracao    : TDateTime;
    FNumeroCampo      : Integer;
    FConteudoAnterior : string;

    function GetClienteLogID    : Integer;
    function GetClienteID       : Integer;
    function GetDataAlteracao   : TDateTime;
    function GetNumeroCampo     : Integer;
    function GetConteudoAnterior: string;

    procedure SetClienteLogID     (const Value: Integer);
    procedure SetClienteID        (const Value: Integer);
    procedure SetDataAlteracao    (const Value: TDateTime);
    procedure SetNumeroCampo      (const Value: Integer);
    procedure SetConteudoAnterior (const Value: string);
  public
    property ClienteLogID     : Integer   read GetClienteLogID     write SetClienteLogId;
    property ClienteID        : Integer   read GetClienteID        write SetClienteID;
    property DataAlteracao    : TDateTime read GetDataAlteracao    write SetDataAlteracao;
    property NumeroCampo      : Integer   read GetNumeroCampo      write SetNumeroCampo;
    property ConteudoAnterior : string    read GetConteudoAnterior write SetConteudoAnterior;
  end;

implementation

{ TClienteLog }

function TClienteLog.GetClienteID: Integer;
begin
  Result := FClienteID;
end;

function TClienteLog.GetClienteLogID: Integer;
begin
  Result := FClienteLogID;
end;

function TClienteLog.GetConteudoAnterior: string;
begin
  Result := FConteudoAnterior;
end;

function TClienteLog.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

function TClienteLog.GetNumeroCampo: Integer;
begin
  Result := FNumeroCampo;
end;

procedure TClienteLog.SetClienteLogID(const Value: Integer);
begin
  FClienteLogID := Value;
end;

procedure TClienteLog.SetClienteID(const Value: Integer);
begin
  FClienteID := Value;
end;

procedure TClienteLog.SetConteudoAnterior(const Value: string);
begin
  FConteudoAnterior := Value;
end;

procedure TClienteLog.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TClienteLog.SetNumeroCampo(const Value: Integer);
begin
  FNumeroCampo := Value;
end;

end.

