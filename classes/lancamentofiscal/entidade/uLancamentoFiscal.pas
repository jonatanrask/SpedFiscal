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

    procedure SetCodigoObs(const Value: Integer);
    procedure SetTexto    (const Value: string);

  public
    property LancamentoFiscalID: Integer   read GetLancamentoFiscalID;
    property CodigoObs         : Integer   read GetCodigoObs            write SetCodigoObs;
    property Texto             : string    read GetTexto                write SetTexto;
    property DataAlteracao     : TDateTime read GetDataAlteracao;
  end;

implementation

{ TLancamentoFiscal }

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

end.

