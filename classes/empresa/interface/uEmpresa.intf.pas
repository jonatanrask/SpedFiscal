unit uEmpresa.intf;

interface

type
  IEmpresa = interface
    ['{AC1292A6-445C-4D87-98BD-54F5337D6776}']

    function GetEmpresaID         : Integer;
    function GetClienteID         : Integer;
    function GetCodigoVersao      : Integer;
    function GetNomeFantasia      : string;
    function GetCodigoFinanceiro  : Integer;
    function GetNome              : string;
    function GetCEP               : string;
    function GetEndereco          : string;
    function GetNumero            : string;
    function GetComplemento       : string;
    function GetBairro            : string;
    function GetFone              : string;
    function GetFax               : string;
    function GetEmail             : string;
    function GetCNPJ              : string;
    function GetCPF               : string;
    function GetUF                : string;
    function GetIE                : string;
    function GetCodigoMunicipal   : string;
    function GetSuframa           : string;
    function GetPerfil            : string;
    function GetAtividade         : string;
    function GetDataAlteracao     : TDateTime;

    procedure SetEmpresaID        (const Value: Integer);
    procedure SetClienteID        (const Value: Integer);
    procedure SetCodigoVersao     (const Value: Integer);
    procedure SetNomeFantasia     (const Value: string);
    procedure SetCodigoFinanceiro (const Value: Integer);
    procedure SetNome             (const Value: string);
    procedure SetCEP              (const Value: string);
    procedure SetEndereco         (const Value: string);
    procedure SetNumero           (const Value: string);
    procedure SetComplemento      (const Value: string);
    procedure SetBairro           (const Value: string);
    procedure SetFone             (const Value: string);
    procedure SetFax              (const Value: string);
    procedure SetEmail            (const Value: string);
    procedure SetCNPJ             (const Value: string);
    procedure SetCPF              (const Value: string);
    procedure SetUF               (const Value: string);
    procedure SetIE               (const Value: string);
    procedure SetCodigoMunicipal  (const Value: string);
    procedure SetSuframa          (const Value: string);
    procedure SetPerfil           (const Value: string);
    procedure SetAtividade        (const Value: string);
    procedure SetDataAlteracao    (const Value: TDateTime);

    property EmpresaID        : Integer   read GetEmpresaID         write SetEmpresaID;
    property ClienteID        : Integer   read GetClienteID         write SetClienteID;
    property CodigoVersao     : Integer   read GetCodigoVersao      write SetCodigoVersao;
    property NomeFantasia     : string    read GetNomeFantasia      write SetNomeFantasia;
    property CodigoFinanceiro : Integer   read GetCodigoFinanceiro  write SetCodigoFinanceiro;
    property Nome             : string    read GetNome              write SetNome;
    property CEP              : string    read GetCEP               write SetCEP;
    property Endereco         : string    read GetEndereco          write SetEndereco;
    property Numero           : string    read GetNumero            write SetNumero;
    property Complemento      : string    read GetComplemento       write SetComplemento;
    property Bairro           : string    read GetBairro            write SetBairro;
    property Fone             : string    read GetFone              write SetFone;
    property Fax              : string    read GetFax               write SetFax;
    property Email            : string    read GetEmail             write SetEmail;
    property CNPJ             : string    read GetCNPJ              write SetCNPJ;
    property CPF              : string    read GetCPF               write SetCPF;
    property UF               : string    read GetUF                write SetUF;
    property IE               : string    read GetIE                write SetIE;
    property CodigoMunicipal  : string    read GetCodigoMunicipal   write SetCodigoMunicipal;
    property Suframa          : string    read GetSuframa           write SetSuframa;
    property Perfil           : string    read GetPerfil            write SetPerfil;
    property Atividade        : string    read GetAtividade         write SetAtividade;
    property DataAlteracao    : TDateTime read GetDataAlteracao     write SetDataAlteracao;
  end;

implementation

end.
