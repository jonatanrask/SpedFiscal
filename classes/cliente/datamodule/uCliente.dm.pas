unit uCliente.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleCliente = class(TDataModule)
    FDClienteQuery: TFDQuery;
    FDClienteDeleteQuery: TFDQuery;
    FDClienteQuerycliente_id: TIntegerField;
    FDClienteQuerynome: TWideStringField;
    FDClienteQuerycodigo_pais: TIntegerField;
    FDClienteQuerycnpj: TWideStringField;
    FDClienteQuerycpf: TWideStringField;
    FDClienteQuerycodigo_municipal: TWideStringField;
    FDClienteQueryie: TWideStringField;
    FDClienteQuerysuframa: TWideStringField;
    FDClienteQueryendereco: TWideStringField;
    FDClienteQuerynumero: TWideStringField;
    FDClienteQuerycomplemento: TWideStringField;
    FDClienteQuerybairro: TWideStringField;
    FDClienteQueryconta_contabil_id: TIntegerField;
    FDClienteQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleCliente: TDataModuleCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
