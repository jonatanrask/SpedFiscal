unit uContaContabil;

interface

uses
  uContaContabil.intf;

type
  TContaContabil = class(TInterfacedObject, IContaContabil)
  private
    FContaContabilID      : Integer;
    FDataAlteracao        : TDateTime;
    FCodigoNaturezaCC     : Integer;
    FTipoConta            : Integer;
    FNivel                : Integer;
    FCodigoContaAnalitica : string;
    FNomeContaAnalitica   : string;

    function GetContaContabilID      : Integer;
    function GetDataAlteracao        : TDateTime;
    function GetCodigoNaturezaCC     : Integer;
    function GetTipoConta            : Integer;
    function GetNivel                : Integer;
    function GetCodigoContaAnalitica : string;
    function GetNomeContaAnalitica   : string;

    procedure SetDataAlteracao        (const Value: TDateTime);
    procedure SetCodigoNaturezaCC     (const Value: Integer);
    procedure SetTipoConta            (const Value: Integer);
    procedure SetNivel                (const Value: Integer);
    procedure SetCodigoContaAnalitica (const Value: string);
    procedure SetNomeContaAnalitica   (const Value: string);

  public
    property ContaContabilID      : Integer   read GetContaContabilID;
    property DataAlteracao        : TDateTime read GetDataAlteracao        write SetDataAlteracao;
    property CodigoNaturezaCC     : Integer   read GetCodigoNaturezaCC     write SetCodigoNaturezaCC;
    property TipoConta            : Integer   read GetTipoConta            write SetTipoConta;
    property Nivel                : Integer   read GetNivel                write SetNivel;
    property CodigoContaAnalitica : string    read GetCodigoContaAnalitica write SetCodigoContaAnalitica;
    property NomeContaAnalitica   : string    read GetNomeContaAnalitica   write SetNomeContaAnalitica;

    constructor Create(ContaContabilID: Integer);

    procedure InicializaContaContabil(const ContaContabil: TContaContabil);
  end;

implementation

uses
  uContaContabil.DAO;

{ TContaContabil }

constructor TContaContabil.Create(ContaContabilID: Integer);
begin
  FContaContabilID := ContaContabilID;
end;

function TContaContabil.GetContaContabilID: Integer;
begin
  Result := FContaContabilID;
end;

function TContaContabil.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

function TContaContabil.GetCodigoNaturezaCC: Integer;
begin
  Result := FCodigoNaturezaCC;
end;

function TContaContabil.GetTipoConta: Integer;
begin
  Result := FTipoConta;
end;

function TContaContabil.GetNivel: Integer;
begin
  Result := FNivel;
end;

function TContaContabil.GetCodigoContaAnalitica: string;
begin
  Result := FCodigoContaAnalitica;
end;

function TContaContabil.GetNomeContaAnalitica: string;
begin
  Result := FNomeContaAnalitica;
end;

procedure TContaContabil.SetCodigoNaturezaCC(const Value: Integer);
begin
  FCodigoNaturezaCC := Value;
end;

procedure TContaContabil.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TContaContabil.SetTipoConta(const Value: Integer);
begin
  FTipoConta := Value;
end;

procedure TContaContabil.SetNivel(const Value: Integer);
begin
  FNivel := Value;
end;

procedure TContaContabil.SetCodigoContaAnalitica(const Value: string);
begin
  FCodigoContaAnalitica := Value;
end;

procedure TContaContabil.SetNomeContaAnalitica(const Value: string);
begin
  FNomeContaAnalitica := Value;
end;

procedure TContaContabil.InicializaContaContabil(const ContaContabil: TContaContabil);
var
  ContaContabilDAO: TContaContabilDAO;
begin
  try
    ContaContabilDAO.Create;
    ContaContabilDAO.CarregarContaContabil(ContaContabil);
  finally
    ContaContabilDAO.Free;
  end;
end;

end.

