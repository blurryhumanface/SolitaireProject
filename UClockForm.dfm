object ClockForm: TClockForm
  Left = 229
  Top = 154
  Caption = 'Clock Solitaire'
  ClientHeight = 694
  ClientWidth = 1029
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
    Top = 71
    Width = 71
    Height = 96
    OnClick = CHand1ImageClick
  end
  object CHand2Image: TImage
    Left = 460
    Top = 126
    Width = 71
    Height = 96
    OnClick = CHand2ImageClick
  end
  object CHand13Image: TImage
    Left = 264
    Top = 182
    Width = 71
    Height = 96
  end
  object CHand14Image: TImage
    Left = 341
    Top = 182
    Width = 71
    Height = 96
    OnClick = CHand14ImageClick
  end
  object CHand3Image: TImage
    Left = 537
    Top = 230
    Width = 71
    Height = 96
    OnClick = CHand3ImageClick
  end
  object CHand4Image: TImage
    Left = 460
    Top = 345
    Width = 71
    Height = 96
  end
  object CHand5Image: TImage
    Left = 383
    Top = 397
    Width = 71
    Height = 96
  end
  object CHand6Image: TImage
    Left = 306
    Top = 424
    Width = 71
    Height = 96
  end
  object CHand7Image: TImage
    Left = 229
    Top = 397
    Width = 71
    Height = 96
  end
  object CHand8Image: TImage
    Left = 152
    Top = 345
    Width = 71
    Height = 96
  end
  object CHand9Image: TImage
    Left = 75
    Top = 230
    Width = 71
    Height = 96
  end
  object CHand10Image: TImage
    Left = 152
    Top = 126
    Width = 71
    Height = 96
  end
  object CHand11Image: TImage
    Left = 229
    Top = 74
    Width = 71
    Height = 96
  end
  object CHand12Image: TImage
    Left = 306
    Top = 40
    Width = 71
    Height = 96
  end
  object CHand15Image: TImage
    Left = 264
    Top = 284
    Width = 71
    Height = 96
  end
  object CHand16Image: TImage
    Left = 341
    Top = 284
    Width = 71
    Height = 96
  end
  object CHand13Button: TButton
    Left = 264
    Top = 182
    Width = 65
    Height = 17
    Caption = 'CHand13'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = CHand13ButtonClick
  end
  object CHand14Button: TButton
    Left = 341
    Top = 182
    Width = 65
    Height = 17
    Caption = 'CHand14'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object CHand16Button: TButton
    Left = 341
    Top = 284
    Width = 65
    Height = 17
    Caption = 'CHand16'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = CHand16ButtonClick
  end
  object CHand15Button: TButton
    Left = 264
    Top = 284
    Width = 65
    Height = 17
    Caption = 'CHand15'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = CHand15ButtonClick
  end
  object CHand12Button: TButton
    Left = 306
    Top = 40
    Width = 65
    Height = 17
    Caption = 'CHand12'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = CHand12ButtonClick
  end
  object CHand3Button: TButton
    Left = 537
    Top = 230
    Width = 65
    Height = 17
    Caption = 'CHand3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = CHand3ButtonClick
  end
  object CHand4Button: TButton
    Left = 460
    Top = 345
    Width = 65
    Height = 17
    Caption = 'CHand4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = CHand4ButtonClick
  end
  object CHand5Button: TButton
    Left = 383
    Top = 397
    Width = 65
    Height = 17
    Caption = 'CHand5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = CHand5ButtonClick
  end
  object CHand6Button: TButton
    Left = 306
    Top = 424
    Width = 65
    Height = 17
    Caption = 'CHand6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = CHand6ButtonClick
  end
  object CHand7Button: TButton
    Left = 229
    Top = 397
    Width = 65
    Height = 17
    Caption = 'CHand7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = CHand7ButtonClick
  end
  object CHand8Button: TButton
    Left = 152
    Top = 342
    Width = 65
    Height = 17
    Caption = 'CHand8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = CHand8ButtonClick
  end
  object CHand9Button: TButton
    Left = 75
    Top = 230
    Width = 65
    Height = 17
    Caption = 'CHand9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = CHand9ButtonClick
  end
  object CHand10Button: TButton
    Left = 152
    Top = 126
    Width = 65
    Height = 17
    Caption = 'CHand10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = CHand10ButtonClick
  end
  object CHand11Button: TButton
    Left = 229
    Top = 71
    Width = 65
    Height = 17
    Caption = 'CHand11'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = CHand11ButtonClick
  end
  object CHand28Button: TButton
    Left = 306
    Top = 17
    Width = 65
    Height = 17
    Caption = 'CHand28'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object CHand17Button: TButton
    Left = 383
    Top = 48
    Width = 65
    Height = 17
    Caption = 'CHand17'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object CHand18Button: TButton
    Left = 460
    Top = 103
    Width = 65
    Height = 17
    Caption = 'CHand18'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object CHand19Button: TButton
    Left = 614
    Top = 230
    Width = 65
    Height = 17
    Caption = 'CHand19'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object CHand20Button: TButton
    Left = 460
    Top = 368
    Width = 65
    Height = 17
    Caption = 'CHand20'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
  object CHand21Button: TButton
    Left = 383
    Top = 422
    Width = 65
    Height = 17
    Caption = 'CHand21'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object CHand22Button: TButton
    Left = 306
    Top = 447
    Width = 65
    Height = 17
    Caption = 'CHand22'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object CHand23Button: TButton
    Left = 229
    Top = 420
    Width = 65
    Height = 17
    Caption = 'CHand23'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
  end
  object CHand24Button: TButton
    Left = 152
    Top = 365
    Width = 65
    Height = 17
    Caption = 'CHand24'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
  end
  object CHand25Button: TButton
    Left = 4
    Top = 230
    Width = 65
    Height = 17
    Caption = 'CHand25'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
  end
  object CHand26Button: TButton
    Left = 152
    Top = 103
    Width = 65
    Height = 17
    Caption = 'CHand26'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object CHand27Button: TButton
    Left = 229
    Top = 48
    Width = 65
    Height = 17
    Caption = 'CHand27'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
  end
  object MovesEdit: TEdit
    Left = 832
    Top = 44
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 26
    Text = 'no. of moves: 0'
  end
  object NewGameButton: TButton
    Left = 832
    Top = 116
    Width = 121
    Height = 25
    Caption = 'New Game'
    TabOrder = 27
    OnClick = NewGameButtonClick
  end
  object MainMenuButton: TButton
    Left = 832
    Top = 182
    Width = 121
    Height = 25
    Caption = 'Main Menu'
    TabOrder = 28
    OnClick = MainMenuButtonClick
  end
  object InstructionsButton: TButton
    Left = 832
    Top = 244
    Width = 121
    Height = 25
    Caption = 'Instructions'
    TabOrder = 29
    OnClick = InstructionsButtonClick
  end
end
