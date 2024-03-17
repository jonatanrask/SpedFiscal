unit uCentroCusto.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleCentroCusto = class(TDataModule)
    FDCentroCustoQuery: TFDQuery;
    FDCentroCustoDeleteQuery: TFDQuery;
    FDCentroCustoQuerycentro_custo_id: TIntegerField;
    FDCentroCustoQuerydata_alteracao: TSQLTimeStampField;
    FDCentroCustoQuerycodigo_centro_custos: TWideStringField;
    FDCentroCustoQuerynome_centro_custos: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleCentroCusto: TDataModuleCentroCusto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
