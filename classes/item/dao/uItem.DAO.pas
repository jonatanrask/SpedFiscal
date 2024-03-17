unit uItem.DAO;

interface

uses
  uItem;

type
  TItemDAO = class
    class function CarregarItem(itemID: Integer): TItem;

    class procedure SalvarItem  (item   : TItem);
    class procedure ExcluirItem (itemID : TItem);
  end;

implementation

class function TItemDAO.CarregarItem(itemID: Integer): TItem;
begin
  // Implemente a lógica para carregar os dados do item do banco de dados
end;

class procedure TItemDAO.SalvarItem(item: TItem);
begin
  // Implemente a lógica para salvar os dados do item no banco de dados
end;

class procedure TItemDAO.ExcluirItem(itemID : TItem);
begin
  // Implemente a lógica para excluir os dados do item do banco de dados
end;

end.

