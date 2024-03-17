unit uLancamentoFiscal.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleLancamentoFiscal = class(TDataModule)
    FDLancamentoFiscalQuery: TFDQuery;
    FDLancamentoFiscalDeleteQuery: TFDQuery;
    FDLancamentoFiscalQuerylancamento_fiscal_id: TIntegerField;
    FDLancamentoFiscalQuerycodigo_obs: TIntegerField;
    FDLancamentoFiscalQuerytexto: TWideStringField;
    FDLancamentoFiscalQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleLancamentoFiscal: TDataModuleLancamentoFiscal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
