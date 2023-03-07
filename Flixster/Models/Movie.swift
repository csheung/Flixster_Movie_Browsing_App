//
//  Movie.swift
//  Flixster
//
//  Created by Derrick Ng on 3/3/23.
//

import Foundation

// TODO: Create a Movie model struct
struct Movie {
    let movieTitle: String
    let movieOverview: String
    let posterPath: URL
    // Detail properties
    let backdropPath: URL
    let releaseDate: Date
    let popularity: Double
    let voteAverage: Double
    let voteCount: Int
//    let movieTimeMillis: Int
}

// TODO: Create an extension with a mock movies static var
extension Movie {

    /// An array of mock movies
    static var mockMovies: [Movie] = [
        Movie(movieTitle: "Knock at the Cabin", movieOverview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", posterPath: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!, backdropPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!, releaseDate: Date(), popularity: 4112.616, voteAverage: 6.5, voteCount: 670),
        Movie(movieTitle: "Black Panther: Wakanda Forever", movieOverview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", posterPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!, backdropPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!, releaseDate: Date(), popularity: 2678.485, voteAverage: 7.4, voteCount: 3708),
        Movie(movieTitle: "Puss in Boots: The Last Wish", movieOverview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.", posterPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, backdropPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!, releaseDate: Date(), popularity: 2311.833, voteAverage: 8.4, voteCount: 4159),
        Movie(movieTitle: "Plane", movieOverview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.", posterPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!, backdropPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!, releaseDate: Date(), popularity: 2001.922, voteAverage: 6.9, voteCount: 717),
        Movie(movieTitle: "Little Dixie", movieOverview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", posterPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!, backdropPath: URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!, releaseDate: Date(), popularity: 1538.518, voteAverage: 6.2, voteCount: 33)
    ]

    // We can now access this array of mock movies anywhere like this:
    // let movies = Movies.mockMovies
}

//// MARK: Helper Methods
///// Converts milliseconds to mm:ss format
/////  ex:  208643 -> "3:28"
//func formattedTrackDuration(with milliseconds: Int) -> String {
//    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
//    let truncatedSeconds = seconds / 1000
//    if truncatedSeconds >= 10 {
//        return "\(minutes):\(truncatedSeconds)"
//    } else {
//        return "\(minutes):0\(truncatedSeconds)"
//    }
//}
