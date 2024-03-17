unit uConhecimento.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleConhecimento = class(TDataModule)
    FDConhecimentoQuery: TFDQuery;
    FDConhecimentoQueryconhecimento_id: TIntegerField;
    FDConhecimentoQuerycte: TWideStringField;
    FDConhecimentoQueryempresa_id: TIntegerField;
    FDConhecimentoQuerycliente_id: TIntegerField;
    FDConhecimentoQueryitem_id: TIntegerField;
    FDConhecimentoQuerydocumento_fiscal_id: TIntegerField;
    FDConhecimentoQuerylancamento_fiscal_id: TIntegerField;
    FDConhecimentoQuerydata_alteracao: TSQLTimeStampField;
    FDConhecimentoDeleteQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleConhecimento: TDataModuleConhecimento;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
