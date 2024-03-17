object DataModuleDocumentoFiscal: TDataModuleDocumentoFiscal
  Height = 125
  Width = 336
  object FDDocumentoFiscalQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from documento_fiscal '
      'where documento_fiscal_id = :documento_fiscal_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'DOCUMENTO_FISCAL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDDocumentoFiscalQuerydocumento_fiscal_id: TIntegerField
      FieldName = 'documento_fiscal_id'
      Origin = 'documento_fiscal_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDDocumentoFiscalQuerycodigo_informacao: TIntegerField
      FieldName = 'codigo_informacao'
      Origin = 'codigo_informacao'
      ProviderFlags = [pfInUpdate]
    end
    object FDDocumentoFiscalQuerytexto: TWideStringField
      FieldName = 'texto'
      Origin = 'texto'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDDocumentoFiscalQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDDocumentoFiscalDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from documento_fiscal'
      'where documento_fiscal_id = :documento_fiscal_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'DOCUMENTO_FISCAL_ID'
        ParamType = ptInput
      end>
  end
end
