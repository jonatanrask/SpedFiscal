unit uDocumentoFiscal;

interface

uses
  uDocumentoFiscal.intf;

type
  TDocumentoFiscal = class(TInterfacedObject, IDocumentoFiscal)
  private
    FDocumentoFiscalID: Integer;
    FCodigoInformacao : Integer;
    FTexto            : string;
    FDataAlteracao    : TDateTime;

    function GetDocumentoFiscalID: Integer;
    function GetCodigoInformacao : Integer;
    function GetTexto            : string;
    function GetDataAlteracao    : TDateTime;

    procedure SetCodigoInformacao (const Value: Integer);
    procedure SetTexto            (const Value: string);

  public
    property DocumentoFiscalID: Integer   read GetDocumentoFiscalID;
    property CodigoInformacao : Integer   read GetCodigoInformacao    write SetCodigoInformacao;
    property Texto            : string    read GetTexto               write SetTexto;
    property DataAlteracao    : TDateTime read GetDataAlteracao;
  end;

implementation

{ TDocumentoFiscal }

function TDocumentoFiscal.GetDocumentoFiscalID: Integer;
begin
  Result := FDocumentoFiscalID;
end;

function TDocumentoFiscal.GetCodigoInformacao: Integer;
begin
  Result := FCodigoInformacao;
end;

function TDocumentoFiscal.GetTexto: string;
begin
  Result := FTexto;
end;

function TDocumentoFiscal.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TDocumentoFiscal.SetCodigoInformacao(const Value: Integer);
begin
  FCodigoInformacao := Value;
end;

procedure TDocumentoFiscal.SetTexto(const Value: string);
begin
  FTexto := Value;
end;

end.

