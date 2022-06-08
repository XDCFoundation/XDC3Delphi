object XRCTokens_Form: TXRCTokens_Form
  Left = 343
  Top = 154
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'XRCTokens_Form'
  ClientHeight = 694
  ClientWidth = 1090
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  ParentBiDiMode = False
  Position = poDesigned
  Visible = True
  TextHeight = 15
  object XRC20_Token: TLabel
    Left = 104
    Top = 24
    Width = 136
    Height = 30
    Caption = 'XRC 20 Token'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Read_Methods: TLabel
    Left = 40
    Top = 112
    Width = 126
    Height = 28
    Caption = 'Read Methods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Write_Methods: TLabel
    Left = 206
    Top = 112
    Width = 131
    Height = 28
    Caption = 'Write Methods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 664
    Top = 24
    Width = 148
    Height = 30
    Caption = 'XRC 721 Token'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 584
    Top = 104
    Width = 126
    Height = 28
    Caption = 'Read Methods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 878
    Top = 112
    Width = 131
    Height = 28
    Caption = 'Write Methods'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object NameButton: TButton
    Left = 40
    Top = 184
    Width = 97
    Height = 49
    Caption = 'Name'
    TabOrder = 0
    OnClick = NameButtonClick
  end
  object SymbolButton: TButton
    Left = 40
    Top = 255
    Width = 97
    Height = 49
    Caption = 'Symbol'
    TabOrder = 1
    OnClick = SymbolButtonClick
  end
  object DecimalsButton: TButton
    Left = 40
    Top = 320
    Width = 97
    Height = 49
    Caption = 'Decimals '
    TabOrder = 2
    OnClick = DecimalsButtonClick
  end
  object TotalSupplyButton: TButton
    Left = 40
    Top = 392
    Width = 97
    Height = 49
    Caption = 'Total Supply '
    TabOrder = 3
    OnClick = TotalSupplyButtonClick
  end
  object BalanceOfButton: TButton
    Left = 40
    Top = 464
    Width = 97
    Height = 49
    Caption = 'Balance Of '
    TabOrder = 4
    OnClick = BalanceOfButtonClick
  end
  object AllowanceButton: TButton
    Left = 40
    Top = 536
    Width = 97
    Height = 49
    Caption = 'Allowance '
    TabOrder = 5
    OnClick = AllowanceButtonClick
  end
  object TransferButton: TButton
    Left = 206
    Top = 255
    Width = 145
    Height = 49
    Caption = 'Transfer'
    TabOrder = 6
    OnClick = TransferButtonClick
  end
  object ApproveButton: TButton
    Left = 203
    Top = 184
    Width = 145
    Height = 49
    Caption = 'Approve '
    TabOrder = 7
    OnClick = ApproveButtonClick
  end
  object IncreaseAllowanceButton: TButton
    Left = 203
    Top = 392
    Width = 145
    Height = 49
    Caption = 'Increase Allowance '
    TabOrder = 8
    OnClick = IncreaseAllowanceButtonClick
  end
  object DecreaseAllowanceButton: TButton
    Left = 203
    Top = 464
    Width = 145
    Height = 49
    Caption = 'Decrease Allowance '
    TabOrder = 9
    OnClick = DecreaseAllowanceButtonClick
  end
  object TransferXDCButton: TButton
    Left = 206
    Top = 536
    Width = 142
    Height = 49
    Caption = 'Transfer XDC '
    TabOrder = 10
    OnClick = TransferXDCButtonClick
  end
  object TransferFromButton: TButton
    Left = 206
    Top = 320
    Width = 145
    Height = 49
    Caption = 'Transfer From '
    TabOrder = 11
    OnClick = TransferFromButtonClick
  end
  object NameXrc721Button: TButton
    Left = 488
    Top = 184
    Width = 137
    Height = 49
    Caption = 'Name'
    TabOrder = 12
    OnClick = xrc721NameButtonClick
  end
  object SymbolXrc721Button: TButton
    Left = 488
    Top = 255
    Width = 137
    Height = 49
    Caption = 'Symbol'
    TabOrder = 13
    OnClick = xrc721SymbolButtonClick
  end
  object TokenUriXrc721Button: TButton
    Left = 488
    Top = 320
    Width = 137
    Height = 49
    Caption = 'Token URI'
    TabOrder = 14
    OnClick = xrc721TokenUriButtonClick
  end
  object TotalSupplyXrc721Button: TButton
    Left = 488
    Top = 392
    Width = 137
    Height = 49
    Caption = 'Total Supply'
    TabOrder = 15
    OnClick = xrc721TotalSupplyButtonClick
  end
  object TokenByIndexXrc721Button: TButton
    Left = 488
    Top = 464
    Width = 137
    Height = 49
    Caption = 'Token By Index'
    TabOrder = 16
    OnClick = xrc721TokenByIndexButtonClick
  end
  object TokenOfOwnerByIndexXrc721Button: TButton
    Left = 488
    Top = 536
    Width = 169
    Height = 49
    Caption = 'Token Of Owner By Index'
    TabOrder = 17
    OnClick = xrc721TokenOfOwnerByIndexButtonClick
  end
  object BalanceOfXrc721Button: TButton
    Left = 664
    Top = 184
    Width = 137
    Height = 49
    Caption = 'Balance Of'
    TabOrder = 18
    OnClick = xrc721BalanceOfButtonClick
  end
  object OwnerOfXrc721Button: TButton
    Left = 664
    Top = 255
    Width = 137
    Height = 49
    Caption = 'Owner Of '
    TabOrder = 19
    OnClick = xrc721OwnerOfButtonClick
  end
  object GetApprovedXrc721Button: TButton
    Left = 664
    Top = 320
    Width = 137
    Height = 49
    Caption = 'Get Approved'
    TabOrder = 20
    OnClick = xrc721GetApprovedButtonClick
  end
  object IsApprovedForAllXrc721Button: TButton
    Left = 664
    Top = 392
    Width = 137
    Height = 49
    Caption = 'Is Approved For All'
    TabOrder = 21
    OnClick = xrc721IsApprovedForAllButtonClick
  end
  object TransferfromXrc721Button: TButton
    Left = 878
    Top = 184
    Width = 137
    Height = 49
    Caption = 'Transfer From'
    TabOrder = 22
    OnClick = xrc721TransferfromButtonClick
  end
  object SafeTransferfromXrc721Button: TButton
    Left = 878
    Top = 255
    Width = 137
    Height = 49
    Caption = 'Safe Transfer From'
    TabOrder = 23
    OnClick = xrc721SafeTransferfromButtonClick
  end
  object ApproveXrc721Button: TButton
    Left = 878
    Top = 320
    Width = 137
    Height = 49
    Caption = 'Approve'
    TabOrder = 24
    OnClick = xrc721ApproveButtonClick
  end
  object SetApprovalForAllXrc721Button: TButton
    Left = 878
    Top = 392
    Width = 137
    Height = 49
    Caption = 'Set Approval For All'
    TabOrder = 25
    OnClick = xrc721SetApprovalForAllButtonClick
  end
  object Button2: TButton
    Left = 664
    Top = 464
    Width = 137
    Height = 49
    Caption = 'Create Account'
    TabOrder = 26
    OnClick = Button2Click
  end
end
