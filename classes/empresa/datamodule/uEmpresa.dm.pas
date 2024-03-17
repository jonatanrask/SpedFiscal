unit uEmpresa.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleEmpresa = class(TDataModule)
    FDEmpresaQuery: TFDQuery;
    FDEmpresaDeleteQuery: TFDQuery;
    FDEmpresaQueryempresa_id: TIntegerField;
    FDEmpresaQuerycliente_id: TIntegerField;
    FDEmpresaQuerycodigo_versao: TIntegerField;
    FDEmpresaQuerynome_fantasia: TWideStringField;
    FDEmpresaQuerycodigo_financeiro: TIntegerField;
    FDEmpresaQuerynome: TWideStringField;
    FDEmpresaQuerycep: TWideStringField;
    FDEmpresaQueryendereco: TWideStringField;
    FDEmpresaQuerynumero: TWideStringField;
    FDEmpresaQuerycomplemento: TWideStringField;
    FDEmpresaQuerybairro: TWideStringField;
    FDEmpresaQueryfone: TWideStringField;
    FDEmpresaQueryfax: TWideStringField;
    FDEmpresaQueryemail: TWideStringField;
    FDEmpresaQuerycnpj: TWideStringField;
    FDEmpresaQuerycpf: TWideStringField;
    FDEmpresaQueryuf: TWideStringField;
    FDEmpresaQueryie: TWideStringField;
    FDEmpresaQuerycodigo_municipal: TWideStringField;
    FDEmpresaQuerysuframa: TWideStringField;
    FDEmpresaQueryperfil: TWideStringField;
    FDEmpresaQueryatividade: TWideStringField;
    FDEmpresaQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleEmpresa: TDataModuleEmpresa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
