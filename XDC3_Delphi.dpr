program XDC3_Delphi;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  XRC_20 in 'XRC_20.pas';

      procedure GetName(name: string);
      begin
        writeln('Token Name := ' + name);
      end;

      procedure getSymbol(res: string);
      begin
        writeln('Symbol Name := ' + res);
      end;

      procedure getDecimals(res: string);
      begin
        writeln('Decimals := ' + res);
      end;

      procedure getTotalSupply(res: string);
      begin
        writeln('Total Supply := ' + res);
      end;

      procedure getBalanceOf(res: string);
      begin
        writeln('Balance Of := ' + res);
      end;

      procedure getAllowance(res: string);
      begin
        writeln('Allowance := ' + res);
      end;

      procedure transferToken(hash: string);
      begin
        writeln('Hash := ' + hash);
      end;

      procedure approvee(res: string);
      begin
        writeln('Approve := ' + res);
      end;

      procedure getIncreasedAllowance(res: string);
      begin
        writeln('Increased Allowance Hash := ' + res);
      end;

      procedure getDecreaseAllowance(res: string);
      begin
        writeln('Decrease Allowance Hash := ' + res);
      end;

      procedure transferXdc(res: string);
      begin
        writeln('Transfer XDC := ' + res);
      end;

      procedure transfer_From(res: string);
      begin
        writeln('Transfer from hash := ' + res);
      end;



begin
    var  Name, Symbol, Decimals, TotalSupply, BalanceOf, Allowance, Transfer, Approve, IncreaseAllowance, DecreaseAllowance, Transfer_XDC, TransferFrom: string;
    var SpenderPrivateKey, OwnerPrivateKey, Recipient, TokenAddress, OwnerAddress, SpenderAddress, value, amount : string;


  begin

   var web3ClassXdc := XRC_20.TWeb3Xdc.Create;
   var web3InterfaceXdc : XRC_20.IWeb3Xdc;
       web3InterfaceXdc := web3ClassXdc;

   const URL = 'https://apothemxdcpayrpc.blocksscan.io/';      // RPC access to XDC

   {***XRC-20 Methods***}

   {Any Funtion can be performed at a time, Other Functions will remain commented}

          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          Name := web3InterfaceXdc.Tname(URL,TokenAddress, GetName);


          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          Symbol := web3InterfaceXdc.Tsymbol(URL,TokenAddress,getSymbol);


          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          Decimals := web3InterfaceXdc.Tdecimals(URL,TokenAddress,getDecimals);


          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          TotalSupply := web3InterfaceXdc.Ttotalsupply(URL,TokenAddress,getTotalSupply);


          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Owner Address : ');
          ReadLn(Input, OwnerAddress);
          BalanceOf := web3InterfaceXdc.Tbalanceof(URL,TokenAddress,OwnerAddress,getBalanceOf);


          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Owner Address : ');
          ReadLn(Input, OwnerAddress);
          WriteLn(Output, 'Please enter Spender Address : ');
          ReadLn(Input, SpenderAddress);
          Allowance := web3InterfaceXdc.Tallowance(URL,TokenAddress,OwnerAddress,SpenderAddress,getAllowance);


          WriteLn(Output, 'Please enter Owner Private Key : ');
          ReadLn(Input, OwnerPrivateKey);
          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Recipient Address : ');
          ReadLn(Input, Recipient);
          WriteLn(Output, 'Please enter Value : ');
          ReadLn(Input, amount);
          Transfer:= web3InterfaceXdc.transfer(URL,OwnerPrivateKey,TokenAddress,Recipient,amount, transferToken);


          WriteLn(Output, 'Please enter Owner Private Key : ');
          ReadLn(Input, OwnerPrivateKey);
          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Spender Address : ');
          ReadLn(Input, SpenderAddress);
          WriteLn(Output, 'Please enter Value : ');
          ReadLn(Input, amount);
          Approve := web3InterfaceXdc.approve(URL,OwnerPrivateKey,TokenAddress,SpenderAddress,amount, Approvee);


          WriteLn(Output, 'Please enter Owner Private Key : ');
          ReadLn(Input, OwnerPrivateKey);
          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Spender Address : ');
          ReadLn(Input, SpenderAddress);
          WriteLn(Output, 'Please enter Owner Address : ');
          ReadLn(Input, OwnerAddress);
          WriteLn(Output, 'Please enter Value : ');
          ReadLn(Input, amount);
          IncreaseAllowance := web3InterfaceXdc.increaseAllowance(URL,OwnerPrivateKey,TokenAddress,SpenderAddress,OwnerAddress,amount,getIncreasedAllowance);


          WriteLn(Output, 'Please enter Owner Private Key : ');
          ReadLn(Input, OwnerPrivateKey);
          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Spender Address : ');
          ReadLn(Input, SpenderAddress);
          WriteLn(Output, 'Please enter Owner Address : ');
          ReadLn(Input, OwnerAddress);
          WriteLn(Output, 'Please enter Value : ');
          ReadLn(Input, value);
          DecreaseAllowance := web3InterfaceXdc.decreaseAllowance(URL,OwnerPrivateKey,TokenAddress,SpenderAddress,OwnerAddress,value,getDecreaseAllowance);


          WriteLn(Output, 'Please enter Owner Private Key : ');
          ReadLn(Input, OwnerPrivateKey);
          WriteLn(Output, 'Please enter Spender Address : ');
          ReadLn(Input, SpenderAddress);
          WriteLn(Output, 'Please enter Value : ');
          ReadLn(Input, amount);
          Transfer_XDC := web3InterfaceXdc.transferXDC(URL,OwnerPrivateKey,SpenderAddress,amount,transferXdc);


          WriteLn(Output, 'Please enter Token Address : ');
          ReadLn(Input, TokenAddress);
          WriteLn(Output, 'Please enter Spender Private Key : ');
          ReadLn(Input, SpenderPrivateKey);
          WriteLn(Output, 'Please enter Owner Address : ');
          ReadLn(Input, OwnerAddress);
          WriteLn(Output, 'Please enter Recipient Address : ');
          ReadLn(Input, Recipient);
          WriteLn(Output, 'Please  enter Amount : ');
          ReadLn(Input, amount);
          TransferFrom := web3InterfaceXdc.transferFrom(URL,TokenAddress,SpenderPrivateKey,OwnerAddress,Recipient,amount,transfer_From);


  end;
  Writeln('Press <enter> to quit...');
  Writeln(' ');
  Readln
end.
