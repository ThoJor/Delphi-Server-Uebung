object FrmClient: TFrmClient
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 291
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object EdtIP: TEdit
    Left = 240
    Top = 48
    Width = 121
    Height = 24
    TabOrder = 0
    Text = '127.0.0.1'
  end
  object BtnStart: TButton
    Left = 256
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = BtnStartClick
  end
  object BtnClose: TButton
    Left = 8
    Top = 258
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 2
    OnClick = BtnCloseClick
  end
  object EdtPort: TEdit
    Left = 240
    Top = 78
    Width = 121
    Height = 24
    TabOrder = 3
    Text = '5000'
  end
  object CSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 16
    Top = 16
  end
end
