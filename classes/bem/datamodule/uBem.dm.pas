unit uBem.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleBem = class(TDataModule)
    FDBemQuery: TFDQuery;
    FDBemDeleteQuery: TFDQuery;
    FDBemQuerybem_id: TIntegerField;
    FDBemQuerycentro_custo_id: TIntegerField;
    FDBemQueryidentificador: TWideStringField;
    FDBemQuerydescricao: TWideStringField;
    FDBemQuerycodigoprincipal: TWideStringField;
    FDBemQuerycodigo_cta: TWideStringField;
    FDBemQuerynumero_parcelas: TIntegerField;
    FDBemQuerycentro_custo: TWideStringField;
    FDBemQueryfuncao: TWideStringField;
    FDBemQueryvida_util: TIntegerField;
    FDBemQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleBem: TDataModuleBem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
