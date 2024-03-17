unit uCliente;

interface

uses
  uCliente.intf;

type
  TCliente = class(TInterfacedObject, ICliente)
  private
    FClienteID        : Integer;
    FNome             : string;
    FCodigoPais       : Integer;
    FCNPJ             : string;
    FCPF              : string;
    FCodigoMunicipal  : string;
    FIE               : string;
    FSuframa          : string;
    FEndereco         : string;
    FNumero           : string;
    FComplemento      : string;
    FBairro           : string;
    FContaContabilID  : Integer;
    FDataAlteracao    : TDateTime;

    function GetClienteID         : Integer;
    function GetNome              : string;
    function GetCodigoPais        : Integer;
    function GetCNPJ              : string;
    function GetCPF               : string;
    function GetCodigoMunicipal   : string;
    function GetIE                : string;
    function GetSuframa           : string;
    function GetEndereco          : string;
    function GetNumero            : string;
    function GetComplemento       : string;
    function GetBairro            : string;
    function GetContaContabilID   : Integer;
    function GetDataAlteracao     : TDateTime;

    procedure SetNome             (const Value: string);
    procedure SetCodigoPais       (const Value: Integer);
    procedure SetCNPJ             (const Value: string);
    procedure SetCPF              (const Value: string);
    procedure SetCodigoMunicipal  (const Value: string);
    procedure SetIE               (const Value: string);
    procedure SetSuframa          (const Value: string);
    procedure SetEndereco         (const Value: string);
    procedure SetNumero           (const Value: string);
    procedure SetComplemento      (const Value: string);
    procedure SetBairro           (const Value: string);
    procedure SetContaContabilID  (const Value: Integer);
    procedure SetDataAlteracao    (const Value: TDateTime);

  public
    property ClienteID        : Integer   read GetClienteID;
    property Nome             : string    read GetNome              write SetNome;
    property CodigoPais       : Integer   read GetCodigoPais        write SetCodigoPais;
    property CNPJ             : string    read GetCNPJ              write SetCNPJ;
    property CPF              : string    read GetCPF               write SetCPF;
    property CodigoMunicipal  : string    read GetCodigoMunicipal   write SetCodigoMunicipal;
    property IE               : string    read GetIE                write SetIE;
    property Suframa          : string    read GetSuframa           write SetSuframa;
    property Endereco         : string    read GetEndereco          write SetEndereco;
    property Numero           : string    read GetNumero            write SetNumero;
    property Complemento      : string    read GetComplemento       write SetComplemento;
    property Bairro           : string    read GetBairro            write SetBairro;
    property ContaContabilID  : Integer   read GetContaContabilID   write SetContaContabilID;
   property DataAlteracao     : TDateTime read GetDataAlteracao     write SetDataAlteracao;
  end;

implementation

{ TCliente }

function TCliente.GetBairro: string;
begin
  Result := FBairro;
end;

function TCliente.GetCPF: string;
begin
  Result := FCPF;
end;

function TCliente.GetClienteID: Integer;
begin
  Result := FClienteID;
end;

function TCliente.GetCodigoMunicipal: string;
begin
  Result := FCodigoMunicipal;
end;

function TCliente.GetCodigoPais: Integer;
begin
  Result := FCodigoPais;
end;

function TCliente.GetContaContabilID: Integer;
begin
  Result := FContaContabilID;
end;

function TCliente.GetCNPJ: string;
begin
  Result := FCNPJ;
end;

function TCliente.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

function TCliente.GetEndereco: string;
begin
  Result := FEndereco;
end;

function TCliente.GetIE: string;
begin
  Result := FIE;
end;

function TCliente.GetNome: string;
begin
  Result := FNome;
end;

function TCliente.GetNumero: string;
begin
  Result := FNumero;
end;

function TCliente.GetComplemento: string;
begin
  Result := FComplemento;
end;

function TCliente.GetSuframa: string;
begin
  Result := FSuframa;
end;

procedure TCliente.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TCliente.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

procedure TCliente.SetCodigoMunicipal(const Value: string);
begin
  FCodigoMunicipal := Value;
end;

procedure TCliente.SetCodigoPais(const Value: Integer);
begin
  FCodigoPais := Value;
end;

procedure TCliente.SetContaContabilID(const Value: Integer);
begin
  FContaContabilID := Value;
end;

procedure TCliente.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
end;

procedure TCliente.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TCliente.SetIE(const Value: string);
begin
  FIE := Value;
end;

procedure TCliente.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TCliente.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TCliente.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TCliente.SetSuframa(const Value: string);
begin
  FSuframa := Value;
end;

procedure TCliente.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

end.

