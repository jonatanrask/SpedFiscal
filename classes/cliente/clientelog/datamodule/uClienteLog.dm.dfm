object DataModuleClienteLog: TDataModuleClienteLog
  Height = 126
  Width = 226
  object FDClienteLogQuery: TFDQuery
    Connection = DataModuleConexao.conexao
    SQL.Strings = (
      'select * '
      'from cliente_log '
      'where cliente_log_id = :cliente_log_id ')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'CLIENTE_LOG_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDClienteLogQuerycliente_log_id: TIntegerField
      FieldName = 'cliente_log_id'
      Origin = 'cliente_log_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDClienteLogQuerycliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'cliente_id'
    end
    object FDClienteLogQuerydata_alteracao: TSQLTimeStampField
      FieldName = 'data_alteracao'
      Origin = 'data_alteracao'
      ProviderFlags = [pfInUpdate]
    end
    object FDClienteLogQuerynumero_campo: TIntegerField
      FieldName = 'numero_campo'
      Origin = 'numero_campo'
    end
    object FDClienteLogQueryconteudo_anterior: TWideStringField
      FieldName = 'conteudo_anterior'
      Origin = 'conteudo_anterior'
      Size = 255
    end
  end
end
