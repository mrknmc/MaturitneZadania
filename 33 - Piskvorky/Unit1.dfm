object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 366
  ClientWidth = 332
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
    Left = 16
    Top = 16
    Width = 302
    Height = 302
    OnMouseDown = Image1MouseDown
  end
  object Button1: TButton
    Left = 120
    Top = 333
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
  end
end
