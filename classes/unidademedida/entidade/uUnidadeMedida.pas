unit uUnidadeMedida;

interface

uses
  uUnidadeMedida.intf;

type
  TUnidadeMedida = class(TInterfacedObject, IUnidadeMedida)
  private
    FUnidadeMedidaID: Integer;
    FDescricao      : string;
    FDataAlteracao  : TDateTime;

    function GetUnidadeMedidaID: Integer;
    function GetDescricao      : string;
    function GetDataAlteracao  : TDateTime;

    procedure SetDescricao     (const Value: string);
    procedure SetDataAlteracao (const Value: TDateTime);

  public
    property UnidadeMedidaID : Integer   read GetUnidadeMedidaID;
    property Descricao       : string    read GetDescricao       write SetDescricao;
    property DataAlteracao   : TDateTime read GetDataAlteracao   write SetDataAlteracao;

    constructor Create(UnidadeMedidaID: Integer);

    procedure InicializarUnidadeMedida(const UnidadeMedida: TUnidadeMedida);
  end;

implementation

uses
  uUnidadeMedida.DAO;

{ TUnidadeMedida }

constructor TUnidadeMedida.Create(UnidadeMedidaID: Integer);
begin
  FUnidadeMedidaID := UnidadeMedidaID;
end;

function TUnidadeMedida.GetUnidadeMedidaID: Integer;
begin
  Result := FUnidadeMedidaID;
end;

function TUnidadeMedida.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TUnidadeMedida.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TUnidadeMedida.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TUnidadeMedida.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TUnidadeMedida.InicializarUnidadeMedida(const UnidadeMedida: TUnidadeMedida);
var
  UnidadeMedidaDAO: TUnidadeMedidaDAO;
begin
  try
    UnidadeMedidaDAO := TUnidadeMedidaDAO.Create;
    UnidadeMedidaDAO.CarregarUnidadeMedida(UnidadeMedida);
  finally
    UnidadeMedidaDAO.Free;
  end;
end;

end.

