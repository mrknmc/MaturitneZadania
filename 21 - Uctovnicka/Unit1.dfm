object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 362
  ClientWidth = 399
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
    Top = 21
    Width = 78
    Height = 13
    Caption = 'Pocet mesiacov:'
  end
  object Label2: TLabel
    Left = 256
    Top = 21
    Width = 60
    Height = 13
    Caption = 'Pocet hodin:'
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 61
    Height = 13
    Caption = 'Hruba mzda:'
  end
  object Label4: TLabel
    Left = 256
    Top = 104
    Width = 56
    Height = 13
    Caption = 'Cista mzda:'
  end
  object Edit2: TEdit
    Left = 248
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 32
    Top = 123
    Width = 121
    Height = 217
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 248
    Top = 123
    Width = 121
    Height = 217
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object TrackBar1: TTrackBar
    Left = 32
    Top = 40
    Width = 137
    Height = 45
    Max = 12
    Min = 1
    Position = 1
    TabOrder = 3
  end
end
