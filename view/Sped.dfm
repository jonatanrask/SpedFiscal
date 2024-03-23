object FormSped: TFormSped
  Left = 0
  Top = 0
  Caption = 'Sped'
  ClientHeight = 562
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 73
    TabOrder = 0
    object LabelAno: TLabel
      Left = 792
      Top = 5
      Width = 80
      Height = 15
      Caption = 'Ano Refer'#234'ncia'
    end
    object LabeledEditArquivo: TLabeledEdit
      Left = 32
      Top = 26
      Width = 177
      Height = 23
      EditLabel.Width = 95
      EditLabel.Height = 15
      EditLabel.Caption = 'Nome do Arquivo'
      TabOrder = 0
      Text = 'ACBrSpedFiscal.txt'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 792
      Top = 26
      Width = 186
      Height = 23
      Date = 45374.000000000000000000
      Time = 0.408871365740196800
      TabOrder = 1
    end
  end
  object MemoLog: TMemo
    Left = 8
    Top = 104
    Width = 1025
    Height = 417
    Lines.Strings = (
      'MemoLog')
    TabOrder = 1
  end
  object ButtonGerar: TButton
    Left = 8
    Top = 530
    Width = 89
    Height = 25
    Caption = 'Gerar'
    TabOrder = 2
    OnClick = ButtonGerarClick
  end
  object ACBrSPEDFiscal: TACBrSPEDFiscal
    Path = 'C:\Sped\'
    Delimitador = '|'
    ReplaceDelimitador = False
    TrimString = True
    CurMascara = '#0.00'
    Left = 488
    Top = 16
  end
  object FDSpedQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from conhecimento ')
    Left = 384
    Top = 16
    object FDSpedQueryconhecimento_id: TIntegerField
      FieldName = 'conhecimento_id'
      Origin = 'conhecimento_id'
      ProviderFlags = []
    end
    object FDSpedQuerycte: TWideStringField
      FieldName = 'cte'
      Origin = 'cte'
      ProviderFlags = [pfInWhere, pfInKey]
      Size = 255
    end
    object FDSpedQueryempresa_id: TIntegerField
      FieldName = 'empresa_id'
      Origin = 'empresa_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDSpedQuerycliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDSpedQueryitem_id: TIntegerField
      FieldName = 'item_id'
      Origin = 'item_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDSpedQuerydocumento_fiscal_id: TIntegerField
      FieldName = 'documento_fiscal_id'
      Origin = 'documento_fiscal_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDSpedQuerylancamento_fiscal_id: TIntegerField
      FieldName = 'lancamento_fiscal_id'
      Origin = 'lancamento_fiscal_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDSpedQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
end
