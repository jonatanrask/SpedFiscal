unit uLancamentoFiscal;

interface

uses
  uLancamentoFiscal.intf;

type
  TLancamentoFiscal = class(TInterfacedObject, ILancamentoFiscal)
  private
    FLancamentoFiscalID: Integer;
    FCodigoObs         : Integer;
    FTexto             : string;
    FDataAlteracao     : TDateTime;

    function GetLancamentoFiscalID: Integer;
    function GetCodigoObs         : Integer;
    function GetTexto             : string;
    function GetDataAlteracao     : TDateTime;

    procedure SetCodigoObs      (const Value: Integer);
    procedure SetTexto          (const Value: string);
    procedure SetDataAlteracao  (const Value: TDateTime);

  public
    property LancamentoFiscalID: Integer   read GetLancamentoFiscalID;
    property CodigoObs         : Integer   read GetCodigoObs            write SetCodigoObs;
    property Texto             : string    read GetTexto                write SetTexto;
    property DataAlteracao     : TDateTime read GetDataAlteracao        write SetDataAlteracao;

    constructor Create(LancamentoFiscalID: Integer);

    procedure InicializarLancamentoFiscal(const LancamentoFiscal: TLancamentoFiscal);
  end;

implementation

uses
  uLancamentoFiscal.DAO;

{ TLancamentoFiscal }

constructor TLancamentoFiscal.Create(LancamentoFiscalID: Integer);
begin
  FLancamentoFiscalID := LancamentoFiscalID;
end;

function TLancamentoFiscal.GetLancamentoFiscalID: Integer;
begin
  Result := FLancamentoFiscalID;
end;

function TLancamentoFiscal.GetCodigoObs: Integer;
begin
  Result := FCodigoObs;
end;

function TLancamentoFiscal.GetTexto: string;
begin
  Result := FTexto;
end;

function TLancamentoFiscal.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TLancamentoFiscal.SetCodigoObs(const Value: Integer);
begin
  FCodigoObs := Value;
end;

procedure TLancamentoFiscal.SetTexto(const Value: string);
begin
  FTexto := Value;
end;

procedure TLancamentoFiscal.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TLancamentoFiscal.InicializarLancamentoFiscal(const LancamentoFiscal: TLancamentoFiscal);
var
  LancamentoFiscalDAO: TLancamentoFiscalDAO;
begin
  try
    LancamentoFiscalDAO := TLancamentoFiscalDAO.Create;
    LancamentoFiscalDAO.CarregarLancamentoFiscal(LancamentoFiscal);
  finally
    LancamentoFiscalDAO.Free;
  end;
end;

end.

