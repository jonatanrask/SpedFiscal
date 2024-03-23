unit Sped;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, ACBrBase, ACBrSpedFiscal, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormSped = class(TForm)
    Panel1: TPanel;
    LabeledEditArquivo: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    LabelAno: TLabel;
    MemoLog: TMemo;
    ButtonGerar: TButton;
    ACBrSPEDFiscal: TACBrSPEDFiscal;
    FDSpedQuery: TFDQuery;
    FDSpedQueryconhecimento_id: TIntegerField;
    FDSpedQuerycte: TWideStringField;
    FDSpedQueryempresa_id: TIntegerField;
    FDSpedQuerycliente_id: TIntegerField;
    FDSpedQueryitem_id: TIntegerField;
    FDSpedQuerydocumento_fiscal_id: TIntegerField;
    FDSpedQuerylancamento_fiscal_id: TIntegerField;
    FDSpedQuerydata_alteracao: TSQLTimeStampField;
    procedure ButtonGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSped: TFormSped;

implementation

uses
  uEmpresa, uContador, uConhecimento, uCliente, uClienteLog, uItem,
  uUnidadeMedida, uNaturezaOperacao, uDocumentoFiscal, uLancamentoFiscal,
  uContaContabil, uCentroCusto, ACBrEFDBlocos;

const
  strUNID: array [0 .. 4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

{$R *.dfm}

procedure TFormSped.ButtonGerarClick(Sender: TObject);
var
  Conhecimento      : TConhecimento;
  Empresa           : TEmpresa;
  Cliente           : TCliente;
  ClienteLog        : TClienteLog;
  Contador          : TContador;
  Item              : TItem;
  UnidadeMedida     : TUnidadeMedida;
  NaturezaOperacao  : TNaturezaOperacao;
  DocumentoFiscal   : TDocumentoFIscal;
  LancamentoFiscal  : TLancamentoFiscal;
  ContaContabil     : TContaContabil;
  CentroCusto       : TCentroCusto;
begin
  try
    FDSpedQuery.Open;
    MemoLog.Lines.Clear;
    Conhecimento := TConhecimento.Create(FDSpedQuery.FieldByName('conhecimento_id').AsInteger);
    Conhecimento.InicializarConhecimento(Conhecimento);

    Empresa := TEmpresa.Create(Conhecimento.EmpresaID);
    Empresa.InicializarEmpresa(Empresa);

    LancamentoFiscal := TLancamentoFiscal.Create(Conhecimento.LancamentoFiscalID);
    LancamentoFiscal.InicializarLancamentoFiscal(LancamentoFiscal);

    Cliente := TCliente.Create(Conhecimento.ClienteID);
    Cliente.InicializarCliente(Cliente);

    ClienteLog := TClienteLog.Create(Cliente.ClienteID);
    ClienteLog.InicializarClienteLog(ClienteLog);

    Contador := TContador.Create(Empresa.ContadorID);
    Contador.InicializarContador(Contador);

    Item := TItem.Create(Conhecimento.ItemID);
    Item.InicializarItem(Item);

    UnidadeMedida := TUnidadeMedida.Create(Item.UnidadeMedidaID);
    UnidadeMedida.InicializarUnidadeMedida(UnidadeMedida);

    NaturezaOperacao := TNaturezaOperacao.Create(Item.NaturezaOperacaoID);
    NaturezaOperacao.InicializarNaturezaOperacao(NaturezaOperacao);

    DocumentoFiscal := TDocumentoFiscal.Create(Conhecimento.DocumentoFiscalID);
    DocumentoFiscal.InicializarDocumentoFiscal(DocumentoFiscal);

    ContaContabil := TContaContabil.Create(Cliente.ContaContabilID);
    ContaContabil.InicializaContaContabil(ContaContabil);

    with ACBrSPEDFiscal.Bloco_0 do
    begin
      // Dados da Empresa
      with Registro0000New do
      begin
        COD_VER     := StrToCodVer(IntToStr(Empresa.CodigoVersao));
        COD_FIN     := raOriginal;
        NOME        := Empresa.Nome;
        CNPJ        := Empresa.CNPJ;
        CPF         := Empresa.CPF;
        UF          := Empresa.UF;
        IE          := Empresa.IE;
        COD_MUN     := StrToInt(Empresa.CodigoMunicipal);
        IM          := '';
        SUFRAMA     := Empresa.Suframa;
        IND_PERFIL  := pfPerfilA;
        IND_ATIV    := atOutros;
      end;

      with Registro0001New do
      begin

        IND_MOV := imComDados;

        // FILHO - Dados complementares da Empresa
        with Registro0005New do
        begin
          FANTASIA  := Empresa.NomeFantasia;
          CEP       := Empresa.CEP;
          ENDERECO  := Empresa.Endereco;
          NUM       := Empresa.Numero;
          COMPL     := Empresa.Complemento;
          BAIRRO    := Empresa.Bairro;
          FONE      := Empresa.Fone;
          FAX       := Empresa.Fax;
          EMAIL     := Empresa.Email;
        end;

        // FILHO - Dados do contador.
        with Registro0100New do
        begin
          NOME      := Contador.Nome;
          CPF       := Contador.CPF;
          CRC       := Contador.CRC;
          CNPJ      := Contador.CNPJ;
          CEP       := Contador.CEP;
          ENDERECO  := Contador.Endereco;
          NUM       := Contador.Numero;
          COMPL     := Contador.Complemento;
          BAIRRO    := Contador.Bairro;
          FONE      := '';
          FAX       := Contador.Fax;
          EMAIL     := Contador.Email;
          COD_MUN   := StrToInt(Contador.CodigoMunicipal);
        end;

        // 10 Clientes
        with Registro0150New do
        begin
          COD_PART  := IntToStr(Cliente.ClienteID);
          NOME      := Cliente.Nome;
          COD_PAIS  := IntToStr(Cliente.CodigoPais);
          CNPJ      := Cliente.CNPJ;
          CPF       := Cliente.CPF;
          IE        := Cliente.IE;
          COD_MUN   := StrToInt(Cliente.CodigoMunicipal);
          SUFRAMA   := Cliente.Suframa;
          ENDERECO  := Cliente.Endereco;
          NUM       := Cliente.Numero;
          COMPL     := Cliente.Complemento;
          BAIRRO    := Cliente.Bairro;

          // Alteração de nome para Participantes 2 e 4
          if ClienteLog.ClienteLogID > 0 then
          begin
            with Registro0175New do
            begin
              DT_ALT   := ClienteLog.DataAlteracao;
              NR_CAMPO := IntToStr(ClienteLog.NumeroCampo);
              CONT_ANT := ClienteLog.ConteudoAnterior;
            end;
          end;

           // Unidades de medida
          with Registro0190New do
          begin
            UNID  := strUNID[UnidadeMedida.UnidadeMedidaID];
            DESCR := UnidadeMedida.Descricao;
          end;

          with Registro0200New do
          begin
            COD_ITEM    := IntToStr(Item.ItemID);
            DESCR_ITEM  := Item.Descricao;
            COD_BARRA   := Item.CodigoBarras;
            UNID_INV    := strUNID[Item.UnidadeMedidaID];
            TIPO_ITEM   := tiOutras;
            COD_NCM     := item.NCM;
            COD_GEN     := Item.Genero;
            ALIQ_ICMS   := Item.Aliquota;

            with Registro0220New do
            begin
              UNID_CONV := strUNID[Item.UnidadeConversaoID];
              FAT_CONV  := Item.FatorConversao;
            end;
          end;

          // 10 Bens Imobilizados
          with Registro0300New do
          begin
            COD_IND_BEM := FormatFloat('000000', Item.ItemID);
            IDENT_MERC  := 1;
            DESCR_ITEM  := Item.Descricao;
            COD_PRNC    := '';
            COD_CTA     := '1'; //0500
            NR_PARC     := 10;
            // FILHO
            with Registro0305New do
            begin
              COD_CCUS  := '1'; //0600
              FUNC      :=  Item.Descricao;
              VIDA_UTIL := 60;
            end;
          end;

          with Registro0400New do
          begin
            COD_NAT   := IntToStr(NaturezaOperacao.CodigoNatureza);
            DESCR_NAT := NaturezaOperacao.Descricao;
          end;

          with Registro0450New do
          begin
            COD_INF := IntToStr(DocumentoFiscal.CodigoInformacao);
            TXT     := DocumentoFIscal.Texto;
          end;

          with Registro0460New do
          begin
            COD_OBS := IntToStr(LancamentoFiscal.CodigoObs);
            TXT     := LancamentoFiscal.Texto;
          end;

          with Registro0500New do
          begin
            DT_ALT      := ContaContabil.DataAlteracao;
            COD_NAT_CC  := IntToStr(ContaContabil.CodigoNaturezaCC);
            IND_CTA     := 'A';
            NIVEL       := IntToStr(ContaContabil.Nivel);
            COD_CTA     := ContaContabil.CodigoContaAnalitica;
            NOME_CTA    := ContaContabil.NomeContaAnalitica;
          end;

          with Registro0600New do
          begin
            DT_ALT    := Now;
            COD_CCUS  := IntToStr(0);
            CCUS      := 'CENTRO DE CUSTOS ';
          end;

        end;

        ACBrSPEDFiscal.SaveFileTXT;

        if FileExists(ACBrSPEDFiscal.Path + ACBrSPEDFiscal.Arquivo) then
          MemoLog.Lines.LoadFromFile(ACBrSPEDFiscal.Path + ACBrSPEDFiscal.Arquivo);
      end;
    end;
  finally
    FDSpedQuery.Close;
    Conhecimento.Free;
    Empresa.Free;
    Cliente.Free;
    ClienteLog.Free;
    Contador.Free;
    Item.Free;
    UnidadeMedida.Free;
    NaturezaOperacao.Free;
    DocumentoFiscal.Free;
    LancamentoFiscal.Free;
    ContaContabil.Free;
  end;

end;

end.
