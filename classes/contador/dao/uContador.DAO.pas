unit uContador.DAO;

interface

uses
  uContador, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TContadorDAO = class
  public
    class procedure CarregarContador(Contador: TContador);
    class procedure SalvarContador  (Contador: TContador);
    class procedure ExcluirContador (Contador: TContador);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uContador.dm, Forms;

constructor TContadorDAO.Create();
begin
  if not Assigned(DataModuleContador) then
  begin
    DataModuleContador := TDataModuleContador.Create(Application)
  end;
end;

destructor TContadorDAO.Destroy;
begin
  FreeAndNil(DataModuleContador);
  inherited;
end;

class procedure TContadorDAO.CarregarContador(Contador: TContador);
begin
  try
    with DataModuleContador.FDContadorQuery do
    begin
      ParamByName('contador_id').AsInteger := Contador.ContadorID;
      Open;
      if RecordCount > 0 then
      begin
        Contador.Nome             := FieldByName('nome').AsString;
        Contador.CPF              := FieldByName('cpf').AsString;
        Contador.CRC              := FieldByName('crc').AsString;
        Contador.CNPJ             := FieldByName('cnpj').AsString;
        Contador.CEP              := FieldByName('cep').AsString;
        Contador.Endereco         := FieldByName('endereco').AsString;
        Contador.Numero           := FieldByName('numero').AsString;
        Contador.Complemento      := FieldByName('complemento').AsString;
        Contador.Bairro           := FieldByName('bairro').AsString;
        Contador.Fax              := FieldByName('fax').AsString;
        Contador.Email            := FieldByName('email').AsString;
        Contador.CodigoMunicipal  := FieldByName('codigo_municipal').AsString;
        Contador.DataAlteracao    := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum contador encontrado com esse Id');
      end;

    end;
  finally
    DataModuleContador.FDContadorQuery.Close;
  end;
end;

class procedure TContadorDAO.SalvarContador(Contador: TContador);
begin
  try
    with DataModuleContador.FDContadorQuery do
    begin
      ParamByName('contador_id').AsInteger := Contador.ContadorID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('nome').AsString              := Contador.Nome;
      FieldByName('cpf').AsString               := Contador.CPF;
      FieldByName('crc').AsString               := Contador.CRC;
      FieldByName('cnpj').AsString              := Contador.CNPJ;
      FieldByName('cep').AsString               := Contador.CEP;
      FieldByName('endereco').AsString          := Contador.Endereco;
      FieldByName('numero').AsString            := Contador.Numero;
      FieldByName('complemento').AsString       := Contador.Complemento;
      FieldByName('bairro').AsString            := Contador.Bairro;
      FieldByName('fax').AsString               := Contador.Fax;
      FieldByName('email').AsString             := Contador.Email;
      FieldByName('codigo_municipal').AsString  := Contador.CodigoMunicipal;

      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleContador.FDContadorQuery.Close;
  end;
end;

class procedure TContadorDAO.ExcluirContador(Contador: TContador);
begin
  try
    with DataModuleContador.FDContadorDeleteQuery do
    begin
      ParamByName('contador_id').AsInteger := Contador.ContadorID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleContador.FDContadorDeleteQuery.Close;
  end;
end;

end.

