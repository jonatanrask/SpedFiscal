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
    procedure SetDataAlteracao    (const Value: TDateTime);

  public
    property DocumentoFiscalID: Integer   read GetDocumentoFiscalID;
    property CodigoInformacao : Integer   read GetCodigoInformacao    write SetCodigoInformacao;
    property Texto            : string    read GetTexto               write SetTexto;
    property DataAlteracao    : TDateTime read GetDataAlteracao       write SetDataAlteracao;

    constructor Create(DocumentoFiscalID: Integer);

    procedure InicializarDocumentoFiscal(const DocumentoFiscal: TDocumentoFiscal);
  end;

implementation

uses
  uDocumentoFiscal.DAO;

{ TDocumentoFiscal }

constructor TDocumentoFiscal.Create(DocumentoFiscalID: Integer);
begin
  FDocumentoFiscalID := DocumentoFiscalID;
end;

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

procedure TDocumentoFiscal.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TDocumentoFiscal.InicializarDocumentoFiscal(const DocumentoFiscal: TDocumentoFiscal);
var
  DocumentoFiscalDAO: TDocumentoFiscalDAO;
begin
  try
    DocumentoFiscalDAO := TDocumentoFiscalDAO.Create;
    DocumentoFiscalDAO.CarregarDocumentoFiscal(DocumentoFiscal);
  finally
    DocumentoFiscalDAO.Free;
  end;
end;

end.

