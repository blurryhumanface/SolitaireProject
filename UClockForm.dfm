object ClockForm: TClockForm
  Left = 0
  Top = 0
  Caption = 'Clock Solitaire'
  ClientHeight = 819
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CHand1Image: TImage
    Left = 383
    Top = 151
    Width = 71
    Height = 96
    OnClick = CHand1ImageClick
  end
  object CHand2Image: TImage
    Left = 460
    Top = 205
    Width = 71
    Height = 96
    OnClick = CHand2ImageClick
  end
  object CHand13Image: TImage
    Left = 264
    Top = 259
    Width = 71
    Height = 96
    OnClick = CHand13ImageClick
  end
  object CHand14Image: TImage
    Left = 341
    Top = 259
    Width = 71
    Height = 96
    OnClick = CHand14ImageClick
  end
  object CHand3Image: TImage
    Left = 537
    Top = 361
    Width = 71
    Height = 96
    OnClick = CHand3ImageClick
  end
  object CHand4Image: TImage
    Left = 460
    Top = 422
    Width = 71
    Height = 96
    OnClick = CHand4ImageClick
  end
  object CHand5Image: TImage
    Left = 383
    Top = 474
    Width = 71
    Height = 96
    OnClick = CHand5ImageClick
  end
  object CHand6Image: TImage
    Left = 306
    Top = 501
    Width = 71
    Height = 96
    OnClick = CHand6ImageClick
  end
  object CHand7Image: TImage
    Left = 229
    Top = 474
    Width = 71
    Height = 96
    OnClick = CHand7ImageClick
  end
  object CHand8Image: TImage
    Left = 152
    Top = 422
    Width = 71
    Height = 96
    OnClick = CHand8ImageClick
  end
  object CHand9Image: TImage
    Left = 75
    Top = 361
    Width = 71
    Height = 96
    OnClick = CHand9ImageClick
  end
  object CHand10Image: TImage
    Left = 152
    Top = 205
    Width = 71
    Height = 96
    OnClick = CHand10ImageClick
  end
  object CHand11Image: TImage
    Left = 229
    Top = 151
    Width = 71
    Height = 96
    OnClick = CHand11ImageClick
  end
  object CHand12Image: TImage
    Left = 306
    Top = 119
    Width = 71
    Height = 96
    OnClick = CHand12ImageClick
  end
  object CHand15Image: TImage
    Left = 264
    Top = 361
    Width = 71
    Height = 96
    OnClick = CHand15ImageClick
  end
  object CHand16Image: TImage
    Left = 341
    Top = 361
    Width = 71
    Height = 96
    OnClick = CHand16ImageClick
  end
  object CHand28Image: TImage
    Left = 306
    Top = 17
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand17Image: TImage
    Left = 383
    Top = 49
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand18Image: TImage
    Left = 460
    Top = 103
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand19Image: TImage
    Left = 537
    Top = 259
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand20Image: TImage
    Left = 460
    Top = 524
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand21Image: TImage
    Left = 383
    Top = 576
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand22Image: TImage
    Left = 306
    Top = 603
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand23Image: TImage
    Left = 229
    Top = 576
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand24Image: TImage
    Left = 152
    Top = 524
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand25Image: TImage
    Left = 75
    Top = 259
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand26Image: TImage
    Left = 152
    Top = 103
    Width = 71
    Height = 96
    Enabled = False
  end
  object CHand27Image: TImage
    Left = 229
    Top = 49
    Width = 71
    Height = 96
    Enabled = False
  end
  object MovesEdit: TEdit
    Left = 832
    Top = 44
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = 'no. of moves: 0'
  end
  object NewGameButton: TButton
    Left = 832
    Top = 116
    Width = 121
    Height = 25
    Caption = 'New Game'
    TabOrder = 1
    OnClick = NewGameButtonClick
  end
  object MainMenuButton: TButton
    Left = 832
    Top = 182
    Width = 121
    Height = 25
    Caption = 'Main Menu'
    TabOrder = 2
    OnClick = MainMenuButtonClick
  end
  object InstructionsButton: TButton
    Left = 832
    Top = 244
    Width = 121
    Height = 25
    Caption = 'Instructions'
    TabOrder = 3
    OnClick = InstructionsButtonClick
  end
end
