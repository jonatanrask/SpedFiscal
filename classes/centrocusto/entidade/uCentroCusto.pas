unit uCentroCusto;

interface

uses
  uCentroCusto.intf;

type
  TCentroCusto = class(TInterfacedObject, ICentroCusto)
  private
    FCentroCustoID        : Integer;
    FCodigoCentroCustos   : string;
    FNomeCentroCustos     : string;
    FDataAlteracao        : TDateTime;

    function GetCentroCustoID         : Integer;
    function GetCodigoCentroCustos    : string;
    function GetNomeCentroCustos      : string;
    function GetDataAlteracao         : TDateTime;

    procedure SetCodigoCentroCustos   (const Value: string);
    procedure SetNomeCentroCustos     (const Value: string);
    procedure SetDataAlteracao        (const Value: TDateTime);

  public
    property CentroCustoID          : Integer   read GetCentroCustoID;
    property CodigoCentroCustos     : string    read GetCodigoCentroCustos    write SetCodigoCentroCustos;
    property NomeCentroCustos       : string    read GetNomeCentroCustos      write SetNomeCentroCustos;
    property DataAlteracao          : TDateTime read GetDataAlteracao         write SetDataAlteracao;

    constructor Create(CentroCustoID: Integer);

    procedure InicializarCentroCusto(const CentroCusto: TCentroCusto);
  end;

implementation

uses
  uCentroCusto.DAO;

{ TCentroCusto }

constructor TCentroCusto.Create(CentroCustoID: Integer);
begin
  FCentroCustoID := CentroCustoID;
end;

function TCentroCusto.GetCentroCustoID: Integer;
begin
  Result := FCentroCustoID;
end;

function TCentroCusto.GetCodigoCentroCustos: string;
begin
  Result := FCodigoCentroCustos;
end;

function TCentroCusto.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

function TCentroCusto.GetNomeCentroCustos: string;
begin
  Result := FNomeCentroCustos;
end;

procedure TCentroCusto.SetCodigoCentroCustos(const Value: string);
begin
  FCodigoCentroCustos := Value;
end;

procedure TCentroCusto.SetNomeCentroCustos(const Value: string);
begin
  FNomeCentroCustos := Value;
end;

procedure TCentroCusto.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TCentroCusto.InicializarCentroCusto(const CentroCusto: TCentroCusto);
var
  CentroCustoDAO: TCentroCustoDAO;
begin
  try
    CentroCustoDAO := TCentroCustoDAO.Create;
    CentroCustoDAO.CarregarCentroCusto(CentroCusto);
  finally
    CentroCustoDAO.Free;
  end;
end;

end.

