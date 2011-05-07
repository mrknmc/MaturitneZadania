object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 426
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 37
    Width = 32
    Height = 13
    Caption = 'V'#253#353'ka:'
  end
  object Label2: TLabel
    Left = 200
    Top = 37
    Width = 47
    Height = 13
    Caption = 'Percento:'
  end
  object Label3: TLabel
    Left = 58
    Top = 376
    Width = 79
    Height = 13
    Caption = 'Po'#269'et v'#253'skokov:'
  end
  object Edit1: TEdit
    Left = 40
    Top = 56
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 56
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 344
    Top = 54
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 40
    Top = 120
    Width = 379
    Height = 225
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
