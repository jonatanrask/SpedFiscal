unit uItem.DAO;

interface

uses
  uItem, System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TItemDAO = class
    class procedure CarregarItem (Item: TItem);
    class procedure SalvarItem   (Item: TItem);
    class procedure ExcluirItem  (Item: TItem);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uItem.dm, Forms;

constructor TItemDAO.Create();
begin
  if not Assigned(DataModuleItem) then
  begin
    DataModuleItem := TDataModuleItem.Create(Application)
  end;
end;

destructor TItemDAO.Destroy;
begin
  FreeAndNil(DataModuleItem);
  inherited;
end;

class procedure TItemDAO.CarregarItem(Item: TItem);
begin
  try
    with DataModuleItem.FDItemQuery do
    begin
      ParamByName('item_id').AsInteger := Item.ItemID;
      Open;
      if RecordCount > 0 then
      begin
        Item.Descricao          := FieldByName('descricao').AsString;
        Item.CodigoBarras       := FieldByName('codigo_barras').AsString;
        Item.UnidadeMedidaID    := FieldByName('unidade_medida_id').AsInteger;
        Item.TipoItem           := FieldByName('tipo_item').AsInteger;
        Item.NCM                := FieldByName('ncm').AsString;
        Item.Aliquota           := FieldByName('aliquota').AsFloat;
        Item.UnidadeConversaoID := FieldByName('unidade_conversao_id').AsInteger;
        Item.FatorConversao     := FieldByName('fator_conversao').AsFloat;
        Item.CodigoCombustivel  := FieldByName('codigo_combustivel').AsString;
        Item.NaturezaOperacaoID := FieldByName('natureza_operacao').AsInteger;
        Item.DataAlteracao      := FieldByName('data_alteracao').AsDateTime;
      end
      else
      begin
        raise Exception.Create('Nenhum item encontrado com esse Id');
      end;
    end;
  finally
    DataModuleItem.FDItemQuery.Close;
  end;
end;

class procedure TItemDAO.SalvarItem(Item: TItem);
begin
 try
    with DataModuleItem.FDItemQuery do
    begin
      ParamByName('item_id').AsInteger := Item.ItemID;
      Open;

      if RecordCount > 0 then
      begin
        Edit;
      end
      else
      begin
        Insert;
      end;

      FieldByName('descricao').AsString             := Item.Descricao;
      FieldByName('codigo_barras').AsString         := Item.CodigoBarras;
      FieldByName('unidade_medida_id').AsInteger    := Item.UnidadeMedidaID;
      FieldByName('tipo_item').AsInteger            := Item.TipoItem;
      FieldByName('ncm').AsString                   := Item.NCM;
      FieldByName('aliquota').AsFloat               := Item.Aliquota;
      FieldByName('unidade_conversao_id').AsInteger := Item.UnidadeConversaoID;
      FieldByName('fator_conversao').AsFloat        := Item.FatorConversao;
      FieldByName('codigo_combustivel').AsString    := Item.CodigoCombustivel;
      FieldByName('natureza_operacao').AsInteger    := Item.NaturezaOperacaoID;

      Post;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleItem.FDItemQuery.Close;
  end;
end;

class procedure TItemDAO.ExcluirItem(Item: TItem);
begin
  try
   with DataModuleItem.FDItemDeleteQuery do
    begin
      ParamByName('item_id').AsInteger := Item.ItemID;
      ExecSql;
      ApplyUpdates;
      CommitUpdates;
    end;
  finally
    DataModuleItem.FDItemDeleteQuery.Close;
  end;
end;

end.

