object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 188
  ClientWidth = 373
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
    Width = 47
    Height = 13
    Caption = 'Kluc sifry:'
  end
  object TrackBar1: TTrackBar
    Left = 24
    Top = 40
    Width = 150
    Height = 45
    Min = 1
    Position = 1
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 40
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
