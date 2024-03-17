unit uConhecimento;

interface

uses
  uConhecimento.intf;

type
  TConhecimento = class(TInterfacedObject, IConhecimento)
  private
    FConhecimentoID     : Integer;
    FCTE                : string;
    FEmpresaID          : Integer;
    FClienteID          : Integer;
    FItemID             : Integer;
    FDocumentoFiscalID  : Integer;
    FLancamentoFiscalID : Integer;
    FDataAlteracao      : TDateTime;

    function GetConhecimentoID     : Integer;
    function GetCTE                : string;
    function GetEmpresaID          : Integer;
    function GetClienteID          : Integer;
    function GetItemID             : Integer;
    function GetDocumentoFiscalID  : Integer;
    function GetLancamentoFiscalID : Integer;
    function GetDataAlteracao      : TDateTime;

    procedure SetCTE               (const Value: string);
    procedure SetEmpresaID         (const Value: Integer);
    procedure SetClienteID         (const Value: Integer);
    procedure SetItemID            (const Value: Integer);
    procedure SetDocumentoFiscalID (const Value: Integer);
    procedure SetLancamentoFiscalID(const Value: Integer);
    procedure SetDataAlteracao     (const Value: TDateTime);

  public
    property ConhecimentoID     : Integer   read GetConhecimentoID;
    property CTE                : string    read GetCTE                 write SetCTE;
    property EmpresaID          : Integer   read GetEmpresaID           write SetEmpresaID;
    property ClienteID          : Integer   read GetClienteID           write SetClienteID;
    property ItemID             : Integer   read GetItemID              write SetItemID;
    property DocumentoFiscalID  : Integer   read GetDocumentoFiscalID   write SetDocumentoFiscalID;
    property LancamentoFiscalID : Integer   read GetLancamentoFiscalID  write SetLancamentoFiscalID;
    property DataAlteracao      : TDateTime read GetDataAlteracao       write SetDataAlteracao;

  end;

implementation

{ TConhecimento }

function TConhecimento.GetConhecimentoID: Integer;
begin
  Result := FConhecimentoID;
end;

function TConhecimento.GetCTE: string;
begin
  Result := FCTE;
end;

function TConhecimento.GetEmpresaID: Integer;
begin
  Result := FEmpresaID;
end;

function TConhecimento.GetClienteID: Integer;
begin
  Result := FClienteID;
end;

function TConhecimento.GetItemID: Integer;
begin
  Result := FItemID;
end;

function TConhecimento.GetDocumentoFiscalID: Integer;
begin
  Result := FDocumentoFiscalID;
end;

function TConhecimento.GetLancamentoFiscalID: Integer;
begin
  Result := FLancamentoFiscalID;
end;

function TConhecimento.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TConhecimento.SetCTE(const Value: string);
begin
  FCTE := Value;
end;

procedure TConhecimento.SetEmpresaID(const Value: Integer);
begin
  FEmpresaID := Value;
end;

procedure TConhecimento.SetClienteID(const Value: Integer);
begin
  FClienteID := Value;
end;

procedure TConhecimento.SetItemID(const Value: Integer);
begin
  FItemID := Value;
end;

procedure TConhecimento.SetDocumentoFiscalID(const Value: Integer);
begin
  FDocumentoFiscalID := Value;
end;

procedure TConhecimento.SetLancamentoFiscalID(const Value: Integer);
begin
  FLancamentoFiscalID := Value;
end;

procedure TConhecimento.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

end.

