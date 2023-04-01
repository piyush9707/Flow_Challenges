import MusicContract from 0x01

transaction(Title: String, Artist: String, Year: Int, Genre: String) {

  prepare(signer: AuthAccount) {}

  execute {
    MusicContract.addSong(Title: Title, Artist: Artist, Year: Year, Genre: Genre)
    log("Song added")
  }
}
