unit XRC_721;

interface
Uses
  System.SysUtils,
  Velthuis.BigIntegers,
  web3.eth,
  web3,
  web3.eth.erc721,
  web3.utils,
  web3.eth.types;

  Type
  TAsyncStringObject = reference to procedure(const res: string);

  TWeb3Xdc721 = class;
  IWeb3Xdc721 = interface
    function TokenName(url : string; tokenAddress : string; callback : TAsyncStringObject) : string;
    function TokenSymbol(url : string;tokenAddress: string; callback : TAsyncStringObject) : string;
    function TokenURI(url : string; tokenAddress : string; tokenId: BigInteger; callback: TAsyncStringObject): string;
    function TotalSupply(url : string; tokenAddress : string; callback: TAsyncStringObject): string;
    function TokenByIndex(url : string; tokenAddress : string; index: UInt64; callback: TAsyncStringObject) : string;
    function TokenOfOwnerByIndex(url : string; tokenAddress : string; ownerAddress: TAddress; index: UInt64; callback: TAsyncStringObject) : string;
    function BalanceOf(url : string; tokenAddress : string; ownerAddress: string; callback: TAsyncStringObject): string;
    function OwnerOf(url : string; tokenAddress : string; tokenId: UInt64; callback: TAsyncStringObject):string;
    function Approve(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; spenderAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
    function GetApproved(url : string; tokenAddress : string; tokenId: UInt64; callback: TAsyncStringObject): string;
    function IsApprovedForAll(url : string; aChain: TChain; tokenAddress : string ; ownerAddress: TPrivateKey ; operatorAddress : TAddress ; callback : TAsyncStringObject ) : string;
    function SetApprovalForAll(url : string; aChain: TChain; tokenAddress : string ; ownerPrivateKey: TPrivateKey ; operatorAddress : TAddress ; approved : boolean; callback : TAsyncStringObject ) : string;
    function TransferFrom(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; recipientAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
    function SafeTransferFrom(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; recipientAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
  end;

  TWeb3Xdc721 = class(TInterfacedObject, IWeb3Xdc721)
   function TokenName(url : string; tokenAddress : string; callback : TAsyncStringObject) : string;
   function TokenSymbol(url : string; tokenAddress: string; callback : TAsyncStringObject) : string;
   function TokenURI(url : string; tokenAddress : string; tokenId: BigInteger; callback: TAsyncStringObject): string;
   function TotalSupply(url : string; tokenAddress : string; callback: TAsyncStringObject): string;
   function TokenByIndex(url : string; tokenAddress : string; index: UInt64; callback: TAsyncStringObject) : string;
   function TokenOfOwnerByIndex(url : string; tokenAddress : string; ownerAddress: TAddress; index: UInt64; callback: TAsyncStringObject) : string;
   function BalanceOf(url : string; tokenAddress : string; ownerAddress: string; callback: TAsyncStringObject): string;
   function OwnerOf(url : string; tokenAddress : string; tokenId: UInt64; callback: TAsyncStringObject):string;
   function Approve(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; spenderAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
   function GetApproved(url : string; tokenAddress : string; tokenId: UInt64; callback: TAsyncStringObject): string;
   function IsApprovedForAll(url : string; aChain: TChain; tokenAddress : string ; ownerAddress: TPrivateKey ; operatorAddress : TAddress ; callback : TAsyncStringObject ) : string;
   function SetApprovalForAll(url : string; aChain: TChain; tokenAddress : string ; ownerPrivateKey: TPrivateKey ; operatorAddress : TAddress ; approved : boolean; callback : TAsyncStringObject ) : string;
   function TransferFrom(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; recipientAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
   function SafeTransferFrom(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; recipientAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
  end;


implementation

 function TWeb3Xdc721.TokenName(url : string; tokenAddress : string; callback : TAsyncStringObject) : string;
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

 function TWeb3Xdc721.TokenSymbol(url : string; tokenAddress: string; callback: TAsyncStringObject): string;
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

 function TWeb3Xdc721.TokenURI(url : string; tokenAddress : string; tokenId: BigInteger; callback: TAsyncStringObject): string;
  begin
    var Client: IWeb3 := TWeb3.Create(url);
    web3.eth.call(Client, tokenAddress, 'tokenURI(uint256)', [web3.utils.toHex(tokenId)], procedure(tup: TTuple; err: IError)
    begin
      if Assigned(err) then
         callback(err.Message)
      else
         callback(tup.ToString);
    end);
  end;

  function TWeb3Xdc721.TotalSupply(url : string; tokenAddress : string; callback: TAsyncStringObject): string;
  begin
    var Client: IWeb3 := TWeb3.Create(url);
    web3.eth.call(Client, tokenAddress, 'totalSupply()', [], procedure(qty  : BigInteger; err : IError)
    begin
      if Assigned(err) then
         callback(err.Message)
      else
         callback(qty.ToString);
    end);
  end;

  function TWeb3Xdc721.TokenByIndex(url : string; tokenAddress : string; index: UInt64; callback: TAsyncStringObject) : string;
  begin
    var Client: IWeb3 := TWeb3.Create(url);
    web3.eth.call(Client, tokenAddress, 'tokenByIndex(uint256)', [index], procedure(qty  : BigInteger; err : IError)
    begin
      if Assigned(err) then
         callback(err.Message)
      else
         callback(qty.ToString);
    end);
  end;

  function TWeb3Xdc721.TokenOfOwnerByIndex(url : string; tokenAddress : string; ownerAddress: TAddress; index: UInt64; callback: TAsyncStringObject) : string;
  begin
    var Client: IWeb3 := TWeb3.Create(url);
    web3.eth.call(Client, tokenAddress, 'tokenOfOwnerByIndex(address,uint256)', [ownerAddress, index], procedure(qty  : BigInteger; err : IError)
    begin
      if Assigned(err) then
         callback(err.Message)
      else
         callback(qty.ToString);
    end);
  end;

  function TWeb3Xdc721.BalanceOf(url : string; tokenAddress : string; ownerAddress: string; callback: TAsyncStringObject): string;
  begin
    var Client: IWeb3 := TWeb3.Create(url);
    web3.eth.call(Client, tokenAddress, 'balanceOf(address)', [ownerAddress], procedure(qty  : BigInteger; err : IError)
    begin
      if Assigned(err) then
         callback(err.Message)
      else
         callback(qty.ToString);
    end);
  end;

  function TWeb3Xdc721.OwnerOf(url : string; tokenAddress : string; tokenId: UInt64; callback: TAsyncStringObject):string ;
  begin
    var Client: IWeb3 := TWeb3.Create(url);
    web3.eth.call(Client, tokenAddress, 'ownerOf(uint256)', [tokenId], procedure(const hex: string; err: IError)
    begin
      if Assigned(err) then
         callback(err.Message)
      else
         callback(TAddress.New(hex));
    end);
  end;

  function TWeb3Xdc721.GetApproved(url : string; tokenAddress : string; tokenId: UInt64; callback: TAsyncStringObject): string;
    begin
      var Client: IWeb3 := TWeb3.Create(url);
      web3.eth.call(Client, tokenAddress, 'getApproved(uint256)', [tokenId], procedure(const hex: string; err: IError)
      begin
        if Assigned(err) then
           callback(err.Message)
        else
           callback(TAddress.New(hex));
      end);
    end;

  function TWeb3Xdc721.IsApprovedForAll(url : string; aChain: TChain; tokenAddress : string ; ownerAddress: TPrivateKey ; operatorAddress : TAddress ; callback : TAsyncStringObject ) : string;
    begin

      var ERC721 := TERC721.Create(TWeb3.Create(aChain,url),tokenAddress);

      try
          ERC721.IsApprovedForAll(
          ownerAddress,
          operatorAddress,
          procedure(bool : Boolean;  err : IError)
          begin
            if Assigned(err) then
               callback(err.Message)
            else
               callback(bool.ToString());
          end);

          finally
          ERC721.Free;
      end;
    end;

  function TWeb3Xdc721.TransferFrom(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; recipientAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
    begin

        var TERC721 := TERC721.Create(TWeb3.Create(aChain,url),tokenAddress);

        try
          TERC721.Transferfrom(
          ownerPrivateKey,                                          // from private key
          recipientAddress,                                         // to public key
          tokenId,                                                  // 0.001 TST
          procedure(rcpt : ITxReceipt; err : IError)
          begin
            if Assigned(err) then
               callback(err.Message)
            else
               callback(String(rcpt.txHash));
          end);

          finally
          TERC721.Free;
        end;

    end;

    function TWeb3Xdc721.SafeTransferFrom(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; recipientAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
    begin

        var TERC721 := TERC721.Create(TWeb3.Create(Apothem, url),tokenAddress);

        try
            TERC721.SafeTransferFrom(
            ownerPrivateKey,                                          // from private key
            recipientAddress,                                         // to public key
            tokenId,                                                  // 0.001 TST
            procedure(rcpt : ITxReceipt; err : IError)
            begin
              if Assigned(err) then
                 callback(err.Message)
              else
                 callback(String(rcpt.txHash));
            end);

            finally
            TERC721.Free;
        end;

    end;


    function TWeb3Xdc721.Approve(url : string; aChain: TChain; ownerPrivateKey: TPrivateKey ; tokenAddress : string ; spenderAddress : TAddress ; tokenId : UInt64 ; callback : TAsyncStringObject ) : string;
    begin

      var ERC721 := TERC721.Create(TWeb3.Create(aChain,url),tokenAddress);

        try
          ERC721.Approve(
          ownerPrivateKey,                                 // from private key
          spenderAddress,                                  // to public key
          tokenId,                                        // 0.001 TST
          procedure(rcpt: ITxReceipt; err: IError)
          begin
            if Assigned(err) then
                callback(err.Message)
            else
                callback(string(rcpt.txHash));
          end);

          finally
          ERC721.Free;
      end;
    end;


    function TWeb3Xdc721.SetApprovalForAll(url : string; aChain: TChain; tokenAddress : string ; ownerPrivateKey: TPrivateKey ; operatorAddress : TAddress ; approved : boolean; callback : TAsyncStringObject ) : string;
    begin

        var ERC721 := TERC721.Create(TWeb3.Create(aChain,url),tokenAddress);

        try
          ERC721.SetApprovalForAll(
          ownerPrivateKey,
          operatorAddress,
          approved,
          procedure(rcpt : ITxReceipt; err : IError)
          begin
            if Assigned(err) then
               callback(err.Message)
            else
               callback(string(rcpt.txHash));
          end);

          finally
          ERC721.Free;
      end;
    end;


end.
