object DataModuleCentroCusto: TDataModuleCentroCusto
  Height = 98
  Width = 247
  object FDCentroCustoQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from centro_custo '
      'where centro_custo_id = :centro_custo_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CENTRO_CUSTO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDCentroCustoQuerycentro_custo_id: TIntegerField
      FieldName = 'centro_custo_id'
      Origin = 'centro_custo_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDCentroCustoQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
    object FDCentroCustoQuerycodigo_centro_custos: TWideStringField
      FieldName = 'codigo_centro_custos'
      Origin = 'codigo_centro_custos'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDCentroCustoQuerynome_centro_custos: TWideStringField
      FieldName = 'nome_centro_custos'
      Origin = 'nome_centro_custos'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object FDCentroCustoDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from centro_custo '
      'where centro_custo_id = :centro_custo_id ')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'CENTRO_CUSTO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
