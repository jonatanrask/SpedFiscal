unit uContaContabil.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleContaContabil = class(TDataModule)
    FDContaContabilQuery: TFDQuery;
    FDContaContabilDeleteQuery: TFDQuery;
    FDContaContabilQueryconta_contabil_id: TIntegerField;
    FDContaContabilQuerydata_alteracao: TSQLTimeStampField;
    FDContaContabilQuerycodigo_natureza_cc: TIntegerField;
    FDContaContabilQuerytipo_conta: TIntegerField;
    FDContaContabilQuerynivel: TIntegerField;
    FDContaContabilQuerycodigo_conta_analitica: TWideStringField;
    FDContaContabilQuerynome_conta_analitica: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleContaContabil: TDataModuleContaContabil;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
