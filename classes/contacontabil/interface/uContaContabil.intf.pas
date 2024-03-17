unit uContaContabil.Intf;

interface

type
  IContaContabil = interface
    ['{CF5FAB41-4E7D-4A87-A1CA-8D665BE14F8B}']
    function GetContaContabilID       : Integer;
    function GetCodigoNaturezaCC      : Integer;
    function GetTipoConta             : Integer;
    function GetNivel                 : Integer;
    function GetCodigoContaAnalitica  : string;
    function GetNomeContaAnalitica    : string;
    function GetDataAlteracao         : TDateTime;

    procedure SetCodigoNaturezaCC     (const Value: Integer);
    procedure SetTipoConta            (const Value: Integer);
    procedure SetNivel                (const Value: Integer);
    procedure SetCodigoContaAnalitica (const Value: string);
    procedure SetNomeContaAnalitica   (const Value: string);

    property ContaContabilID        : Integer   read GetContaContabilID;
    property CodigoNaturezaCC       : Integer   read GetCodigoNaturezaCC      write SetCodigoNaturezaCC;
    property TipoConta              : Integer   read GetTipoConta             write SetTipoConta;
    property Nivel                  : Integer   read GetNivel                 write SetNivel;
    property CodigoContaAnalitica   : string    read GetCodigoContaAnalitica  write SetCodigoContaAnalitica;
    property NomeContaAnalitica     : string    read GetNomeContaAnalitica    write SetNomeContaAnalitica;
    property DataAlteracao          : TDateTime read GetDataAlteracao;
  end;

implementation

end.

