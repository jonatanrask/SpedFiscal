object DataModuleBem: TDataModuleBem
  Height = 112
  Width = 257
  object FDBemQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from bem '
      'where bem_id = :bem_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'BEM_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDBemQuerybem_id: TIntegerField
      FieldName = 'bem_id'
      Origin = 'bem_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDBemQuerycentro_custo_id: TIntegerField
      FieldName = 'centro_custo_id'
      Origin = 'centro_custo_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDBemQueryidentificador: TWideStringField
      FieldName = 'identificador'
      Origin = 'identificador'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDBemQuerydescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDBemQuerycodigoprincipal: TWideStringField
      FieldName = 'codigoprincipal'
      Origin = 'codigoprincipal'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDBemQuerycodigo_cta: TWideStringField
      FieldName = 'codigo_cta'
      Origin = 'codigo_cta'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDBemQuerynumero_parcelas: TIntegerField
      FieldName = 'numero_parcelas'
      Origin = 'numero_parcelas'
      ProviderFlags = [pfInUpdate]
    end
    object FDBemQuerycentro_custo: TWideStringField
      FieldName = 'centro_custo'
      Origin = 'centro_custo'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDBemQueryfuncao: TWideStringField
      FieldName = 'funcao'
      Origin = 'funcao'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDBemQueryvida_util: TIntegerField
      FieldName = 'vida_util'
      Origin = 'vida_util'
      ProviderFlags = [pfInUpdate]
    end
    object FDBemQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDBemDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from bem'
      'where bem_id = :bem_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'BEM_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
