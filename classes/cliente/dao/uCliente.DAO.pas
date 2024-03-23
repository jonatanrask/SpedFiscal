unit uCliente.DAO;

interface

uses
  uCliente, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TClienteDAO = class
    public
      class procedure CarregarCliente (Cliente: TCliente);
      class procedure SalvarCliente   (Cliente: TCliente);
      class procedure ExcluirCliente  (Cliente: TCliente);

      constructor Create;
      destructor Destroy; override;
  end;

implementation

uses
  uCliente.dm, Forms;

constructor TClienteDAO.Create();
begin
  if not Assigned(DataModuleCliente) then
  begin
    DataModuleCliente := TDataModuleCliente.Create(Application)
  end;
end;

destructor TClienteDAO.Destroy;
begin
  FreeAndNil(DataModuleCliente);
  inherited;
end;


class procedure TClienteDAO.CarregarCliente(Cliente: TCliente);
begin
  try
    with DataModuleCliente.FDClienteQuery do
    begin
      ParamByName('codcliente_id').AsInteger := Cliente.ClienteID;
      Open;
      if RecordCount > 0 then
      begin
        Cliente.Nome              := FieldByName('nome').AsString;
        Cliente.CodigoPais        := FieldByName('codigo_pais').AsInteger;
        Cliente.CNPJ              := FieldByName('cnpj').AsString;
        Cliente.CPF               := FieldByName('cpf').AsString;
        Cliente.CodigoMunicipal   := FieldByName('codigo_municipal').AsString;
        Cliente.IE                := FieldByName('ie').AsString;
        Cliente.Suframa           := FieldByName('suframa').AsString;
        Cliente.Endereco          := FieldByName('endereco').AsString;
        Cliente.Numero            := FieldByName('numero').AsString;
        Cliente.Complemento       := FieldByName('complemento').AsString;
        Cliente.Bairro            := FieldByName('bairro').AsString;
        Cliente.ContaContabilID   := FieldByName('conta_contabil_id').AsInteger;
        Cliente.DataAlteracao     := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum cliente encontrado com esse Id');
      end;

    end;
  finally
    DataModuleCliente.FDClienteQuery.Close;
  end;
end;

class procedure TClienteDAO.SalvarCliente(Cliente: TCliente);
begin
  try
    with DataModuleCliente.FDClienteQuery do
    begin
      ParamByName('centro_custo_id').AsInteger := Cliente.ClienteID;
      Open;


      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('codigo_pais').AsString         := Cliente.Nome;
      FieldByName('codigo_pais').AsInteger        := Cliente.CodigoPais;
      FieldByName('cnpj').AsString                := Cliente.CNPJ;
      FieldByName('cpf').AsString                 := Cliente.CPF;
      FieldByName('codigo_municipal').AsString    := Cliente.CodigoMunicipal;
      FieldByName('ie').AsString                  := Cliente.IE;
      FieldByName('suframa').AsString             := Cliente.Suframa;
      FieldByName('endereco').AsString            := Cliente.Endereco;
      FieldByName('numero').AsString              := Cliente.Numero;
      FieldByName('complemento').AsString         := Cliente.Complemento;
      FieldByName('bairro').AsString              := Cliente.Bairro;
      FieldByName('conta_contabil_id').AsInteger  := Cliente.ContaContabilID;

      Post;
      ApplyUpdates;
      CommitUpdates;

    end;
  finally
    DataModuleCliente.FDClienteQuery.Close;
  end;
end;

class procedure TClienteDAO.ExcluirCliente(Cliente: TCliente);
begin
  try
    with DataModuleCliente.FDClienteDeleteQuery do
    begin
      ParamByName('centro_custo_id').AsInteger := Cliente.ClienteID;
      ExecSQL;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleCliente.FDClienteDeleteQuery.Close;
  end;
end;

end.

