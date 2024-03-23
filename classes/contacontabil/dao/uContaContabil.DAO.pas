unit uContaContabil.DAO;

interface

uses
  uContaContabil, System.SysUtils, System.Classes, Data.DB,
  Data.Win.ADODB;

type
  TContaContabilDAO = class
  public
    procedure CarregarContaContabil (ContaContabil: TContaContabil);
    procedure SalvarContaContabil   (ContaContabil: TContaContabil);
    procedure ExcluirContaContabil  (ContaContabil: TContaContabil);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uContaContabil.dm, Forms;

{ TContaContabilDAO }

constructor TContaContabilDAO.Create();
begin
  if not Assigned(DataModuleContaContabil) then
  begin
    DataModuleContaContabil := TDataModuleContaContabil.Create(Application)
  end;
end;

destructor TContaContabilDAO.Destroy;
begin
  FreeAndNil(DataModuleContaContabil);
  inherited;
end;

procedure TContaContabilDAO.CarregarContaContabil(ContaContabil: TContaContabil);
begin
  try
    with DataModuleContaContabil.FDContaContabilQuery do
    begin
      ParamByName('conta_contabil_id').AsInteger := ContaContabil.ContaContabilID;
      Open;
      if RecordCount > 0 then
      begin
        ContaContabil.DataAlteracao         := FieldByName('data_alteracao').AsDateTime;
        ContaContabil.CodigoNaturezaCC      := FieldByName('codigo_natureza_cc').AsInteger;
        ContaContabil.TipoConta             := FieldByName('tipo_conta').AsInteger;
        ContaContabil.Nivel                 := FieldByName('nivel').AsInteger;
        ContaContabil.CodigoContaAnalitica  := FieldByName('codigo_conta_analitica').AsString;
        ContaContabil.NomeContaAnalitica    := FieldByName('nome_conta_analitica').AsString;

      end
      else
      begin
        raise Exception.Create('Nenhuma conta encontrado com esse Id');
      end;
    end;
  finally
    DataModuleContaContabil.FDContaContabilQuery.Close;
  end;
end;

procedure TContaContabilDAO.SalvarContaContabil(ContaContabil: TContaContabil);
begin
  try
    with DataModuleContaContabil.FDContaContabilQuery do
    begin
      ParamByName('conta_contabil_id').AsInteger := ContaContabil.ContaContabilID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('codigo_natureza_cc').AsInteger     := ContaContabil.CodigoNaturezaCC;
      FieldByName('tipo_conta').AsInteger             := ContaContabil.TipoConta;
      FieldByName('nivel').AsInteger                  := ContaContabil.Nivel;
      FieldByName('codigo_conta_analitica').AsString  := ContaContabil.CodigoContaAnalitica;
      FieldByName('nome_conta_analitica').AsString    := ContaContabil.NomeContaAnalitica;

      Post;
      ApplyUpdates;
      CommitUpdates;

    end;
  finally
    DataModuleContaContabil.FDContaContabilQuery.Close;
  end;
end;

procedure TContaContabilDAO.ExcluirContaContabil(ContaContabil: TContaContabil);
begin
  try
    with DataModuleContaContabil.FDContaContabilDeleteQuery do
    begin
      ParamByName('conhecimento_id').AsInteger := ContaContabil.ContaContabilID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleContaContabil.FDContaContabilDeleteQuery.Close;
  end;
end;

end.

