unit uContador.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleContador = class(TDataModule)
    FDContadorQuery: TFDQuery;
    FDContadorDeleteQuery: TFDQuery;
    FDContadorQuerycontador_id: TIntegerField;
    FDContadorQuerynome: TWideStringField;
    FDContadorQuerycpf: TWideStringField;
    FDContadorQuerycrc: TWideStringField;
    FDContadorQuerycnpj: TWideStringField;
    FDContadorQuerycep: TWideStringField;
    FDContadorQueryendereco: TWideStringField;
    FDContadorQuerynumero: TWideStringField;
    FDContadorQuerycomplemento: TWideStringField;
    FDContadorQuerybairro: TWideStringField;
    FDContadorQueryfax: TWideStringField;
    FDContadorQueryemail: TWideStringField;
    FDContadorQuerycodigo_municipal: TWideStringField;
    FDContadorQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleContador: TDataModuleContador;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
