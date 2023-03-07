//
//  DetailViewController.swift
//  Flixster
//
//  Created by Derrick Ng on 3/4/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var backdropImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var voteAvgLabel: UILabel!
    
    @IBOutlet weak var voteCountLabel: UILabel!
    
    @IBOutlet weak var popularityLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    // A property to store the movie object.
    // We can set this property by passing along the movie object associated with the movie the user tapped in the table view.
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Load the image located at the `movie.backdropPath` URL and set it on backdrop image view.
        Nuke.loadImage(with: movie.backdropPath, into: backdropImageView)
        
        // Set background color
        view.backgroundColor = UIColor.black
        
        // Set labels with the associated movie values.
        titleLabel.text = movie.movieTitle
        voteAvgLabel.text = "\(movie.voteAverage) Vote Avg"
        voteCountLabel.text = "\(movie.voteCount) Votes"
        popularityLabel.text = "\(movie.popularity)\nPopularity"
        overviewLabel.text = movie.movieOverview

        // Set style for every label
        titleLabel.textColor = UIColor.white
        voteAvgLabel.textColor = UIColor.red
        voteCountLabel.textColor = UIColor.red
        popularityLabel.textColor = UIColor.red
        overviewLabel.textColor = UIColor.white
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
