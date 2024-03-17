object DataModuleConexao: TDataModuleConexao
  Height = 91
  Width = 153
  object conexao: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=123'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 104
    Top = 16
  end
  object driver: TFDPhysPgDriverLink
    VendorHome = 'C:\Sped'
    Left = 40
    Top = 16
  end
end
