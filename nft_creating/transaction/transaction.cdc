import CryptoPoops from 0x01
import NonFungibleToken from 0x02

transaction() {

  prepare(acct: AuthAccount) {
    acct.save(<-CryptoPoops.createEmptyCollection(), to: /storage/Collection )
    acct.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic, CryptoPoops.PublicCollection }>(/public/Collection, target: /storage/Collection )
  }

  execute {
    log("Congrats The Collection is Created !!")
  }
}
