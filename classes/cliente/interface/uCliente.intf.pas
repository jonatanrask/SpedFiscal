unit uCliente.intf;

interface

type
  ICliente = interface
    ['{531FE01B-3B74-470A-9127-C5EF27294126}']

    function GetClienteID         : Integer;
    function GetNome              : string;
    function GetCodigoPais        : Integer;
    function GetCNPJ              : string;
    function GetCPF               : string;
    function GetCodigoMunicipal   : string;
    function GetIE                : string;
    function GetSuframa           : string;
    function GetEndereco          : string;
    function GetNumero            : string;
    function GetComplemento       : string;
    function GetBairro            : string;
    function GetContaContabilID   : Integer;
    function GetDataAlteracao     : TDateTime;

    procedure SetNome             (const Value: string);
    procedure SetCodigoPais       (const Value: Integer);
    procedure SetCNPJ             (const Value: string);
    procedure SetCPF              (const Value: string);
    procedure SetCodigoMunicipal  (const Value: string);
    procedure SetIE               (const Value: string);
    procedure SetSuframa          (const Value: string);
    procedure SetEndereco         (const Value: string);
    procedure SetNumero           (const Value: string);
    procedure SetComplemento      (const Value: string);
    procedure SetBairro           (const Value: string);
    procedure SetContaContabilID  (const Value: Integer);

    property ClienteID        : Integer   read GetClienteID;
    property Nome             : string    read GetNome              write SetNome;
    property CodigoPais       : Integer   read GetCodigoPais        write SetCodigoPais;
    property CNPJ             : string    read GetCNPJ              write SetCNPJ;
    property CPF              : string    read GetCPF               write SetCPF;
    property CodigoMunicipal  : string    read GetCodigoMunicipal   write SetCodigoMunicipal;
    property IE               : string    read GetIE                write SetIE;
    property Suframa          : string    read GetSuframa           write SetSuframa;
    property Endereco         : string    read GetEndereco          write SetEndereco;
    property Numero           : string    read GetNumero            write SetNumero;
    property Complemento      : string    read GetComplemento       write SetComplemento;
    property Bairro           : string    read GetBairro            write SetBairro;
    property ContaContabilID  : Integer   read GetContaContabilID   write SetContaContabilID;
    property DataAlteracao    : TDateTime read GetDataAlteracao;
  end;

implementation

end.

