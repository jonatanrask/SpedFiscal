unit uBem.DAO;

interface

uses
  uBem;

type
  TBemDAO = class
    class procedure CarregarBem (Bem: TBem);
    class procedure SalvarBem   (Bem: TBem);
    class procedure ExcluirBem  (Bem: TBem);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uBem.dm, Forms, SysUtils;

constructor TBemDAO.Create();
begin
  if not Assigned(DataModuleBem) then
  begin
    DataModuleBem := TDataModuleBem.Create(Application)
  end;
end;

destructor TBemDAO.Destroy;
begin
  FreeAndNil(DataModuleBem);
  inherited;
end;

class procedure TBemDAO.CarregarBem(Bem: TBem);
begin
  try
    with DataModuleBem.FDBemQuery do
    begin
      ParamByName('bem_id').AsInteger := Bem.BemID;
      Open;
      if RecordCount > 0 then
      begin
        Bem.CentroCustoID   := FieldByName('centro_custo_id').AsInteger;
        Bem.Identificador   := FieldByName('identificador').AsString;
        Bem.Descricao       := FieldByName('descricao').AsString;
        Bem.CodigoPrincipal := FieldByName('codigo_principal').AsString;
        Bem.CodigoCta       := FieldByName('codigo_cta').AsString;
        Bem.NumeroParcelas  := FieldByName('numero_parcelas').AsInteger;
        Bem.CentroCusto     := FieldByName('centro_custo').AsString;
        Bem.Funcao          := FieldByName('funcao').AsString;
        Bem.VidaUtil        := FieldByName('vida_util').AsInteger;
        Bem.DataAlteracao   := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum Bem encontrado com esse Id');
      end;

    end;
  finally
    DataModuleBem.FDBemQuery.Close;
  end;
end;

class procedure TBemDAO.SalvarBem(Bem: TBem);
begin
  try
    with DataModuleBem.FDBemQuery do
    begin
      ParamByName('bem_id').AsInteger := Bem.BemID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('centro_custo_id').AsInteger := Bem.CentroCustoID;
      FieldByName('identificador').AsString    := Bem.Identificador;
      FieldByName('descricao').AsString        := Bem.Descricao;
      FieldByName('codigo_principal').AsString := Bem.CodigoPrincipal;
      FieldByName('codigo_cta').AsString       := Bem.CodigoCta;
      FieldByName('numero_parcelas').AsInteger := Bem.NumeroParcelas;
      FieldByName('centro_custo').AsString     := Bem.CentroCusto;
      FieldByName('funcao').AsString           := Bem.Funcao;
      FieldByName('vida_util').AsInteger       := Bem.VidaUtil;

      Post;
      ApplyUpdates;
      CommitUpdates;

    end;
  finally
    DataModuleBem.FDBemQuery.Close;
  end;
end;

class procedure TBemDAO.ExcluirBem(Bem: TBem);
begin
  try
    with DataModuleBem.FDBemDeleteQuery do
    begin
      ParamByName('bem_id').AsInteger := Bem.BemID;
      ExecSQL;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleBem.FDBemDeleteQuery.Close;
  end;
end;

end.

