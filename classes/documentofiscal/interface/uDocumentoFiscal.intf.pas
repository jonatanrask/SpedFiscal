unit uDocumentoFiscal.intf;

interface

type
  IDocumentoFiscal = interface
    ['{9706E5D3-549C-4A1C-9DE1-6C48D56346F7}']

    function GetDocumentoFiscalID : Integer;
    function GetCodigoInformacao  : Integer;
    function GetTexto             : string;
    function GetDataAlteracao     : TDateTime;

    procedure SetCodigoInformacao (const Value: Integer);
    procedure SetTexto            (const Value: string);

    property DocumentoFiscalID: Integer   read GetDocumentoFiscalID;
    property CodigoInformacao : Integer   read GetCodigoInformacao      write SetCodigoInformacao;
    property Texto            : string    read GetTexto                 write SetTexto;
    property DataAlteracao    : TDateTime read GetDataAlteracao;
  end;

implementation

end.

