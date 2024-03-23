unit uEmpresa;

interface
  uses
    uEmpresa.intf;
  type TEmpresa = class(TInterfacedObject, IEmpresa)
    private
      FEmpresaID        : Integer;
      FClienteID        : Integer;
      FContadorID       : Integer;
      FCodigoVersao     : Integer;
      FNomeFantasia     : string;
      FCodigoFinanceiro : Integer;
      FNome             : string;
      FCep              : string;
      FEndereco         : string;
      FNumero           : string;
      FComplemento      : string;
      FBairro           : string;
      FFone             : string;
      FFax              : string;
      FEmail            : string;
      FCNPJ             : string;
      FCPF              : string;
      FUF               : string;
      FIE               : string;
      FCodigoMunicipal  : string;
      FSuframa          : string;
      FPerfil           : string;
      FAtividade        : string;
      FDataAlteracao    : TDateTime;

      function GetEmpresaID         : Integer;
      function GetClienteID         : Integer;
      function GetContadorID        : Integer;
      function GetCodigoVersao      : Integer;
      function GetNomeFantasia      : string;
      function GetCodigoFinanceiro  : Integer;
      function GetNome              : string;
      function GetCEP               : string;
      function GetEndereco          : string;
      function GetNumero            : string;
      function GetComplemento       : string;
      function GetBairro            : string;
      function GetFone              : string;
      function GetFax               : string;
      function GetEmail             : string;
      function GetCNPJ              : string;
      function GetCPF               : string;
      function GetUF                : string;
      function GetIE                : string;
      function GetCodigoMunicipal   : string;
      function GetSuframa           : string;
      function GetPerfil            : string;
      function GetAtividade         : string;
      function GetDataAlteracao     : TDateTime;

      procedure SetClienteID        (const Value: Integer);
      procedure SetContadorID       (const Value: Integer);
      procedure SetCodigoVersao     (const Value: Integer);
      procedure SetNomeFantasia     (const Value: string);
      procedure SetCodigoFinanceiro (const Value: Integer);
      procedure SetNome             (const Value: string);
      procedure SetCEP              (const Value: string);
      procedure SetEndereco         (const Value: string);
      procedure SetNumero           (const Value: string);
      procedure SetComplemento      (const Value: string);
      procedure SetBairro           (const Value: string);
      procedure SetFone             (const Value: string);
      procedure SetFax              (const Value: string);
      procedure SetEmail            (const Value: string);
      procedure SetCNPJ             (const Value: string);
      procedure SetCPF              (const Value: string);
      procedure SetUF               (const Value: string);
      procedure SetIE               (const Value: string);
      procedure SetCodigoMunicipal  (const Value: string);
      procedure SetSuframa          (const Value: string);
      procedure SetPerfil           (const Value: string);
      procedure SetAtividade        (const Value: string);
      procedure SetDataAlteracao    (const Value: TDateTime);

    public
      property EmpresaID        : Integer   read GetEmpresaID;
      property ClienteID        : Integer   read GetClienteID         write SetClienteID;
      property ContadorID       : Integer   read GetContadorID        write SetContadorID;
      property CodigoVersao     : Integer   read GetCodigoVersao      write SetCodigoVersao;
      property NomeFantasia     : string    read GetNomeFantasia      write SetNomeFantasia;
      property CodigoFinanceiro : Integer   read GetCodigoFinanceiro  write SetCodigoFinanceiro;
      property Nome             : string    read GetNome              write SetNome;
      property CEP              : string    read GetCEP               write SetCEP;
      property Endereco         : string    read GetEndereco          write SetEndereco;
      property Numero           : string    read GetNumero            write SetNumero;
      property Complemento      : string    read GetComplemento       write SetComplemento;
      property Bairro           : string    read GetBairro            write SetBairro;
      property Fone             : string    read GetFone              write SetFone;
      property Fax              : string    read GetFax               write SetFax;
      property Email            : string    read GetEmail             write SetEmail;
      property CNPJ             : string    read GetCNPJ              write SetCNPJ;
      property CPF              : string    read GetCPF               write SetCPF;
      property UF               : string    read GetUF                write SetUF;
      property IE               : string    read GetIE                write SetIE;
      property CodigoMunicipal  : string    read GetCodigoMunicipal   write SetCodigoMunicipal;
      property Suframa          : string    read GetSuframa           write SetSuframa;
      property Perfil           : string    read GetPerfil            write SetPerfil;
      property Atividade        : string    read GetAtividade         write SetAtividade;
      property DataAlteracao    : TDateTime read GetDataAlteracao     write SetDataAlteracao;

      constructor Create(Empresa: Integer);

      procedure InicializarEmpresa(const Empresa: TEmpresa);

  end;

implementation

uses
  uEmpresa_DAO;

{ TEmpresa }

constructor TEmpresa.Create(Empresa: Integer);
begin
  FEmpresaID := Empresa;
end;

function TEmpresa.GetAtividade: string;
begin
  Result := FAtividade;
end;

function TEmpresa.GetBairro: string;
begin
  Result := FBairro;
end;

function TEmpresa.GetCEP: string;
begin
  Result := FCep;
end;

function TEmpresa.GetCNPJ: string;
begin
  Result := FCNPJ;
end;

function TEmpresa.GetClienteID: Integer;
begin
  Result := FClienteID;
end;

function TEmpresa.GetContadorID: Integer;
begin
  Result := FContadorID;
end;

function TEmpresa.GetCodigoFinanceiro: Integer;
begin
  Result := FCodigoFinanceiro;
end;

function TEmpresa.GetCodigoMunicipal: string;
begin
  Result := FCodigoMunicipal;
end;

function TEmpresa.GetCodigoVersao: Integer;
begin
  Result := FCodigoVersao;
end;

function TEmpresa.GetCPF: string;
begin
  Result := FCPF;
end;

function TEmpresa.GetDataAlteracao: TDateTime;
begin
  Result := FDataAlteracao;
end;

function TEmpresa.GetEmail: string;
begin
  Result := FEmail;
end;

function TEmpresa.GetEmpresaID: Integer;
begin
  Result := FEmpresaID;
end;

function TEmpresa.GetEndereco: string;
begin
  Result := FEndereco;
end;

function TEmpresa.GetFax: string;
begin
  Result := FFax;
end;

function TEmpresa.GetFone: string;
begin
  Result := FFone;
end;

function TEmpresa.GetIE: string;
begin
  Result := FIE;
end;

function TEmpresa.GetNome: string;
begin
  Result := FNome;
end;

function TEmpresa.GetNomeFantasia: string;
begin
  Result := FNomeFantasia;
end;

function TEmpresa.GetNumero: string;
begin
  Result := FNumero;
end;

function TEmpresa.GetComplemento: string;
begin
  Result := FComplemento;
end;

function TEmpresa.GetPerfil: string;
begin
  Result := FPerfil;
end;

function TEmpresa.GetSuframa: string;
begin
  Result := FSuframa;
end;

function TEmpresa.GetUF: string;
begin
  Result := FUF;
end;


procedure TEmpresa.SetAtividade(const Value: string);
begin
  FAtividade := Value;
end;

procedure TEmpresa.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TEmpresa.SetCEP(const Value: string);
begin
  FCep := Value;
end;

procedure TEmpresa.SetCNPJ(const Value: string);
begin
  FCNPJ := Value;
end;

procedure TEmpresa.SetClienteID(const Value: Integer);
begin
  FClienteID := Value;
end;

procedure TEmpresa.SetContadorID(const Value: Integer);
begin
  FContadorID := Value;
end;

procedure TEmpresa.SetCodigoFinanceiro(const Value: Integer);
begin
  FCodigoFinanceiro := Value;
end;

procedure TEmpresa.SetCodigoMunicipal(const Value: string);
begin
  FCodigoMunicipal := Value;
end;

procedure TEmpresa.SetCodigoVersao(const Value: Integer);
begin
  FCodigoVersao := Value;
end;

procedure TEmpresa.SetCPF(const Value: string);
begin
  FCPF := Value;
end;

procedure TEmpresa.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TEmpresa.SetEndereco(const Value: string);
begin
  FEndereco := Value;
end;

procedure TEmpresa.SetFax(const Value: string);
begin
  FFax := Value;
end;

procedure TEmpresa.SetFone(const Value: string);
begin
  FFone := Value;
end;

procedure TEmpresa.SetIE(const Value: string);
begin
  FIE := Value;
end;

procedure TEmpresa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TEmpresa.SetNomeFantasia(const Value: string);
begin
  FNomeFantasia := Value;
end;

procedure TEmpresa.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TEmpresa.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TEmpresa.SetPerfil(const Value: string);
begin
  FPerfil := Value;
end;

procedure TEmpresa.SetSuframa(const Value: string);
begin
  FSuframa := Value;
end;

procedure TEmpresa.SetUF(const Value: string);
begin
  FUF := Value;
end;

procedure TEmpresa.SetDataAlteracao(const Value: TDateTime);
begin
  FDataAlteracao := Value;
end;

procedure TEmpresa.InicializarEmpresa(const Empresa: TEmpresa);
var
  EmpresaDAO: TEmpresaDAO;
begin
  try
    EmpresaDAO := EmpresaDAO.Create;
    EmpresaDAO.CarregarEmpresa(Empresa);
  finally
    EmpresaDAO.Free;
  end;
end;

end.

