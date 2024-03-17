object DataModuleContaContabil: TDataModuleContaContabil
  Height = 133
  Width = 340
  object FDContaContabilQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from conta_contabil '
      'where conta_contabil_id = :conta_contabil_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CONTA_CONTABIL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDContaContabilQueryconta_contabil_id: TIntegerField
      FieldName = 'conta_contabil_id'
      Origin = 'conta_contabil_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDContaContabilQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDContaContabilQuerycodigo_natureza_cc: TIntegerField
      FieldName = 'codigo_natureza_cc'
      Origin = 'codigo_natureza_cc'
      ProviderFlags = [pfInUpdate]
    end
    object FDContaContabilQuerytipo_conta: TIntegerField
      FieldName = 'tipo_conta'
      Origin = 'tipo_conta'
      ProviderFlags = [pfInUpdate]
    end
    object FDContaContabilQuerynivel: TIntegerField
      FieldName = 'nivel'
      Origin = 'nivel'
      ProviderFlags = [pfInUpdate]
    end
    object FDContaContabilQuerycodigo_conta_analitica: TWideStringField
      FieldName = 'codigo_conta_analitica'
      Origin = 'codigo_conta_analitica'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDContaContabilQuerynome_conta_analitica: TWideStringField
      FieldName = 'nome_conta_analitica'
      Origin = 'nome_conta_analitica'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
  end
  object FDContaContabilDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from conta_contabil'
      'where conta_contabil_id = :conta_contabil_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'CONTA_CONTABIL_ID'
        ParamType = ptInput
      end>
  end
end
