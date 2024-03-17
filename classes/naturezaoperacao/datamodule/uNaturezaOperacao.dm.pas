unit uNaturezaOperacao.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleNaturezaOperacao = class(TDataModule)
    FDNaturezaOperacaoDeleteQuery: TFDQuery;
    FDNaturezaOperacaoQuery: TFDQuery;
    FDNaturezaOperacaoQuerynatureza_operacao_id: TIntegerField;
    FDNaturezaOperacaoQuerycodigo_natureza: TIntegerField;
    FDNaturezaOperacaoQuerydescricao: TWideStringField;
    FDNaturezaOperacaoQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleNaturezaOperacao: TDataModuleNaturezaOperacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
