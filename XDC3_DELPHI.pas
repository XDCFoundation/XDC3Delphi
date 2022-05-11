unit XDC3_DELPHI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Vcl.ExtCtrls,XRC_20,web3;

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


  private
    { Private declarations }

  public
    { Public declarations }
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
  end;

var
  XRCTokens_Form: TXRCTokens_Form;

 const URL = 'https://apothemxdcpayrpc.blocksscan.io/';      // RPC access to XDC


implementation

{$R *.dfm}



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

end.
