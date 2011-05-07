object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 253
  ClientWidth = 363
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
    Left = 64
    Top = 145
    Width = 203
    Height = 13
    Caption = 'Zadaj do edit boxu 9-miestny binarny kod.'
  end
  object Button1: TButton
    Left = 240
    Top = 62
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 64
    Top = 64
    Width = 121
    Height = 21
    MaxLength = 9
    TabOrder = 1
  end
end
