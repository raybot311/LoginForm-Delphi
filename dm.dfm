object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 316
  Width = 428
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=userpwd;Data Source=IMAGINE-PC\SQLEXPRE' +
      'SS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object tLogin: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'LoginTable'
    Left = 48
    Top = 192
  end
  object dsLogin: TDataSource
    DataSet = tLogin
    Left = 144
    Top = 192
  end
  object qLoginTable: TADOQuery
    Connection = ADOConnection1
    DataSource = dsLogin
    Parameters = <>
    Left = 48
    Top = 112
  end
  object qUsersOrdered: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM LoginTable ORDER BY username;')
    Left = 144
    Top = 120
    object qUsersOrderedid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qUsersOrderedusername: TWideStringField
      FieldName = 'username'
      Size = 25
    end
    object qUsersOrderedpassword: TWideStringField
      FieldName = 'password'
      Size = 25
    end
    object qUsersOrderedpermission: TBooleanField
      FieldName = 'permission'
    end
  end
end
