object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 462
  ClientWidth = 289
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
    Left = 24
    Top = 21
    Width = 32
    Height = 13
    Caption = 'Index:'
  end
  object Label2: TLabel
    Left = 104
    Top = 23
    Width = 45
    Height = 13
    Caption = 'Hodnota:'
  end
  object Label3: TLabel
    Left = 24
    Top = 424
    Width = 241
    Height = 13
  end
  object Button1: TButton
    Left = 97
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TrackBar1: TTrackBar
    Left = 24
    Top = 40
    Width = 45
    Height = 345
    Max = 20
    Min = 1
    Orientation = trVertical
    Position = 1
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 97
    Top = 42
    Width = 168
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 97
    Top = 120
    Width = 168
    Height = 282
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Button2: TButton
    Left = 190
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Check'
    TabOrder = 4
    OnClick = Button2Click
  end
end
