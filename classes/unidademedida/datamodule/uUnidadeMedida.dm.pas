unit uUnidadeMedida.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleUnidadeMedida = class(TDataModule)
    FDUnidadeMedidaDeleteQuery: TFDQuery;
    FDUnidadeMedidaQuery: TFDQuery;
    FDUnidadeMedidaQueryunidade_medida_id: TIntegerField;
    FDUnidadeMedidaQuerydescricao: TWideStringField;
    FDUnidadeMedidaQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleUnidadeMedida: TDataModuleUnidadeMedida;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
