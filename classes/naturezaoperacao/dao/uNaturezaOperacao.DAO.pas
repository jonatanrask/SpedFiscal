unit uNaturezaOperacao.DAO;

interface

uses
  uNaturezaOperacao, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TNaturezaOperacaoDAO = class
  public
    class procedure CarregarNaturezaOperacao(NaturezaOperacao: TNaturezaOperacao);
    class procedure SalvarNaturezaOperacao  (NaturezaOperacao: TNaturezaOperacao);
    class procedure ExcluirNaturezaOperacao (NaturezaOperacao: TNaturezaOperacao);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uNaturezaoperacao.dm, Forms;

constructor TNaturezaOperacaoDAO.Create();
begin
  if not Assigned(DataModuleNaturezaOperacao) then
  begin
    DataModuleNaturezaOperacao := TDataModuleNaturezaOperacao.Create(Application)
  end;
end;

destructor TNaturezaOperacaoDAO.Destroy;
begin
  FreeAndNil(DataModuleNaturezaOperacao);
  inherited;
end;

class procedure TNaturezaOperacaoDAO.CarregarNaturezaOperacao(NaturezaOperacao: TNaturezaOperacao);
begin
  try
    with DataModuleNaturezaOperacao.FDNaturezaOperacaoQuery do
    begin
      ParamByName('nature_operacao_id').AsInteger := NaturezaOperacao.NaturezaOperacaoID;
      if RecordCount > 0 then
      begin
        NaturezaOperacao.CodigoNatureza := FieldByName('codigo_natureza').AsInteger;
        NaturezaOperacao.Descricao      := FieldByName('descricao').AsString;
        NaturezaOperacao.DataAlteracao  := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum CFOP encontrado com esse Id');
      end;
    end;
  finally
    DataModuleNaturezaOperacao.FDNaturezaOperacaoQuery.Close;
  end;
end;

class procedure TNaturezaOperacaoDAO.SalvarNaturezaOperacao(NaturezaOperacao: TNaturezaOperacao);
begin
 try
    with DataModuleNaturezaOperacao.FDNaturezaOperacaoQuery do
    begin
      ParamByName('nature_operacao_id').AsInteger := NaturezaOperacao.NaturezaOperacaoID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('codigo_natureza').AsInteger  := NaturezaOperacao.CodigoNatureza;
      FieldByName('descricao').AsString         := NaturezaOperacao.Descricao;

      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleNaturezaOperacao.FDNaturezaOperacaoQuery.Close;
  end;
end;

class procedure TNaturezaOperacaoDAO.ExcluirNaturezaOperacao(NaturezaOperacao: TNaturezaOperacao);
begin
  try
   with DataModuleNaturezaOperacao.FDNaturezaOperacaoDeleteQuery do
    begin
      ParamByName('nature_operacao_id').AsInteger := NaturezaOperacao.NaturezaOperacaoID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleNaturezaOperacao.FDNaturezaOperacaoDeleteQuery.Close;
  end;
end;

end.

