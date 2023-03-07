//
//  ViewController.swift
//  Flixster
//
//  Created by Derrick Ng on 3/3/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var movies: [Movie] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "MovieCell"
        // `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        // Get the track that corresponds to the table view row
        let movie = movies[indexPath.row]
        
        // set the background color as black
        cell.backgroundColor = UIColor.black
        
        // Configure the cell with its associated movie
        cell.configure(with: movie)
        
        // return the cell for display in the table view
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // UIApplication.shared.setAlternateIconName("movieIcon")
        
        // Set default background color at the back of MovieCell
        tableView.backgroundColor = UIColor(red: 32/255, green: 115/255, blue: 152/255, alpha: 1.0)
        
        // Set movie-related background image for table view and behind the cells
        let backgroundImage = UIImage(named: "movie_bg_image")
        let backgroundImageView = UIImageView(image: backgroundImage)
        tableView.backgroundView = backgroundImageView
        
        // Assign Movie objects into movies array
        movies = Movie.mockMovies
        
        tableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let movie = movies[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.movie = movie
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Get the index path for the current selected table view row (if exists)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

}

