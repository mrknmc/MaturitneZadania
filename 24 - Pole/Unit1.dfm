object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 366
  ClientWidth = 283
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
    Left = 17
    Top = 29
    Width = 32
    Height = 13
    Caption = 'Index:'
  end
  object Label2: TLabel
    Left = 184
    Top = 29
    Width = 26
    Height = 13
    Caption = 'Cislo:'
  end
  object Edit2: TEdit
    Left = 184
    Top = 48
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 17
    Top = 168
    Width = 248
    Height = 177
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object TrackBar1: TTrackBar
    Left = 17
    Top = 48
    Width = 112
    Height = 41
    Min = 1
    Position = 1
    TabOrder = 3
  end
  object Button2: TButton
    Left = 168
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 4
    OnClick = Button2Click
  end
end
