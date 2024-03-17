object DataModuleItem: TDataModuleItem
  Height = 168
  Width = 289
  object FDItemQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from item '
      'where item_id = :item_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'ITEM_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDItemQueryitem_id: TIntegerField
      FieldName = 'item_id'
      Origin = 'item_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDItemQuerydescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDItemQuerycodigo_barras: TWideStringField
      FieldName = 'codigo_barras'
      Origin = 'codigo_barras'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDItemQueryunidade_medida_id: TIntegerField
      FieldName = 'unidade_medida_id'
      Origin = 'unidade_medida_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDItemQuerytipo_item: TIntegerField
      FieldName = 'tipo_item'
      Origin = 'tipo_item'
      ProviderFlags = [pfInUpdate]
    end
    object FDItemQueryncm: TWideStringField
      FieldName = 'ncm'
      Origin = 'ncm'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDItemQuerygenero: TWideStringField
      FieldName = 'genero'
      Origin = 'genero'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDItemQueryaliquota: TFMTBCDField
      FieldName = 'aliquota'
      Origin = 'aliquota'
      ProviderFlags = [pfInUpdate]
      Precision = 64
      Size = 0
    end
    object FDItemQueryunidade_conversao_id: TIntegerField
      FieldName = 'unidade_conversao_id'
      Origin = 'unidade_conversao_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDItemQueryfator_conversao: TFMTBCDField
      FieldName = 'fator_conversao'
      Origin = 'fator_conversao'
      ProviderFlags = [pfInUpdate]
      Precision = 64
      Size = 0
    end
    object FDItemQuerycodigo_combustivel: TWideStringField
      FieldName = 'codigo_combustivel'
      Origin = 'codigo_combustivel'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDItemQuerynatureza_operacao_id: TIntegerField
      FieldName = 'natureza_operacao_id'
      Origin = 'natureza_operacao_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDItemQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDItemDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from item'
      'where item_id = :item_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'ITEM_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
