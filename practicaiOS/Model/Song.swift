import Foundation

struct Song: Identifiable, Decodable, Equatable {
    let id: Int
    let name: String
    let artistName: String
    let collectionName: String
    let artworkUrl: String
    let releaseDate: String
    let genre: String
    let time: Int
    let price: Double
    let currency: String
    let previewUrl: String

    
    enum CodingKeys: String, CodingKey {
        case id = "trackId"
        case name = "trackName"
        case artistName
        case collectionName
        case artworkUrl = "artworkUrl100"
        case releaseDate
        case genre = "primaryGenreName"
        case time = "trackTimeMillis"
        case price = "trackPrice"
        case currency
        case previewUrl
    }
}
