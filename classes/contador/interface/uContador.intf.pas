unit uContador.intf;

interface

type
  IContador = interface
  ['{7991C0EB-D40F-4E5B-8DA6-E70CEF77828B}']


    function GetContadorID      : Integer;
    function GetNome            : string;
    function GetCPF             : string;
    function GetCRC             : string;
    function GetCNPJ            : string;
    function GetCEP             : string;
    function GetEndereco        : string;
    function GetNumero          : string;
    function GetComplemento     : string;
    function GetBairro          : string;
    function GetFax             : string;
    function GetEmail           : string;
    function GetCodigoMunicipal : string;
    function GetDataAlteracao   : TDateTime;

    procedure SetNome             (const Value: string);
    procedure SetCPF              (const Value: string);
    procedure SetCRC              (const Value: string);
    procedure SetCNPJ             (const Value: string);
    procedure SetCEP              (const Value: string);
    procedure SetEndereco         (const Value: string);
    procedure SetNumero           (const Value: string);
    procedure SetComplemento      (const Value: string);
    procedure SetBairro           (const Value: string);
    procedure SetFax              (const Value: string);
    procedure SetEmail            (const Value: string);
    procedure SetCodigoMunicipal  (const Value: string);
    procedure SetDataAlteracao    (const Value: TDateTime);

    property ContadorID       : Integer   read GetContadorID;
    property Nome             : string    read GetNome            write SetNome;
    property CPF              : string    read GetCPF             write SetCPF;
    property CRC              : string    read GetCRC             write SetCRC;
    property CNPJ             : string    read GetCNPJ            write SetCNPJ;
    property CEP              : string    read GetCEP             write SetCEP;
    property Endereco         : string    read GetEndereco        write SetEndereco;
    property Numero           : string    read GetNumero          write SetNumero;
    property Complemento      : string    read GetComplemento     write SetComplemento;
    property Bairro           : string    read GetBairro          write SetBairro;
    property Fax              : string    read GetFax             write SetFax;
    property Email            : string    read GetEmail           write SetEmail;
    property CodigoMunicipal  : string    read GetCodigoMunicipal write SetCodigoMunicipal;
    property DataAlteracao    : TDateTime read GetDataAlteracao   write SetDataAlteracao;
  end;

implementation

end.

