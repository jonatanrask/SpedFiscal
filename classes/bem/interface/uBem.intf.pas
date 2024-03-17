unit uBem.Intf;

interface

type
  IBem = interface
    ['{9CD8BE41-3916-47B3-8D06-A191B794959A}']
    function GetBemID            : Integer;
    function GetCentroCustoID    : Integer;
    function GetIdentificador    : string;
    function GetDescricao        : string;
    function GetCodigoPrincipal  : string;
    function GetCodigoCta        : string;
    function GetNumeroParcelas   : Integer;
    function GetCentroCusto      : string;
    function GetFuncao           : string;
    function GetVidaUtil         : Integer;
    function GetDataAlteracao    : TDateTime;

    procedure SetCentroCustoID   (const Value: Integer);
    procedure SetIdentificador   (const Value: string);
    procedure SetDescricao       (const Value: string);
    procedure SetCodigoPrincipal (const Value: string);
    procedure SetCodigoCta       (const Value: string);
    procedure SetNumeroParcelas  (const Value: Integer);
    procedure SetCentroCusto     (const Value: string);
    procedure SetFuncao          (const Value: string);
    procedure SetVidaUtil        (const Value: Integer);
    procedure SetDataAlteracao   (const Value: TDateTime);

    property BemID            : Integer   read GetBemID;
    property CentroCustoID    : Integer   read GetCentroCustoID    write SetCentroCustoID;
    property Identificador    : string    read GetIdentificador    write SetIdentificador;
    property Descricao        : string    read GetDescricao        write SetDescricao;
    property CodigoPrincipal  : string    read GetCodigoPrincipal  write SetCodigoPrincipal;
    property CodigoCta        : string    read GetCodigoCta        write SetCodigoCta;
    property NumeroParcelas   : Integer   read GetNumeroParcelas   write SetNumeroParcelas;
    property CentroCusto      : string    read GetCentroCusto      write SetCentroCusto;
    property Funcao           : string    read GetFuncao           write SetFuncao;
    property VidaUtil         : Integer   read GetVidaUtil         write SetVidaUtil;
    property DataAlteracao    : TDateTime read GetDataAlteracao    write SetDataAlteracao;
  end;

implementation

end.

