object DataModuleContador: TDataModuleContador
  Height = 103
  Width = 268
  object FDContadorQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from contador '
      'where contador_id = :contador_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CONTADOR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDContadorQuerycontador_id: TIntegerField
      FieldName = 'contador_id'
      Origin = 'contador_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDContadorQuerynome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDContadorQuerycpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object FDContadorQuerycrc: TWideStringField
      FieldName = 'crc'
      Origin = 'crc'
      ProviderFlags = [pfInUpdate]
    end
    object FDContadorQuerycnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object FDContadorQuerycep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object FDContadorQueryendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDContadorQuerynumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object FDContadorQuerycomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDContadorQuerybairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDContadorQueryfax: TWideStringField
      FieldName = 'fax'
      Origin = 'fax'
      ProviderFlags = [pfInUpdate]
    end
    object FDContadorQueryemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDContadorQuerycodigo_municipal: TWideStringField
      FieldName = 'codigo_municipal'
      Origin = 'codigo_municipal'
      ProviderFlags = [pfInUpdate]
    end
    object FDContadorQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDContadorDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from contador'
      'where contador_id = :contador_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'CONTADOR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
