unit uBem;

interface

uses
  uBem.Intf;

type
  TBem = class(TInterfacedObject, IBem)
  private
    FBemID            : Integer;
    FCentroCustoID    : Integer;
    FIdentificador    : string;
    FDescricao        : string;
    FCodigoPrincipal  : string;
    FCodigoCta        : string;
    FNumeroParcelas   : Integer;
    FCentroCusto      : string;
    FFuncao           : string;
    FVidaUtil         : Integer;
    FDataAlteracao    : TDateTime;

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
  public
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

{ TBem }

function TBem.GetBemID: Integer;
begin
  Result := FBemID;
end;

function TBem.GetCentroCustoID: Integer;
begin
  Result := FCentroCustoID;
end;

function TBem.GetIdentificador: string;
begin
  Result := FIdentificador;
end;

function TBem.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TBem.GetCodigoPrincipal: string;
begin
  Result := FCodigoPrincipal;
end;

function TBem.GetCodigoCta: string;
begin
  Result := FCodigoCta;
end;

function TBem.GetNumeroParcelas: Integer;
begin
  Result := FNumeroParcelas;
end;

function TBem.GetCentroCusto: string;
begin
  Result := FCentroCusto;
end;

function TBem.GetFuncao: string;
begin
  Result := FFuncao;
end;

function TBem.GetVidaUtil: Integer;
begin
  Result := FVidaUtil;
end;

function TBem.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TBem.SetCentroCustoID(const Value: Integer);
begin
  FCentroCustoID := Value;
end;

procedure TBem.SetIdentificador(const Value: string);
begin
  FIdentificador := Value;
end;

procedure TBem.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TBem.SetCodigoPrincipal(const Value: string);
begin
  FCodigoPrincipal := Value;
end;

procedure TBem.SetCodigoCta(const Value: string);
begin
  FCodigoCta := Value;
end;

procedure TBem.SetNumeroParcelas(const Value: Integer);
begin
  FNumeroParcelas := Value;
end;

procedure TBem.SetCentroCusto(const Value: string);
begin
  FCentroCusto := Value;
end;

procedure TBem.SetFuncao(const Value: string);
begin
  FFuncao := Value;
end;

procedure TBem.SetVidaUtil(const Value: Integer);
begin
  FVidaUtil := Value;
end;

procedure TBem.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

end.

