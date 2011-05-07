object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 313
  ClientWidth = 249
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
    Left = 56
    Top = 21
    Width = 55
    Height = 13
    Caption = 'Pocet prac:'
  end
  object Label2: TLabel
    Left = 56
    Top = 85
    Width = 41
    Height = 13
    Caption = 'Znamka:'
  end
  object Label3: TLabel
    Left = 46
    Top = 168
    Width = 19
    Height = 13
    Caption = '1: 0'
  end
  object Label4: TLabel
    Left = 46
    Top = 187
    Width = 19
    Height = 13
    Caption = '2: 0'
  end
  object Label5: TLabel
    Left = 46
    Top = 206
    Width = 19
    Height = 13
    Caption = '3: 0'
  end
  object Label6: TLabel
    Left = 46
    Top = 225
    Width = 19
    Height = 13
    Caption = '4: 0'
  end
  object Label7: TLabel
    Left = 46
    Top = 244
    Width = 19
    Height = 13
    Caption = '5: 0'
  end
  object Label8: TLabel
    Left = 46
    Top = 272
    Width = 49
    Height = 13
    Caption = 'Priemer: 0'
  end
  object Edit1: TEdit
    Left = 46
    Top = 40
    Width = 75
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 150
    Top = 38
    Width = 43
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 46
    Top = 104
    Width = 75
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 150
    Top = 102
    Width = 43
    Height = 25
    Caption = 'OK'
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
