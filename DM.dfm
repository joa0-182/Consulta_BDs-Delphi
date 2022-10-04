object DM2: TDM2
  OldCreateOrder = False
  Height = 306
  Width = 409
  object conexao: TFDConnection
    Params.Strings = (
      'Database=Consulta'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object sqlLogin: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT Usuario, Senha FROM login'
      ' WHERE Usuario = :usuario and senha = :senha')
    Left = 120
    Top = 24
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsSqlLogin: TDataSource
    DataSet = sqlLogin
    Left = 200
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 320
    Top = 216
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\Jo'#227'o Pedro\Desktop\Consulta-BDs_Delphi\libmysql.dll'
    Left = 320
    Top = 160
  end
  object sqlConsultaD: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM cliente')
    Left = 120
    Top = 96
    ParamData = <
      item
        Name = 'parametroConsulta'
      end>
  end
  object dsSqlConsulta: TDataSource
    DataSet = sqlConsultaD
    Left = 200
    Top = 96
  end
end
