object instructionsForm: TinstructionsForm
  Left = 0
  Top = 0
  Caption = 'Instructions'
  ClientHeight = 479
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object instructionsMemo: TMemo
    Left = 16
    Top = 32
    Width = 553
    Height = 401
    Enabled = False
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object backButton: TButton
    Left = 600
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Back to game'
    TabOrder = 1
    OnClick = backButtonClick
  end
end
