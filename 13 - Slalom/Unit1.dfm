object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 136
  ClientWidth = 426
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
    Top = 24
    Width = 147
    Height = 13
    Caption = 'Diskvalifikovany v prvom kole: '
  end
  object Label2: TLabel
    Left = 42
    Top = 43
    Width = 153
    Height = 13
    Caption = 'Diskvalifikovany v druhom kole: '
  end
  object Label3: TLabel
    Left = 68
    Top = 62
    Width = 127
    Height = 13
    Caption = 'Najlepsi cas v prvom kole: '
  end
  object Label4: TLabel
    Left = 62
    Top = 81
    Width = 133
    Height = 13
    Caption = 'Najlepsi cas v druhom kole: '
  end
  object Label5: TLabel
    Left = 93
    Top = 100
    Width = 102
    Height = 13
    Caption = 'Najlepsi celkovy cas: '
  end
  object Button1: TButton
    Left = 288
    Top = 57
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
end
