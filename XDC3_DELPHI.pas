unit XDC3_DELPHI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Vcl.ExtCtrls,XRC_20,web3,XRC_721,web3.crypto;

type
  TXRCTokens_Form = class(TForm)
    NameButton: TButton;
    SymbolButton: TButton;
    DecimalsButton: TButton;
    TotalSupplyButton: TButton;
    BalanceOfButton: TButton;
    AllowanceButton: TButton;
    TransferButton: TButton;
    ApproveButton: TButton;
    IncreaseAllowanceButton: TButton;
    DecreaseAllowanceButton: TButton;
    TransferXDCButton: TButton;
    TransferFromButton: TButton;
    XRC20_Token: TLabel;
    Read_Methods: TLabel;
    Write_Methods: TLabel;
    NameXrc721Button: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SymbolXrc721Button: TButton;
    TokenUriXrc721Button: TButton;
    TotalSupplyXrc721Button: TButton;
    TokenByIndexXrc721Button: TButton;
    TokenOfOwnerByIndexXrc721Button: TButton;
    BalanceOfXrc721Button: TButton;
    OwnerOfXrc721Button: TButton;
    GetApprovedXrc721Button: TButton;
    IsApprovedForAllXrc721Button: TButton;
    TransferfromXrc721Button: TButton;
    SafeTransferfromXrc721Button: TButton;
    ApproveXrc721Button: TButton;
    SetApprovalForAllXrc721Button: TButton;
    Button1: TButton;
    procedure NameButtonClick(Sender: TObject);
    procedure SymbolButtonClick(Sender: TObject);
    procedure DecimalsButtonClick(Sender: TObject);
    procedure TotalSupplyButtonClick(Sender: TObject);
    procedure BalanceOfButtonClick(Sender: TObject);
    procedure AllowanceButtonClick(Sender: TObject);
    procedure TransferButtonClick(Sender: TObject);
    procedure ApproveButtonClick(Sender: TObject);
    procedure IncreaseAllowanceButtonClick(Sender: TObject);
    procedure DecreaseAllowanceButtonClick(Sender: TObject);
    procedure TransferXDCButtonClick(Sender: TObject);
    procedure TransferFromButtonClick(Sender: TObject);
    procedure xrc721NameButtonClick(Sender: TObject);
    procedure xrc721SymbolButtonClick(Sender: TObject);
    procedure xrc721TokenUriButtonClick(Sender: TObject);
    procedure xrc721TotalSupplyButtonClick(Sender: TObject);
    procedure xrc721TokenByIndexButtonClick(Sender: TObject);
    procedure xrc721TokenOfOwnerByIndexButtonClick(Sender: TObject);
    procedure xrc721BalanceOfButtonClick(Sender: TObject);
    procedure xrc721OwnerOfButtonClick(Sender: TObject);
    procedure xrc721GetApprovedButtonClick(Sender: TObject);
    procedure xrc721IsApprovedForAllButtonClick(Sender: TObject);
    procedure xrc721TransferfromButtonClick(Sender: TObject);
    procedure xrc721SafeTransferfromButtonClick(Sender: TObject);
    procedure xrc721ApproveButtonClick(Sender: TObject);
    procedure xrc721SetApprovalForAllButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);




  private
    { Private declarations }

  public
    { Public declarations }

     { XRC20 }
     Namee : string;
     Symbol : string;
     Decimals : string;
     TotalSupply : string;
     BalanceOf : string;
     Allowance : string;
     Transfer : string;
     TransferFrom : string;
     Approve : string;
     IncreaseAllowance : string;
     DecreaseAllowance : string;
     TransferXDC : string;
     Network : Tchain;
     value : string;
     TokenAddress :string;
     OwnerAddress : string;
     SpenderAddress : string;
     OwnerPrivateKey : string;
     RecipientAddress : string;
     SpenderPrivateKey : string;
     PrivateKey : TPrivateKey;
     { XRC721 }


     InterfaceId: string;
     TokenURI : string;
     TokenId : string;
     TokenByIndex : string;
     Index, indexNumber : string;
     TokenOfOwnerByIndex : string;
     OwnerOf : string;
     GetApproved : string;
     IsApprovedForAll : string;
     OperatorAddress : string;
     SafeTransferfrom : string;
     SetApprovalForAll : string;
     Getbool : string;
  end;

var
  XRCTokens_Form: TXRCTokens_Form;

 const URL = 'https://apothemxdcpayrpc.blocksscan.io/';      // RPC access to XDC


implementation

{$R *.dfm}

 {*** XRC20 Token ***}

procedure TXRCTokens_Form.NameButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   TokenAddress := inputbox('Name','Token Address','');

   Namee := web3InterfaceXdc.Tname(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage('Name : ' + str);
   end);

end;



procedure TXRCTokens_Form.SymbolButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   TokenAddress := inputbox('Symbol','Token Address','');

   Symbol := web3InterfaceXdc.TSymbol(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage('Symbol : ' + str);
   end);

end;

procedure TXRCTokens_Form.DecimalsButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   TokenAddress := inputbox('Decimals','Token Address','');

   Decimals := web3InterfaceXdc.Tdecimals(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage('Decimals : ' + str);
   end);
end;

procedure TXRCTokens_Form.TotalSupplyButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   TokenAddress := inputbox('Total Supply','Token Address','');

   TotalSupply := web3InterfaceXdc.TtotalSupply(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage('Total Supply : ' + str);
   end);
end;


procedure TXRCTokens_Form.BalanceOfButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   TokenAddress := inputbox('Balance Of','Token Address','');
   OwnerAddress := inputbox('Balance Of','Owner Address','');

   BalanceOf := web3InterfaceXdc.Tbalanceof(URL,TokenAddress,OwnerAddress,procedure(const str: string)
   begin
      ShowMessage(' Balance Of : ' + str);
   end);
end;

procedure TXRCTokens_Form.AllowanceButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   TokenAddress := inputbox('Allowance','Token Address','');
   OwnerAddress := inputbox('Allowance','Owner Address','');
   SpenderAddress := inputbox('Allowance','Spender Address','');

   Allowance := web3InterfaceXdc.Tallowance(URL,TokenAddress,OwnerAddress,SpenderAddress,procedure(const str: string)
   begin
      ShowMessage(' Allowance : ' + str);
   end);
end;

procedure TXRCTokens_Form.TransferButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   Network := Apothem;
   TokenAddress := inputbox('Transfer','Token Address','');
   OwnerPrivateKey  := inputbox('Transfer','Owner Private key','');
   RecipientAddress := inputbox('Transfer','Recipient Address','');
   value := inputbox('Transfer','Amount','');

   Transfer:= web3InterfaceXdc.transfer(URL,Network,OwnerPrivateKey,TokenAddress,RecipientAddress,value,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.TransferFromButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   Network := Apothem;
   TokenAddress := inputbox('Transfer From','Token Address','');
   SpenderPrivateKey := inputbox('Transfer From','Spender Private key','');
   OwnerAddress :=  inputbox('Transfer From','Owner Address','');
   RecipientAddress := inputbox('Transfer From','Recipent Address','');
   value := inputbox('Transfer From','Amount','');

   TransferFrom := web3InterfaceXdc.transferFrom(URL,Network,TokenAddress,SpenderPrivateKey,OwnerAddress,RecipientAddress,value,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.ApproveButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   Network := Apothem;
   TokenAddress := inputbox('Approve','Token Address','');
   OwnerPrivateKey  := inputbox('Approve','Owner Private key','');
   SpenderAddress := inputbox('Approve','Spender Address','');
   value := inputbox('Approve','Amount','');

   Approve := web3InterfaceXdc.Approve(URL,Network,OwnerPrivateKey,TokenAddress,SpenderAddress,value,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.IncreaseAllowanceButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   Network := Apothem;
   TokenAddress := inputbox('IncreaseAllowance','Token Address','');
   OwnerPrivateKey  := inputbox('IncreaseAllowance','Owner Private key','');
   SpenderAddress := inputbox('IncreaseAllowance','Spender Address','');
   OwnerAddress := inputbox('IncreaseAllowance','Owner Address','');
   value := inputbox('IncreaseAllowance','Value','');

   IncreaseAllowance := web3InterfaceXdc.increaseAllowance(URL,Network,OwnerPrivateKey,TokenAddress,SpenderAddress,OwnerAddress,value,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.DecreaseAllowanceButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   Network := Apothem;
   TokenAddress := inputbox('DecreaseAllowance','Token Address','');
   OwnerPrivateKey  := inputbox('DecreaseAllowance','Owner Private key','');
   SpenderAddress := inputbox('DecreaseAllowance','Spender Address','');
   OwnerAddress := inputbox('DecreaseAllowance','Owner Address','');
   value := inputbox('DecreaseAllowance','Value','');

   DecreaseAllowance := web3InterfaceXdc.decreaseAllowance(URL,Network,OwnerPrivateKey,TokenAddress,SpenderAddress,OwnerAddress,value,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.TransferXDCButtonClick(Sender: TObject);
begin
   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
   web3InterfaceXdc := web3ClassXdc;

   Network := Apothem;
   OwnerPrivateKey  := inputbox('Transfer XDC','Owner Private key','');
   RecipientAddress := inputbox('Transfer XDC','Recipient Address','');
   value := inputbox('Transfer XDC','Amount','');     {0.01}

   TransferXDC := web3InterfaceXdc.TransferXDC(URL,Network,OwnerPrivateKey,RecipientAddress,value,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


    {*** XRC721 Token ***}


procedure TXRCTokens_Form.xrc721NameButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Name','Token Address','');

   Name := web3InterfaceXdc721.TokenName(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage(str);
   end);

end;


procedure TXRCTokens_Form.xrc721SymbolButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Symbol','Token Address','');

   Symbol := web3InterfaceXdc721.TokenSymbol(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721TokenUriButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Token URI','Token Address','');
   TokenId := inputbox('Token URI','Token ID','');

   TokenURI := web3InterfaceXdc721.TokenURI(URL,TokenAddress,TokenId,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721TotalSupplyButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('TotalSupply','Token Address','');

   TotalSupply := web3InterfaceXdc721.TotalSupply(URL,TokenAddress,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721TokenByIndexButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Token By Index','Token Address','');
   indexNumber := inputbox('Token By Index','Index','');
   var Index  := indexNumber.ToInt64;
   TokenByIndex := web3InterfaceXdc721.TokenByIndex(URL,TokenAddress,Index,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721TokenOfOwnerByIndexButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Token Of Owner By Index','Token Address','');
   OwnerAddress := inputbox('Token Of Owner By Index','Owner Address','');
   indexNumber := inputbox('Token Of Owner By Index','Index','');
   var Index  := indexNumber.ToInt64;

   TokenOfOwnerByIndex := web3InterfaceXdc721.TokenOfOwnerByIndex(URL,TokenAddress,OwnerAddress,Index,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721BalanceOfButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Balance Of','Token Address','');
   OwnerAddress := inputbox('Balance Of','Owner Address','');

   BalanceOf :=  web3InterfaceXdc721.BalanceOf(URL,TokenAddress,OwnerAddress,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721OwnerOfButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Owner Of','Token Address','');
   TokenId := inputbox('Owner Of','Token ID','');
   var token_Id := TokenId.ToInt64;

   OwnerOf :=  web3InterfaceXdc721.OwnerOf(URL,TokenAddress,token_Id,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721GetApprovedButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   TokenAddress := inputbox('Get Approved','Token Address','');
   TokenId := inputbox('Get Approved','Token ID','');
   var token_Id := TokenId.ToInt64;

   GetApproved := web3InterfaceXdc721.GetApproved(URL,TokenAddress,token_Id,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721IsApprovedForAllButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   Network := Apothem;
   TokenAddress := inputbox('Is Approved For All','Token Address','');
   OwnerPrivateKey := inputbox('Is Approved For All','Owner Private Key','');
   OperatorAddress := inputbox('Is Approved For All','Operator Address','');

   IsApprovedForAll := web3InterfaceXdc721.IsApprovedForAll(URL,Network,TokenAddress,OwnerPrivateKey,OperatorAddress,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721TransferfromButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   Network := Apothem;
   OwnerPrivateKey := inputbox('Transfer from','Spender Private Key','');
   OwnerAddress :=  inputbox('Transfer From','Owner Address','');
   TokenAddress := inputbox('Transfer From','Token Address','');
   RecipientAddress := inputbox('Transfer From','Recipent Address','');
   TokenId := inputbox('Transfer from','Token ID','');
   var token_Id := TokenId.ToInt64;

   Transferfrom := web3InterfaceXdc721.TransferFrom(URL,Network,OwnerPrivateKey,OwnerAddress,TokenAddress,RecipientAddress,token_Id,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721SafeTransferfromButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   Network := Apothem;
   OwnerPrivateKey := inputbox('Safe Transfer from','Spender Private Key','');
   OwnerAddress :=  inputbox('Transfer From','Owner Address','');
   TokenAddress := inputbox('Safe Transfer from','Token Address','');
   RecipientAddress := inputbox('Safe Transfer from','Recipent Address','');
   TokenId := inputbox('Safe Transfer from','Token ID','');
   var token_Id := TokenId.ToInt64;


   SafeTransferfrom := web3InterfaceXdc721.SafeTransferFrom(URL,Network,OwnerPrivateKey, OwnerAddress, TokenAddress,RecipientAddress,token_Id,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721ApproveButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   Network := Apothem;
   OwnerPrivateKey  := inputbox('Approve','Owner Private key','');
   TokenAddress := inputbox('Approve','Token Address','');
   SpenderAddress := inputbox('Approve','Spender Address','');
   TokenId := inputbox('Get Approved','Token ID','');
   var token_Id := TokenId.ToInt64;

   Approve := web3InterfaceXdc721.Approve(URL,Network,OwnerPrivateKey,TokenAddress,SpenderAddress,token_Id,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;


procedure TXRCTokens_Form.xrc721SetApprovalForAllButtonClick(Sender: TObject);
begin
   var web3ClassXdc721 := XRC_721.TWeb3Xdc721.Create;
   var web3InterfaceXdc721 : XRC_721.IWeb3Xdc721;
   web3InterfaceXdc721 := web3ClassXdc721;

   Network := Apothem;
   TokenAddress := inputbox('Set Approval For All','Token Address','');
   OwnerPrivateKey  := inputbox('Set Approval For All','Owner Private key','');
   SpenderAddress := inputbox('Set Approval For All','Spender Address','');
   Getbool := inputbox('Get Set Approval For All','Boolean Value','');
   var boolean := Getbool.ToBoolean;

   SetApprovalForAll := web3InterfaceXdc721.SetApprovalForAll(URL,Network,TokenAddress,OwnerPrivateKey,SpenderAddress,boolean,procedure(const str: string)
   begin
      ShowMessage(str);
   end);
end;

procedure TXRCTokens_Form.Button1Click(Sender: TObject);
begin

      var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
      var web3InterfaceXdc : XRC_20.IWeb3Xdc;
      web3InterfaceXdc := web3ClassXdc;

      PrivateKey := web3InterfaceXdc.createAccount(web3.crypto.generatePrivateKey('ECDSA', SECP256K1));
      ShowMessage(PrivateKey);

end;


end.