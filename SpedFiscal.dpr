program SpedFiscal;

uses
  Vcl.Forms,
  Programa in 'view\Programa.pas' {Form1},
  uEmpresa.intf in 'classes\empresa\interface\uEmpresa.intf.pas',
  uEmpresa in 'classes\empresa\entidade\uEmpresa.pas',
  uEmpresa_DAO in 'classes\empresa\dao\uEmpresa_DAO.pas',
  uContador.intf in 'classes\contador\interface\uContador.intf.pas',
  uContador in 'classes\contador\entidade\uContador.pas',
  uContador.DAO in 'classes\contador\dao\uContador.DAO.pas',
  uCliente.intf in 'classes\cliente\interface\uCliente.intf.pas',
  uCliente in 'classes\cliente\entidade\uCliente.pas',
  uCliente.DAO in 'classes\cliente\dao\uCliente.DAO.pas',
  uClienteLog.intf in 'classes\cliente\clientelog\interface\uClienteLog.intf.pas',
  uClienteLog in 'classes\cliente\clientelog\entidade\uClienteLog.pas',
  uClienteLog.DAO in 'classes\cliente\clientelog\dao\uClienteLog.DAO.pas',
  uUnidadeMedida.intf in 'classes\unidademedida\interface\uUnidadeMedida.intf.pas',
  uUnidadeMedida in 'classes\unidademedida\entidade\uUnidadeMedida.pas',
  uUnidadeMedida.DAO in 'classes\unidademedida\dao\uUnidadeMedida.DAO.pas',
  uItem.intf in 'classes\item\interface\uItem.intf.pas',
  uItem in 'classes\item\entidade\uItem.pas',
  uItem.DAO in 'classes\item\dao\uItem.DAO.pas',
  uBem.intf in 'classes\bem\interface\uBem.intf.pas',
  uBem in 'classes\bem\entidade\uBem.pas',
  uBem.DAO in 'classes\bem\dao\uBem.DAO.pas',
  uNaturezaOperacao.intf in 'classes\naturezaoperacao\interface\uNaturezaOperacao.intf.pas',
  uNaturezaOperacao in 'classes\naturezaoperacao\entidade\uNaturezaOperacao.pas',
  uNaturezaOperacao.DAO in 'classes\naturezaoperacao\dao\uNaturezaOperacao.DAO.pas',
  uDocumentoFiscal.intf in 'classes\documentofiscal\interface\uDocumentoFiscal.intf.pas',
  uDocumentoFiscal in 'classes\documentofiscal\entidade\uDocumentoFiscal.pas',
  uDocumentoFiscal.DAO in 'classes\documentofiscal\dao\uDocumentoFiscal.DAO.pas',
  uLancamentoFiscal.intf in 'classes\lancamentofiscal\interface\uLancamentoFiscal.intf.pas',
  uLancamentoFiscal in 'classes\lancamentofiscal\entidade\uLancamentoFiscal.pas',
  uLancamentoFiscal.DAO in 'classes\lancamentofiscal\dao\uLancamentoFiscal.DAO.pas',
  uContaContabil.intf in 'classes\contacontabil\interface\uContaContabil.intf.pas',
  uContaContabil in 'classes\contacontabil\entidade\uContaContabil.pas',
  uContaContabil.DAO in 'classes\contacontabil\dao\uContaContabil.DAO.pas',
  uCentroCusto.intf in 'classes\centrocusto\interface\uCentroCusto.intf.pas',
  uConhecimento.intf in 'classes\conhecimento\interface\uConhecimento.intf.pas',
  uConhecimento in 'classes\conhecimento\entidade\uConhecimento.pas',
  uConhecimento.DAO in 'classes\conhecimento\dao\uConhecimento.DAO.pas',
  uConexao in 'conexao\uConexao.pas' {DataModuleConexao: TDataModule},
  uConhecimento.dm in 'classes\conhecimento\datamodule\uConhecimento.dm.pas' {DataModuleConhecimento: TDataModule},
  uCentroCusto in 'classes\centrocusto\entidade\uCentroCusto.pas',
  uCentroCusto.DAO in 'classes\centrocusto\dao\uCentroCusto.DAO.pas',
  uBem.dm in 'classes\bem\datamodule\uBem.dm.pas' {DataModuleBem: TDataModule},
  uCentroCusto.dm in 'classes\centrocusto\datamodule\uCentroCusto.dm.pas' {DataModuleCentroCusto: TDataModule},
  uCliente.dm in 'classes\cliente\datamodule\uCliente.dm.pas' {DataModuleCliente: TDataModule},
  uContaContabil.dm in 'classes\contacontabil\datamodule\uContaContabil.dm.pas' {DataModuleContaContabil: TDataModule},
  uContador.dm in 'classes\contador\datamodule\uContador.dm.pas' {DataModuleContador: TDataModule},
  uDocumentoFiscal.dm in 'classes\documentofiscal\datamodule\uDocumentoFiscal.dm.pas' {DataModuleDocumentoFiscal: TDataModule},
  uEmpresa.dm in 'classes\empresa\datamodule\uEmpresa.dm.pas' {DataModuleEmpresa: TDataModule},
  uItem.dm in 'classes\item\datamodule\uItem.dm.pas' {DataModuleItem: TDataModule},
  uLancamentoFiscal.dm in 'classes\lancamentofiscal\datamodule\uLancamentoFiscal.dm.pas' {DataModuleLancamentoFiscal: TDataModule},
  uNaturezaOperacao.dm in 'classes\naturezaoperacao\datamodule\uNaturezaOperacao.dm.pas' {DataModuleNaturezaOperacao: TDataModule},
  uUnidadeMedida.dm in 'classes\unidademedida\datamodule\uUnidadeMedida.dm.pas' {DataModuleUnidadeMedida: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModuleConexao, DataModuleConexao);
  Application.CreateForm(TDataModuleConhecimento, DataModuleConhecimento);
  Application.CreateForm(TDataModuleBem, DataModuleBem);
  Application.CreateForm(TDataModuleCentroCusto, DataModuleCentroCusto);
  Application.CreateForm(TDataModuleCliente, DataModuleCliente);
  Application.CreateForm(TDataModuleContaContabil, DataModuleContaContabil);
  Application.CreateForm(TDataModuleContador, DataModuleContador);
  Application.CreateForm(TDataModuleDocumentoFiscal, DataModuleDocumentoFiscal);
  Application.CreateForm(TDataModuleEmpresa, DataModuleEmpresa);
  Application.CreateForm(TDataModuleItem, DataModuleItem);
  Application.CreateForm(TDataModuleLancamentoFiscal, DataModuleLancamentoFiscal);
  Application.CreateForm(TDataModuleNaturezaOperacao, DataModuleNaturezaOperacao);
  Application.CreateForm(TDataModuleUnidadeMedida, DataModuleUnidadeMedida);
  Application.Run;
end.
