object DataModuleEmpresa: TDataModuleEmpresa
  Height = 95
  Width = 265
  object FDEmpresaQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from empresa '
      'where empresa_id = :empresa_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'EMPRESA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDEmpresaQueryempresa_id: TIntegerField
      FieldName = 'empresa_id'
      Origin = 'empresa_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDEmpresaQuerycliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQuerycodigo_versao: TIntegerField
      FieldName = 'codigo_versao'
      Origin = 'codigo_versao'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQuerynome_fantasia: TWideStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQuerycodigo_financeiro: TIntegerField
      FieldName = 'codigo_financeiro'
      Origin = 'codigo_financeiro'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQuerynome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQuerycep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object FDEmpresaQueryendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQuerynumero: TWideStringField
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object FDEmpresaQuerycomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQuerybairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQueryfone: TWideStringField
      FieldName = 'fone'
      Origin = 'fone'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQueryfax: TWideStringField
      FieldName = 'fax'
      Origin = 'fax'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQueryemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQuerycnpj: TWideStringField
      FieldName = 'cnpj'
      Origin = 'cnpj'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object FDEmpresaQuerycpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object FDEmpresaQueryuf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object FDEmpresaQueryie: TWideStringField
      FieldName = 'ie'
      Origin = 'ie'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQuerycodigo_municipal: TWideStringField
      FieldName = 'codigo_municipal'
      Origin = 'codigo_municipal'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQuerysuframa: TWideStringField
      FieldName = 'suframa'
      Origin = 'suframa'
      ProviderFlags = [pfInUpdate]
    end
    object FDEmpresaQueryperfil: TWideStringField
      FieldName = 'perfil'
      Origin = 'perfil'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQueryatividade: TWideStringField
      FieldName = 'atividade'
      Origin = 'atividade'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDEmpresaQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDEmpresaDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from empresa'
      'where empresa_id = :empresa_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'EMPRESA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
