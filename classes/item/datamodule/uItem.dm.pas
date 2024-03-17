unit uItem.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleItem = class(TDataModule)
    FDItemQuery: TFDQuery;
    FDItemDeleteQuery: TFDQuery;
    FDItemQueryitem_id: TIntegerField;
    FDItemQuerydescricao: TWideStringField;
    FDItemQuerycodigo_barras: TWideStringField;
    FDItemQueryunidade_medida_id: TIntegerField;
    FDItemQuerytipo_item: TIntegerField;
    FDItemQueryncm: TWideStringField;
    FDItemQuerygenero: TWideStringField;
    FDItemQueryaliquota: TFMTBCDField;
    FDItemQueryunidade_conversao_id: TIntegerField;
    FDItemQueryfator_conversao: TFMTBCDField;
    FDItemQuerycodigo_combustivel: TWideStringField;
    FDItemQuerynatureza_operacao_id: TIntegerField;
    FDItemQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleItem: TDataModuleItem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
