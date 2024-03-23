unit uClienteLog.dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModuleClienteLog = class(TDataModule)
    FDClienteLogQuery: TFDQuery;
    FDClienteLogQuerycliente_log_id: TIntegerField;
    FDClienteLogQuerycliente_id: TIntegerField;
    FDClienteLogQuerydata_alteracao: TSQLTimeStampField;
    FDClienteLogQuerynumero_campo: TIntegerField;
    FDClienteLogQueryconteudo_anterior: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleClienteLog: TDataModuleClienteLog;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
