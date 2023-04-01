import CryptoPoops from 0x01
import NonFungibleToken from 0x02

transaction(recipient: Address, name: String, favouriteFood: String, luckyNumber: Int) {

  prepare(acct: AuthAccount) {
    let nftMinter = acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter) ?? panic("NFT minter is Missing")

    let publicRefrence = getAccount(recipient).getCapability(/public/Collection) 
                          .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>() 
                          ?? panic("Collection Absent ")

    publicRefrence.deposit(token: <-nftMinter.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber))
  }

  execute {
    log("LFG LFG  Nft Minted !!!")
  }
}
