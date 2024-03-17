unit uNaturezaOperacao.intf;

interface

type
  INaturezaOperacao = interface
    ['{EC627C8D-44AD-4629-97C1-812ABDD11196}']
    function GetNaturezaOperacaoID  : Integer;
    function GetCodigoNatureza      : Integer;
    function GetDescricao           : string;
    function GetDataAlteracao       : TDateTime;

    procedure SetCodigoNatureza(const Value: Integer);
    procedure SetDescricao     (const Value: string);

    property NaturezaOperacaoID: Integer   read GetNaturezaOperacaoID;
    property CodigoNatureza    : Integer   read GetCodigoNatureza      write SetCodigoNatureza;
    property Descricao         : string    read GetDescricao           write SetDescricao;
    property DataAlteracao     : TDateTime read GetDataAlteracao;
  end;

implementation

end.

