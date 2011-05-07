object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 427
  ClientWidth = 549
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
    Left = 40
    Top = 344
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 318
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Generate'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 40
    Top = 104
    Width = 449
    Height = 193
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button2: TButton
    Left = 414
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Check'
    TabOrder = 3
    OnClick = Button2Click
  end
end
