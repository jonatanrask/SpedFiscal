unit uUnidadeMedida.intf;

interface

type
  IUnidadeMedida = interface
    ['{7B75D348-9772-41B1-93B5-71DAA9DAA57E}']

    function GetUnidadeMedidaID: Integer;
    function GetDescricao      : string;
    function GetDataAlteracao  : TDateTime;

    procedure SetDescricao     (const Value: string);
    procedure SetDataAlteracao (const Value: TDateTime);

    property UnidadeMedidaID : Integer   read GetUnidadeMedidaID;
    property Descricao       : string    read GetDescricao       write SetDescricao;
    property DataAlteracao   : TDateTime read GetDataAlteracao   write SetDataAlteracao;
  end;

implementation

end.

