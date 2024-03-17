object DataModuleLancamentoFiscal: TDataModuleLancamentoFiscal
  Height = 102
  Width = 282
  object FDLancamentoFiscalQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from lancamento_fiscal '
      'where lancamento_fiscal_id = :lancamento_fiscal_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'LANCAMENTO_FISCAL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDLancamentoFiscalQuerylancamento_fiscal_id: TIntegerField
      FieldName = 'lancamento_fiscal_id'
      Origin = 'lancamento_fiscal_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDLancamentoFiscalQuerycodigo_obs: TIntegerField
      FieldName = 'codigo_obs'
      Origin = 'codigo_obs'
      ProviderFlags = [pfInUpdate]
    end
    object FDLancamentoFiscalQuerytexto: TWideStringField
      FieldName = 'texto'
      Origin = 'texto'
      ProviderFlags = [pfInUpdate]
      Size = 255
    end
    object FDLancamentoFiscalQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = []
    end
  end
  object FDLancamentoFiscalDeleteQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'delete'
      'from lancamento_fiscal'
      'where lancamento_fiscal_id = :lancamento_fiscal_id')
    Left = 168
    Top = 25
    ParamData = <
      item
        Name = 'LANCAMENTO_FISCAL_ID'
        ParamType = ptInput
      end>
  end
end
