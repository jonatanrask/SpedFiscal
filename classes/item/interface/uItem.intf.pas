unit uItem.intf;

interface

type
  IItem = interface
    ['{F132BDB6-3D30-43F5-BFBC-5B02439D026E}']
   function GetItemID             : Integer;
    function GetDescricao          : string;
    function GetCodigoBarras       : string;
    function GetUnidadeMedidaID    : Integer;
    function GetTipoItem           : Integer;
    function GetNCM                : string;
    function GetGenero             : string;
    function GetAliquota           : Double;
    function GetUnidadeConversaoID : Integer;
    function GetFatorConversao     : Double;
    function GetCodigoCombustivel  : string;
    function GetNaturezaOperacaoID : Integer;
    function GetDataAlteracao      : TDateTime;

    procedure SetDescricao          (const Value: string);
    procedure SetCodigoBarras       (const Value: string);
    procedure SetUnidadeMedidaID    (const Value: Integer);
    procedure SetTipoItem           (const Value: Integer);
    procedure SetNCM                (const Value: string);
    procedure SetGenero             (const Value: string);
    procedure SetAliquota           (const Value: Double);
    procedure SetUnidadeConversaoID (const Value: Integer);
    procedure SetFatorConversao     (const Value: Double);
    procedure SetCodigoCombustivel  (const Value: string);
    procedure SetNaturezaOperacaoID (const Value: Integer);
    procedure SetDataAlteracao      (const Value: TDateTime);

    property ItemID             : Integer   read GetItemID;
    property Descricao          : string    read GetDescricao          write SetDescricao;
    property CodigoBarras       : string    read GetCodigoBarras       write SetCodigoBarras;
    property UnidadeMedidaID    : Integer   read GetUnidadeMedidaID    write SetUnidadeMedidaID;
    property TipoItem           : Integer   read GetTipoItem           write SetTipoItem;
    property NCM                : string    read GetNCM                write SetNCM;
    property Genero             : string    read GetGenero             write SetGenero;
    property Aliquota           : Double    read GetAliquota           write SetAliquota;
    property UnidadeConversaoID : Integer   read GetUnidadeConversaoID write SetUnidadeConversaoID;
    property FatorConversao     : Double    read GetFatorConversao     write SetFatorConversao;
    property CodigoCombustivel  : string    read GetCodigoCombustivel  write SetCodigoCombustivel;
    property NaturezaOperacaoID : Integer   read GetNaturezaOperacaoID write SetNaturezaOperacaoID;
    property DataAlteracao      : TDateTime read GetDataAlteracao      write SetDataAlteracao;
  end;

implementation

end.

