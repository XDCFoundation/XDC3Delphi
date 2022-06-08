## XDC3Delphi

XDC3Delphi SDK with support for XRC20 and XRC721 smart contract.

## Dependencies

Before you can compile this project, you will need to clone the following repositories, and then add them to your Delphi search path:
```
git clone https://github.com/XDCFoundation/XDC3Delphi.git
git clone https://github.com/rvelthuis/DelphiBigNumbers
git clone https://github.com/Xor-el/SimpleBaseLib4Pascal
git clone https://github.com/Xor-el/HashLib4Pascal
git clone https://github.com/Xor-el/CryptoLib4Pascal
git clone https://github.com/svanas/delphereum.git
```

## Search path

Assuming your project is named `SDKClient` and you have a projects directory with this structure...

```
SDKClient
XDC3Delphi 
CryptoLib4Pascal
delphereum
DelphiBigNumbers
HashLib4Pascal
SimpleBaseLib4Pascal
```

...then this is your Delphi search path:

```
../delphereum;../DelphiBigNumbers/Source;../CryptoLib4Pascal/CryptoLib/src/Interfaces;../CryptoLib4Pascal/CryptoLib/src/Math;../CryptoLib4Pascal/CryptoLib/src/Utils;../CryptoLib4Pascal/CryptoLib/src/Security;../HashLib4Pascal/HashLib/src/Interfaces;../HashLib4Pascal/HashLib/src/Utils;../CryptoLib4Pascal/CryptoLib/src/Utils/Randoms;../HashLib4Pascal/HashLib/src/Base;../HashLib4Pascal/HashLib/src/KDF;../HashLib4Pascal/HashLib/src/Nullable;../HashLib4Pascal/HashLib/src/NullDigest;../HashLib4Pascal/HashLib/src/Checksum;../HashLib4Pascal/HashLib/src/Hash32;../HashLib4Pascal/HashLib/src/Hash64;../HashLib4Pascal/HashLib/src/Hash128;../HashLib4Pascal/HashLib/src/Crypto;../HashLib4Pascal/HashLib/src/Interfaces/IBlake2BParams;../HashLib4Pascal/HashLib/src/Crypto/Blake2BParams;../HashLib4Pascal/HashLib/src/Interfaces/IBlake2SParams;../HashLib4Pascal/HashLib/src/Crypto/Blake2SParams;../CryptoLib4Pascal/CryptoLib/src/Crypto/Digests;../CryptoLib4Pascal/CryptoLib/src/Asn1/Pkcs;../CryptoLib4Pascal/CryptoLib/src/Asn1;../CryptoLib4Pascal/CryptoLib/src/Utils/Encoders;../SimpleBaseLib4Pascal/SimpleBaseLib/src/Bases;../SimpleBaseLib4Pascal/SimpleBaseLib/src/Utils;../SimpleBaseLib4Pascal/SimpleBaseLib/src/Interfaces;../CryptoLib4Pascal/CryptoLib/src/Asn1/RossStandart;../CryptoLib4Pascal/CryptoLib/src/Asn1/Oiw;../CryptoLib4Pascal/CryptoLib/src/Asn1/Nist;../CryptoLib4Pascal/CryptoLib/src/Asn1/Misc;../CryptoLib4Pascal/CryptoLib/src/Asn1/TeleTrust;../CryptoLib4Pascal/CryptoLib/src/Asn1/CryptoPro;../CryptoLib4Pascal/CryptoLib/src/Crypto/Prng;../CryptoLib4Pascal/CryptoLib/src/Utils/Rng;../CryptoLib4Pascal/CryptoLib/src/Crypto/Engines;../CryptoLib4Pascal/CryptoLib/src/Crypto/Parameters;../CryptoLib4Pascal/CryptoLib/src/Crypto;../CryptoLib4Pascal/CryptoLib/src/Math/EC;../CryptoLib4Pascal/CryptoLib/src/Crypto/EC;../CryptoLib4Pascal/CryptoLib/src/Math/EC/Endo;../CryptoLib4Pascal/CryptoLib/src/Asn1/Sec;../CryptoLib4Pascal/CryptoLib/src/Asn1/X9;../CryptoLib4Pascal/CryptoLib/src/Asn1/CryptLib;../CryptoLib4Pascal/CryptoLib/src/Math/Raw;../CryptoLib4Pascal/CryptoLib/src/Math/EC/Multiplier;../CryptoLib4Pascal/CryptoLib/src/Math/EC/Abc;../CryptoLib4Pascal/CryptoLib/src/Math/Field;../CryptoLib4Pascal/CryptoLib/src/Math/EC/Custom/Sec;../CryptoLib4Pascal/CryptoLib/src/Math/EC/Custom/Djb;../CryptoLib4Pascal/CryptoLib/src/Crypto/Signers;../CryptoLib4Pascal/CryptoLib/src/Crypto/Generators;../CryptoLib4Pascal/CryptoLib/src/Crypto/Macs;../XDC3Delphi
```

## To Configure Any Compatible Network 


Some config changes require in web3.pas in delphereum repository you just cloned in your local machine.

For Example to setup Apothem Network changes require in web3.pas file 


## Step 1

Add any Comapatible Network name in TChain 

For Example

type

  TChain = (

    Ethereum,

    Apothem,

    ...
  );

## Step 2

In Funtion TChainHelper.Id add Chain id of that network, i.e., Apothem as 51 

For Example

CHAIN_ID: array[TChain] of Integer = (

    1,     // Mainnet

    51,    // Apothem

    ...
  );

## Step 3

In Function TChainHelper.TxType add TX_TYPE as 0 

For Example

 TX_TYPE: array[TChain] of Byte = (

    2, // Mainnet

    0, // Apothem
    ...
  );

## Step 4

In Function TChainHelper.BlockExplorerURL add Block Explorer Url as  'https://apothemxdcpayrpc.blocksscan.io/' for the Apothem Network


For Example

BLOCK_EXPLORER_URL: array[TChain] of string = (

    'https://etherscan.io',                              // Mainnet

    'https://apothemxdcpayrpc.blocksscan.io/',           // Apothem
    
     ...
  );


## This SDK supports following Read & Write operations


  |    XRC20 Token: Read methods                    |   XRC20 Token: Write methods                          |
  |     ---                                         |   ---                                                 | 
  |     name()                                      |   approve(receiverAddress , amount)                   |
  |     symbol()                                    |   transfer(recipient, amount)                         |
  |     decimal()                                   |   transferFrom(sender, recipient, amount)             |
  |     totalSupply()                               |   increaseAllowance(spender, addedValue)              |
  |     balanceOf(account)                          |   decreaseAllowance(spender, subtractedValue)         |
  |     allowance(owner, spender)                   |                                                       |
  |                                                 |                                                       |
                                            
  |    XRC721 Token: Read methods                   |   XRC721 Token: Write methods                         |
  |     ----                                        |   ----                                                |
  |     name()                                      |   setApprovalForAll(operatorAddress, booleanValue)    |
  |     symbol()                                    |   approve(receiverAddress , tokenId)                  |
  |     totalSupply()                               |   transferFrom(recipient, tokenId)                    |
  |     balanceOf(owner address)                    |   safeTransferFrom(spender, tokenId)                  |
  |     ownerOf(tokenId)                            |                                                       |
  |     tokenURI(tokenId)                           |                                                       |
  |     tokenByIndex(index)                         |                                                       |
  |     tokenOfOwnerByIndex(ownerAddress,index)     |                                                       |
  |     supportInterface(interfaceId)               |                                                       |
  |     getApproved(tokenId)                        |                                                       |
  |     isApprovedForAll(ownerAddress,operator)     |                                                       |
  |                                                 |                                                       |



## Test code for XDC3Delphi SDK

The following test project files can be used for calling XRC20 & XRC721 functions in XDC3Delphi SDK

SDK_DELPHI_GUI.dpr 

SDK_DELPHI_GUI.dproj

XDC3_DELPHI.dfm

XDC3_DELPHI.pas

### How to copy Transaction hash or Private key ?
> After perforning operations output will be on GUI pop-up.
>> Click on pop-up result and press ctrl-c and paste result on notepad.
>> Then use that result




