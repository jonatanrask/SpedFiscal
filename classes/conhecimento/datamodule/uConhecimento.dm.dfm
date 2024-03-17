object DataModuleConhecimento: TDataModuleConhecimento
  Height = 112
  Width = 353
  object FDConhecimentoQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from conhecimento '
      'where conhecimento_id = :conhecimento_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CONHECIMENTO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDConhecimentoQueryconhecimento_id: TIntegerField
      FieldName = 'conhecimento_id'
      Origin = 'conhecimento_id'
      ProviderFlags = []
    end
    object FDConhecimentoQuerycte: TWideStringField
      FieldName = 'cte'
      Origin = 'cte'
      ProviderFlags = [pfInWhere, pfInKey]
      Size = 255
    end
    object FDConhecimentoQueryempresa_id: TIntegerField
      FieldName = 'empresa_id'
      Origin = 'empresa_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDConhecimentoQuerycliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDConhecimentoQueryitem_id: TIntegerField
      FieldName = 'item_id'
      Origin = 'item_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDConhecimentoQuerydocumento_fiscal_id: TIntegerField
      FieldName = 'documento_fiscal_id'
      Origin = 'documento_fiscal_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDConhecimentoQuerylancamento_fiscal_id: TIntegerField
      FieldName = 'lancamento_fiscal_id'
      Origin = 'lancamento_fiscal_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDConhecimentoQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDConhecimentoDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from conhecimento'
      'where conhecimento_id = :conhecimento_id')
    Left = 224
    Top = 16
    ParamData = <
      item
        Name = 'CONHECIMENTO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
