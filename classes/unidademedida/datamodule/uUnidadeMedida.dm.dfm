object DataModuleUnidadeMedida: TDataModuleUnidadeMedida
  Height = 147
  Width = 306
  object FDUnidadeMedidaDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from unidade_medida'
      'where unidade_medida_id = :unidade_medida_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'UNIDADE_MEDIDA_ID'
        ParamType = ptInput
      end>
  end
  object FDUnidadeMedidaQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from unidade_medida '
      'where unidade_medida_id = :unidade_medida_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'UNIDADE_MEDIDA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDUnidadeMedidaQueryunidade_medida_id: TIntegerField
      FieldName = 'unidade_medida_id'
      Origin = 'unidade_medida_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDUnidadeMedidaQuerydescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDUnidadeMedidaQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
end
