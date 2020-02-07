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
    Left = 232
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Clock Solitaire'
    TabOrder = 0
    OnClick = ClockButtonClick
  end
end
