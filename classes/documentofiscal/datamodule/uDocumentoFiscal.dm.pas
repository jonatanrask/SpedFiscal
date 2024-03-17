unit uDocumentoFiscal.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uConexao;

type
  TDataModuleDocumentoFiscal = class(TDataModule)
    FDDocumentoFiscalQuery: TFDQuery;
    FDDocumentoFiscalDeleteQuery: TFDQuery;
    FDDocumentoFiscalQuerydocumento_fiscal_id: TIntegerField;
    FDDocumentoFiscalQuerycodigo_informacao: TIntegerField;
    FDDocumentoFiscalQuerytexto: TWideStringField;
    FDDocumentoFiscalQuerydata_alteracao: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleDocumentoFiscal: TDataModuleDocumentoFiscal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
