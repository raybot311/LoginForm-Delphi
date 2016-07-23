object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 211
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 48
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label2: TLabel
    Left = 80
    Top = 91
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edusername: TEdit
    Left = 160
    Top = 48
    Width = 121
    Height = 21
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TextHint = 'user name'
  end
  object edpassword: TEdit
    Left = 160
    Top = 88
    Width = 121
    Height = 21
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 1
    TextHint = 'password'
  end
  object BtnLogin: TButton
    Left = 328
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = BtnLoginClick
  end
  object CheckBox1: TCheckBox
    Left = 160
    Top = 128
    Width = 97
    Height = 17
    Caption = 'show password'
    TabOrder = 3
    OnClick = CheckBox1Click
  end
end
