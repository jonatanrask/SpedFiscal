object DataModuleCliente: TDataModuleCliente
  Height = 115
  Width = 266
  object FDClienteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from cliente '
      'where cliente_id = :cliente_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CLIENTE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDClienteQuerycliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDClienteQuerynome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object FDClienteQuerycodigo_pais: TIntegerField
      FieldName = 'codigo_pais'
      Origin = 'codigo_pais'
      ProviderFlags = [pfInWhere]
    end
    object FDClienteQuerycnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      ProviderFlags = [pfInWhere]
      Size = 14
    end
    object FDClienteQuerycpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInWhere]
      Size = 11
    end
    object FDClienteQuerycodigo_municipal: TWideStringField
      FieldName = 'codigo_municipal'
      Origin = 'codigo_municipal'
      ProviderFlags = [pfInWhere]
    end
    object FDClienteQueryie: TWideStringField
      FieldName = 'ie'
      Origin = 'ie'
      ProviderFlags = [pfInWhere]
    end
    object FDClienteQuerysuframa: TWideStringField
      FieldName = 'suframa'
      Origin = 'suframa'
      ProviderFlags = [pfInWhere]
    end
    object FDClienteQueryendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object FDClienteQuerynumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
    object FDClienteQuerycomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object FDClienteQuerybairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object FDClienteQueryconta_contabil_id: TIntegerField
      FieldName = 'conta_contabil_id'
      Origin = 'conta_contabil_id'
      ProviderFlags = [pfInWhere]
    end
    object FDClienteQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDClienteDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from cliente'
      'where cliente_id = :cliente_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'CLIENTE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
