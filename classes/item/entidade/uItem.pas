unit uItem;

interface

uses
  uItem.intf;

type
  TItem = class(TInterfacedObject, IItem)
  private
    FItemID             : Integer;
    FDescricao          : string;
    FCodigoBarras       : string;
    FUnidadeMedidaID    : Integer;
    FTipoItem           : Integer;
    FNCM                : string;
    FGenero             : string;
    FAliquota           : Double;
    FUnidadeConversaoID : Integer;
    FFatorConversao     : Double;
    FCodigoCombustivel  : string;
    FNaturezaOperacaoID : Integer;
    FDataAlteracao      : TDateTime;

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

  public
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

    constructor Create(ItemID: Integer);

    procedure InicializarItem(const Item: TItem);
  end;

implementation

uses
  uItem.DAO;

{ TItem }

constructor TItem.Create(ItemID: Integer);
begin
  FItemID := ItemID;
end;

function TItem.GetAliquota: Double;
begin
  Result := FAliquota;
end;

function TItem.GetCodigoBarras: string;
begin
  Result := FCodigoBarras;
end;

function TItem.GetCodigoCombustivel: string;
begin
  Result := FCodigoCombustivel;
end;

function TItem.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

function TItem.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TItem.GetFatorConversao: Double;
begin
  Result := FFatorConversao;
end;

function TItem.GetGenero: string;
begin
  Result := FGenero;
end;

function TItem.GetItemID: Integer;
begin
  Result := FItemID;
end;

function TItem.GetNCM: string;
begin
  Result := FNCM;
end;

function TItem.GetNaturezaOperacaoID: Integer;
begin
  Result := FNaturezaOperacaoID;
end;

function TItem.GetTipoItem: Integer;
begin
  Result := FTipoItem;
end;

function TItem.GetUnidadeConversaoID: Integer;
begin
  Result := FUnidadeConversaoID;
end;

function TItem.GetUnidadeMedidaID: Integer;
begin
  Result := FUnidadeMedidaID;
end;

procedure TItem.SetAliquota(const Value: Double);
begin
  FAliquota := Value;
end;

procedure TItem.SetCodigoBarras(const Value: string);
begin
  FCodigoBarras := Value;
end;

procedure TItem.SetCodigoCombustivel(const Value: string);
begin
  FCodigoCombustivel := Value;
end;

procedure TItem.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TItem.SetFatorConversao(const Value: Double);
begin
  FFatorConversao := Value;
end;

procedure TItem.SetGenero(const Value: string);
begin
  FGenero := Value;
end;

procedure TItem.SetNCM(const Value: string);
begin
  FNCM := Value;
end;

procedure TItem.SetNaturezaOperacaoID(const Value: Integer);
begin
  FNaturezaOperacaoID := Value;
end;

procedure TItem.SetTipoItem(const Value: Integer);
begin
  FTipoItem := Value;
end;

procedure TItem.SetUnidadeConversaoID(const Value: Integer);
begin
  FUnidadeConversaoID := Value;
end;

procedure TItem.SetUnidadeMedidaID(const Value: Integer);
begin
  FUnidadeMedidaID := Value;
end;

procedure TItem.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TItem.InicializarItem(const Item: TItem);
var
  ItemDAO: TItemDAO;
begin
  try
    ItemDAO := TItemDAO.Create;
    ItemDAO.CarregarItem(Item);
  finally
    ItemDAO.Free;
  end;
end;

end.

