pub contract MusicContract {
    pub var Songs: {String: Song}
    
    pub struct Song {
        pub let Title: String
        pub let Artist: String
        pub let Year: Int
        pub let Genre: String

        init(_Title: String, _Artist: String, _Year: Int, _Genre: String) {
            self.Title = _Title
            self.Artist = _Artist
            self.Year = _Year
            self.Genre = _Genre
        }
    }
    
    pub fun addSong(Title: String, Artist: String, Year: Int, Genre: String) {
        let newSong = Song(_Title: Title, _Artist: Artist, _Year: Year, _Genre: Genre)
        self.Songs[Title] = newSong
    }
    
    init() {
        self.Songs = {}
    }
}
