object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 262
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 29
    Width = 73
    Height = 13
    Caption = 'Rok narodenia:'
  end
  object Label2: TLabel
    Left = 56
    Top = 128
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 48
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 208
    Top = 46
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
