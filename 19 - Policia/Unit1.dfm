object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 255
  ClientWidth = 388
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
    Top = 29
    Width = 52
    Height = 13
    Caption = 'Zadaj '#352'PZ:'
  end
  object Label2: TLabel
    Left = 104
    Top = 112
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 104
    Top = 160
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 32
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 46
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
