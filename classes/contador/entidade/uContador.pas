unit uContador;

interface

uses
  uContador.intf;

type
  TContador = class(TInterfacedObject, IContador)
  private
    FContadorID       : Integer;
    FNome             : string;
    FCPF              : string;
    FCRC              : string;
    FCNPJ             : string;
    FCEP              : string;
    FEndereco         : string;
    FNumero           : string;
    FComplemento      : string;
    FBairro           : string;
    FFax              : string;
    FEmail            : string;
    FCodigoMunicipal  : string;
    FDataAlteracao    : TDateTime;

    function GetContadorID      : Integer;
    function GetNome            : string;
    function GetCPF             : string;
    function GetCRC             : string;
    function GetCNPJ            : string;
    function GetCEP             : string;
    function GetEndereco        : string;
    function GetNumero          : string;
    function GetComplemento     : string;
    function GetBairro          : string;
    function GetFax             : string;
    function GetEmail           : string;
    function GetCodigoMunicipal : string;
    function GetDataAlteracao   : TDateTime;

    procedure SetNome             (const Value: string);
    procedure SetCPF              (const Value: string);
    procedure SetCRC              (const Value: string);
    procedure SetCNPJ             (const Value: string);
    procedure SetCEP              (const Value: string);
    procedure SetEndereco         (const Value: string);
    procedure SetNumero           (const Value: string);
    procedure SetComplemento      (const Value: string);
    procedure SetBairro           (const Value: string);
    procedure SetFax              (const Value: string);
    procedure SetEmail            (const Value: string);
    procedure SetCodigoMunicipal  (const Value: string);
    procedure SetDataAlteracao    (const Value: TDateTime);

  public
    property ContadorID       : Integer   read GetContadorID;
    property Nome             : string    read GetNome            write SetNome;
    property CPF              : string    read GetCPF             write SetCPF;
    property CRC              : string    read GetCRC             write SetCRC;
    property CNPJ             : string    read GetCNPJ            write SetCNPJ;
    property CEP              : string    read GetCEP             write SetCEP;
    property Endereco         : string    read GetEndereco        write SetEndereco;
    property Numero           : string    read GetNumero          write SetNumero;
    property Complemento      : string    read GetComplemento     write SetComplemento;
    property Bairro           : string    read GetBairro          write SetBairro;
    property Fax              : string    read GetFax             write SetFax;
    property Email            : string    read GetEmail           write SetEmail;
    property CodigoMunicipal  : string    read GetCodigoMunicipal write SetCodigoMunicipal;
    property DataAlteracao    : TDateTime read GetDataAlteracao   write SetDataAlteracao;

    constructor Create(ContadorID: Integer);

    procedure InicializarContador(const Contador: TContador);

  end;

implementation

uses
  uContador.DAO;

{ TContador }

constructor TContador.Create(ContadorID: Integer);
begin
  FContadorID := ContadorID;
end;

function TContador.GetBairro: string;
begin
  Result := FBairro;
end;

function TContador.GetCEP: string;
begin
  Result := FCEP;
end;

function TContador.GetCodigoMunicipal: string;
begin
  Result := FCodigoMunicipal;
end;

function TContador.GetContadorID: Integer;
begin
  Result := FContadorID;
end;

function TContador.GetCPF: string;
begin
  Result := FCPF;
end;

function TContador.GetCRC: string;
begin
  Result := FCRC;
end;

function TContador.GetCNPJ: string;
begin
  Result := FCNPJ;
end;

function TContador.GetEmail: string;
begin
  Result := FEmail;
end;

function TContador.GetEndereco: string;
begin
  Result := FEndereco;
end;

function TContador.GetFax: string;
begin
  Result := FFax;
end;

function TContador.GetNome: string;
begin
  Result := FNome;
end;

function TContador.GetNumero: string;
begin
  Result := FNumero;
end;

function TContador.GetComplemento: string;
begin
  Result := FComplemento;
end;

function TContador.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

procedure TContador.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TContador.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TContador.SetCodigoMunicipal(const Value: string);
begin
  FCodigoMunicipal := Value;
end;

procedure TContador.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TContador.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

procedure TContador.SetCRC(const Value: string);
begin
  FCRC := Value;
end;

procedure TContador.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
end;

procedure TContador.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TContador.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TContador.SetFax(const Value: string);
begin
  FFax := Value;
end;

procedure TContador.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TContador.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TContador.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TContador.InicializarContador(const Contador: TContador);
var
  ContadorDAO: TContadorDAO;
begin
  try
    ContadorDAO := TContadorDAO.Create;
    ContadorDAO.CarregarContador(Contador);
  finally
    ContadorDAO.Free;
  end;
end;

end.

