unit XRC_20;

interface

uses
  Velthuis.BigIntegers,
  web3.eth,
  web3,
  web3.eth.utils,
  ClpIECPrivateKeyParameters,
  web3.eth.erc20,
  web3.utils,
  web3.eth.types,
  web3.eth.tx;

  Type
  TAsyncStringObject = reference to procedure(const res: string);

      TWeb3Xdc = class;
      IWeb3Xdc = interface
        function createAccount(params: IECPrivateKeyParameters): TPrivateKey;
        function Tname(url : string; tokenAddress : string; callback : TAsyncStringObject) : string;
        function Tsymbol(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
        function Tdecimals(url : string; tokenAddress: string;  callback : TAsyncStringObject) : string;
        function Ttotalsupply(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
        function Tbalanceof(url : string; tokenAddress: string ; ownerAddress : string;  callback : TAsyncStringObject) : string;
        function Tallowance(url : string; tokenAddress: string ; ownerAddress : string ; spenderAddress : string; callback : TAsyncStringObject ) : string;
        function transfer(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; recipient : string ; amount : string ; callback : TAsyncStringObject ) : string;
        function approve(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; amount : string ; callback : TAsyncStringObject ) : string;
        function increaseAllowance(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; ownerAddress : string; value : string ; callback : TAsyncStringObject ) : string;
        function decreaseAllowance(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; ownerAddress : string; value : string ; callback : TAsyncStringObject ) : string;
        function transferXDC(url : string; aChain: TChain; ownerPrivateKey: string; spenderAddress: string; amount : string; callback : TAsyncStringObject): string;
        function transferFrom(url : string; aChain: TChain; tokenAddress:TAddress; spenderPrivateKey: TPrivateKey; ownerAddress: TAddress; recipient: TAddress; value: BigInteger; callback : TAsyncStringObject ) : string; overload;
      end;

      TWeb3Xdc = class(TInterfacedObject, IWeb3Xdc)
        function createAccount(params: IECPrivateKeyParameters): TPrivateKey;
        function Tname(url : string; tokenAddress : string; callback : TAsyncStringObject) : string;
        function Tsymbol(url : string;tokenAddress: string; callback : TAsyncStringObject) : string;
        function Tdecimals(url : string;tokenAddress: string;  callback : TAsyncStringObject) : string;
        function Ttotalsupply(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
        function Tbalanceof(url : string; tokenAddress: string ; ownerAddress : string;  callback : TAsyncStringObject) : string;
        function Tallowance(url : string; tokenAddress: string ; ownerAddress : string ; spenderAddress : string; callback : TAsyncStringObject ) : string;
        function transfer(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; recipient : string ; amount : string ; callback : TAsyncStringObject ) : string;
        function approve(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; amount : string ; callback : TAsyncStringObject ) : string;
        function increaseAllowance(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; ownerAddress : string; value : string ; callback : TAsyncStringObject ) : string;
        function decreaseAllowance(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; ownerAddress : string; value : string ; callback : TAsyncStringObject ) : string;
        function transferXDC(url : string; aChain: TChain; ownerPrivateKey: string; spenderAddress: string; amount : string; callback : TAsyncStringObject): string;
        function transferFrom(url : string; aChain: TChain; tokenAddress:TAddress; spenderPrivateKey: TPrivateKey; ownerAddress: TAddress; recipient: TAddress; value: BigInteger; callback : TAsyncStringObject ) : string; overload;
      end;

      var answer, amount : string;

implementation


{ ** Name ** }

function TWeb3Xdc.Tname(url : string; tokenAddress : string; callback : TAsyncStringObject) : string;
  begin
    var Client: IWeb3 := TWeb3.Create(url);

    web3.eth.call(Client, tokenAddress, 'name()', [], procedure(tup: TTuple; err: IError)
      begin
        if Assigned(err) then
          callback(err.Message)
        else
          callback(tup.ToString);
      end);
  end;

 { ** Symbol ** }

function TWeb3Xdc.Tsymbol(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
    begin
      var Client: IWeb3 := TWeb3.Create(url);

      web3.eth.call(Client, tokenAddress, 'symbol()', [], procedure(tup: TTuple; err: IError)
      begin
        if Assigned(err) then
           callback(err.Message)
        else
           callback(tup.ToString);
      end);
    end;

 { ** Decimals ** }

function TWeb3Xdc.Tdecimals(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
    begin
      var Client: IWeb3 := TWeb3.Create(url);

      web3.eth.call(Client, tokenAddress, 'decimals()', [], procedure(const str: string; err: IError)
      begin
        if Assigned(err) then
           callback(err.Message)
        else
           answer := (web3.eth.utils.fromWei(str, web3.eth.utils.ether));
           callback(answer);
      end);
    end;

{ ** Total Supply ** }

function TWeb3Xdc.Ttotalsupply(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
    begin
      var Client: IWeb3 := TWeb3.Create(url);

      web3.eth.call(Client, tokenAddress, 'totalSupply()', [], procedure(const str: string; err : IError)
      begin
        if Assigned(err) then
           callback(err.Message)
        else
           answer :=(web3.eth.utils.fromWei(str, web3.eth.utils.ether));
           callback(answer);
      end);
    end;

{ ** Balance Of ** }

function TWeb3Xdc.Tbalanceof(url : string; tokenAddress: string ; ownerAddress : string;  callback : TAsyncStringObject) : string;
    begin
      var Client: IWeb3 := TWeb3.Create(url);
      web3.eth.call(Client, tokenAddress, 'balanceOf(address)', [ownerAddress], procedure(const str: string; err : IError)
      begin
        if Assigned(err) then
           callback(err.Message)
        else
           answer :=(web3.eth.utils.fromWei(str, web3.eth.utils.ether));
           callback(answer);
      end);
    end;

{ ** Allowance ** }

function TWeb3Xdc.Tallowance(url : string; tokenAddress: string ; ownerAddress : string ; spenderAddress : string; callback : TAsyncStringObject ) : string;
    begin
      var Client: IWeb3 := TWeb3.Create(url);
      web3.eth.call(Client, tokenAddress, 'allowance(address,address)', [ownerAddress,spenderAddress], procedure(qty  : BigInteger; err : IError)
      begin
        if Assigned(err) then
           callback(err.Message)
        else
           answer :=qty.ToString;
           callback(answer);
      end);
    end;

{ ** Transfer Token ** }

function TWeb3Xdc.transfer(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; recipient : string ; amount : string ; callback : TAsyncStringObject ) : string;
    begin
      var XRC20 := TERC20.Create(TWeb3.Create(aChain,url),tokenAddress);    // RPC access to XDC
        try
           XRC20.Transfer(
           ownerPrivateKey,                                         // from private key
           recipient,                                               // to public key
           web3.eth.utils.toWei(amount, ether),                     // 0.001 TST
           procedure(hash: TTxHash; err: IError)
           begin
              if Assigned(err) then
                  callback(err.Message)
              else
                  callback(String(hash));
           end);

           finally
           XRC20.Free;
        end;

    end;

{ ** Approve ** }


function TWeb3Xdc.approve(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; amount : string ; callback : TAsyncStringObject ) : string;
    begin
      var XRC20 := TERC20.Create(TWeb3.Create(aChain,url),tokenAddress);            // TST smart contract address

        try
          XRC20.Approve(
          ownerPrivateKey,                              // from private key
          spenderAddress,                               // to public key
          amount,                                       // 0.001 TST
          procedure(rcpt: ITxReceipt; err: IError)
          begin
            if Assigned(err) then
               callback(err.Message)
            else
               callback(string(rcpt.txHash));
          end);

          finally
          XRC20.Free;
      end;
    end;


  {Increase Allowance}


function TWeb3Xdc.increaseAllowance(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; ownerAddress : string; value : string ; callback : TAsyncStringObject ) : string;
    begin
        var amount ,RealAmounts: string;
        var realAmount: BigInteger;
        var answer : string;
        var Finall : BigInteger;

        var Client: IWeb3 := TWeb3.Create(url);

        web3.eth.call(Client, tokenAddress, 'allowance(address,address)', [ownerAddress,spenderAddress], procedure(qty  : BigInteger; err : IError)
            begin
              amount := qty.ToString;

              var userValue , previousAllowance : BigInteger;
              userValue := BigInteger.Create(value);
              previousAllowance :=  BigInteger.Create(amount);
              realAmount :=  userValue+ previousAllowance;

            var XRC20 := TERC20.Create(TWeb3.Create(aChain,url),tokenAddress);

            try
              XRC20.Approve(
              ownerPrivateKey,                      // from private key
              spenderAddress,                       // to public key
              realAmount,                           // 0.001 TST

              procedure(rcpt: ITxReceipt; err: IError)
                begin
                  if Assigned(err) then
                     callback(err.Message)
                  else
                     callback(string(rcpt.txHash))
                end);

                finally
                XRC20.Free;
              end;

        end);

    end;

    {Decrease Allowance}

function TWeb3Xdc.decreaseAllowance(url : string; aChain: TChain; ownerPrivateKey: string ; tokenAddress : string ; spenderAddress : string ; ownerAddress : string; value : string ; callback : TAsyncStringObject ) : string;
    begin
        var amount ,RealAmounts: string;
        var realAmount: BigInteger;
        var answer : string;

        var Client: IWeb3 := TWeb3.Create(url);

        web3.eth.call(Client, tokenAddress, 'allowance(address,address)', [ownerAddress,spenderAddress], procedure(qty  : BigInteger; err : IError)
            begin
              amount := qty.ToString;

              var userValue , previousAllowance : BigInteger;
              userValue := BigInteger.Create(value);
              previousAllowance :=  BigInteger.Create(amount);
              realAmount :=  previousAllowance - userValue;

            var XRC20 := TERC20.Create(TWeb3.Create(aChain,url),tokenAddress);

            try
              XRC20.Approve(
              ownerPrivateKey,              // from private key
              spenderAddress,               // to public key
              realAmount,                   // 0.001 TST

              procedure(rcpt: ITxReceipt; err: IError)
                begin
                  if Assigned(err) then
                     callback(err.Message)
                  else
                     callback(string(rcpt.txHash))
                end);

                finally
                XRC20.Free;
              end;
        end);

    end;

    function TWeb3Xdc.transferXDC(url : string; aChain: TChain; ownerPrivateKey: string; spenderAddress: string; amount : string; callback : TAsyncStringObject): string;
    begin
      web3.eth.tx.sendTransaction(
        TWeb3.Create(aChain,url),                                                      // Apothem
        ownerPrivateKey,                                                                // from private key
        spenderAddress,                                                                 // to public key
        web3.eth.utils.toWei(amount, ether),

        procedure(tx: TTxHash; err: IError)
        begin
          if Assigned(err) then
             callback(err.Message)
          else
             callback(string(tx));
        end
      );
    end;

    function TWeb3Xdc.transferFrom(url : string; aChain: TChain; tokenAddress:TAddress; spenderPrivateKey: TPrivateKey; ownerAddress: TAddress; recipient: TAddress; value: BigInteger; callback : TAsyncStringObject ) : string;
    begin

      var XRC20 := TERC20.Create(TWeb3.Create(aChain,url),tokenAddress);     // RPC access to XDC

      spenderPrivateKey.Address(procedure(addr: TAddress; err: IError)
        begin
          web3.eth.write(
          XRC20.Client, spenderPrivateKey, XRC20.Contract,
          'transferFrom(address,address,uint256)', [ownerAddress, recipient, web3.utils.toHex(value)],

          procedure(hash : TTxHash;    err : IError)
          begin
              if Assigned(err) then
                 callback(err.Message)
              else
                 callback(string(hash));
          end);
       end);
    end;

  function TWeb3Xdc.createAccount(params: IECPrivateKeyParameters): TPrivateKey;
  begin
     Result := TPrivateKey(web3.utils.toHex('', params.D.ToByteArrayUnsigned));
  end;


end.