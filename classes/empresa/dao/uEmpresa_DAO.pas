unit uEmpresa_DAO;

interface

uses
  uEmpresa, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type TEmpresaDAO = class
  public
    class procedure CarregarEmpresa (Empresa    : TEmpresa);
    class procedure SalvarEmpresa   (Empresa    : TEmpresa);
    class procedure ExcluirEmpresa  (Empresa    : TEmpresa);

    constructor Create;
    destructor Destroy; override;
end;

implementation

uses
  uEmpresa.dm, Forms;

constructor TEmpresaDAO.Create();
begin
  if not Assigned(DataModuleEmpresa) then
  begin
    DataModuleEmpresa := TDataModuleEmpresa.Create(Application)
  end;
end;

destructor TEmpresaDAO.Destroy;
begin
  FreeAndNil(DataModuleEmpresa);
  inherited;
end;

class procedure TEmpresaDAO.CarregarEmpresa(Empresa: TEmpresa);
begin
 try
    with DataModuleEmpresa.FDEmpresaQuery do
    begin
      ParamByName('empresa_id').AsInteger := Empresa.EmpresaID;
      Open;
      if RecordCount > 0 then
      begin
        Empresa.ClienteID         := FieldByName('cliente_id').AsInteger;
        Empresa.CodigoVersao      := FieldByName('codigo_versao').AsInteger;
        Empresa.NomeFantasia      := FieldByName('nome_versao').AsString;
        Empresa.CodigoFinanceiro  := FieldByName('codigo_financeiro').AsInteger;
        Empresa.Nome              := FieldByName('nome').AsString;
        Empresa.CEP               := FieldByName('cep').AsString;
        Empresa.Endereco          := FieldByName('endereco').AsString;
        Empresa.Numero            := FieldByName('numero').AsString;
        Empresa.Complemento       := FieldByName('complemento').AsString;
        Empresa.Bairro            := FieldByName('bairro').AsString;
        Empresa.Fone              := FieldByName('fone').AsString;
        Empresa.Fax               := FieldByName('fax').AsString;
        Empresa.Email             := FieldByName('email').AsString;
        Empresa.CNPJ              := FieldByName('cnpj').AsString;
        Empresa.CPF               := FieldByName('cpf').AsString;
        Empresa.UF                := FieldByName('uf').AsString;
        Empresa.IE                := FieldByName('ie').AsString;
        Empresa.CodigoMunicipal   := FieldByName('codigo_municipal').AsString;
        Empresa.Suframa           := FieldByName('sufruma').AsString;
        Empresa.Perfil            := FieldByName('perfil').AsString;
        Empresa.Atividade         := FieldByName('atividade').AsString;
        Empresa.DataAlteracao     := FieldByName('data_alteracao').AsDateTime;

      end
      else
      begin
        raise Exception.Create('Nenhuma empresa encontrado com esse Id');
      end;

    end;
  finally
    DataModuleEmpresa.FDEmpresaQuery.Close;
  end;
end;

class procedure TEmpresaDAO.SalvarEmpresa(Empresa: TEmpresa);
begin
  try
    with DataModuleEmpresa.FDEmpresaQuery do
    begin
      ParamByName('empresa_id').AsInteger := Empresa.EmpresaID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('cliente_id').AsInteger         := Empresa.ClienteID;
      FieldByName('codigo_versao').AsInteger      := Empresa.CodigoVersao;
      FieldByName('nome_versao').AsString         := Empresa.NomeFantasia;
      FieldByName('codigo_financeiro').AsInteger  := Empresa.CodigoFinanceiro;
      FieldByName('nome').AsString                := Empresa.Nome;
      FieldByName('cep').AsString                 := Empresa.CEP;
      FieldByName('endereco').AsString            := Empresa.Endereco;
      FieldByName('numero').AsString              := Empresa.Numero;
      FieldByName('complemento').AsString         := Empresa.Complemento;
      FieldByName('bairro').AsString              := Empresa.Bairro;
      FieldByName('fone').AsString                := Empresa.Fone;
      FieldByName('fax').AsString                 := Empresa.Fax;
      FieldByName('email').AsString               := Empresa.Email;
      FieldByName('cnpj').AsString                := Empresa.CNPJ;
      FieldByName('cpf').AsString                 := Empresa.CPF;
      FieldByName('uf').AsString                  := Empresa.UF;
      FieldByName('ie').AsString                  := Empresa.IE;
      FieldByName('codigo_municipal').AsString    := Empresa.CodigoMunicipal;
      FieldByName('sufruma').AsString             := Empresa.Suframa;
      FieldByName('perfil').AsString              := Empresa.Perfil;
      FieldByName('atividade').AsString           := Empresa.Atividade;
      FieldByName('data_alteracao').AsDateTime    := Empresa.DataAlteracao;


      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleEmpresa.FDEmpresaQuery.Close;
  end;
end;

class procedure TEmpresaDAO.ExcluirEmpresa(Empresa: TEmpresa);
begin
  try
    with DataModuleEmpresa.FDEmpresaDeleteQuery do
    begin
      ParamByName('empresa_id').AsInteger := Empresa.EmpresaID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleEmpresa.FDEmpresaDeleteQuery.Close;
  end;
end;

end.
