object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 169
  ClientWidth = 348
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
    Left = 64
    Top = 21
    Width = 36
    Height = 13
    Caption = 'Vas tip:'
  end
  object Label2: TLabel
    Left = 40
    Top = 112
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 216
    Top = 38
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
end
