object MainMenu: TMainMenu
  Left = 0
  Top = 0
  Caption = 'Main Menu'
  ClientHeight = 394
  ClientWidth = 591
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
  object ClockButton: TButton
    Left = 224
    Top = 96
    Width = 97
    Height = 25
    Caption = 'Clock Solitaire'
    TabOrder = 0
    OnClick = ClockButtonClick
  end
  object MontanaButton: TButton
    Left = 224
    Top = 160
    Width = 97
    Height = 25
    Caption = 'Montana Solitaire'
    TabOrder = 1
    OnClick = MontanaButtonClick
  end
end
