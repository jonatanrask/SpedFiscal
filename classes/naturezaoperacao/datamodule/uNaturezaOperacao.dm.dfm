object DataModuleNaturezaOperacao: TDataModuleNaturezaOperacao
  Height = 134
  Width = 295
  object FDNaturezaOperacaoDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from natureza_operacao'
      'where natureza_operacao_id = :natureza_operacao_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'NATUREZA_OPERACAO_ID'
        ParamType = ptInput
      end>
  end
  object FDNaturezaOperacaoQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from natureza_operacao '
      'where natureza_operacao_id = :natureza_operacao_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'NATUREZA_OPERACAO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDNaturezaOperacaoQuerynatureza_operacao_id: TIntegerField
      FieldName = 'natureza_operacao_id'
      Origin = 'natureza_operacao_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDNaturezaOperacaoQuerycodigo_natureza: TIntegerField
      FieldName = 'codigo_natureza'
      Origin = 'codigo_natureza'
      ProviderFlags = [pfInUpdate]
    end
    object FDNaturezaOperacaoQuerydescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDNaturezaOperacaoQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
end
