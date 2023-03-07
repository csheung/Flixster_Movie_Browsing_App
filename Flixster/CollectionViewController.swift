//
//  CollectionViewController.swift
//  Flixster
//
//  Created by Derrick Ng on 3/7/23.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var movies: [Movie] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        // Assign Movie objects into movies array
        movies = Movie.mockMovies

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let posterCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
            // Get the track that corresponds to the table view row
            let movie = movies[indexPath.row]
            // Configure the cell with its associated track
            posterCell.configure(with: movie.posterPath)
            
            cell = posterCell
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width/3)-3, height: (view.frame.size.width/3)-3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//    }

}
