object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 312
  ClientWidth = 469
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
  object Image1: TImage
    Left = 26
    Top = 40
    Width = 400
    Height = 200
  end
  object Button1: TButton
    Left = 56
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Vygeneruj'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Precitaj'
    TabOrder = 1
    OnClick = Button2Click
  end
end
