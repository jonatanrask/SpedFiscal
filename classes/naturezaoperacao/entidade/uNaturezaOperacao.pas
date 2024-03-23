unit uNaturezaOperacao;

interface

uses
  uNaturezaOperacao.Intf;

type
  TNaturezaOperacao = class(TInterfacedObject, INaturezaOperacao)
  private
    FNaturezaOperacaoID : Integer;
    FCodigoNatureza     : Integer;
    FDescricao          : string;
    FDataAlteracao      : TDateTime;

   function GetNaturezaOperacaoID  : Integer;
    function GetCodigoNatureza      : Integer;
    function GetDescricao           : string;
    function GetDataAlteracao       : TDateTime;

    procedure SetCodigoNatureza(const Value: Integer);
    procedure SetDescricao     (const Value: string);
    procedure SetDataAlteracao (const Value: TDateTime);

  public
    property NaturezaOperacaoID: Integer   read GetNaturezaOperacaoID;
    property CodigoNatureza    : Integer   read GetCodigoNatureza      write SetCodigoNatureza;
    property Descricao         : string    read GetDescricao           write SetDescricao;
    property DataAlteracao     : TDateTime read GetDataAlteracao       write SetDataAlteracao;
  end;

implementation

{ TNaturezaOperacao }

function TNaturezaOperacao.GetNaturezaOperacaoID: Integer;
begin
  Result := FNaturezaOperacaoID;
end;

function TNaturezaOperacao.GetCodigoNatureza: Integer;
begin
  Result := FCodigoNatureza;
end;

function TNaturezaOperacao.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TNaturezaOperacao.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TNaturezaOperacao.SetCodigoNatureza(const Value: Integer);
begin
  FCodigoNatureza := Value;
end;

procedure TNaturezaOperacao.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TNaturezaOperacao.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

end.

