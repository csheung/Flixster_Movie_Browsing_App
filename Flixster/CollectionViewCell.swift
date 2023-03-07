//
//  CollectionViewCell.swift
//  Flixster
//
//  Created by Derrick Ng on 3/7/23.
//

import UIKit
import Nuke

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"
    
    @IBOutlet weak var moviePoster: UIImageView!
    
    /// Configures the cell's UI for the given movie.
    func configure(with posterURL: URL) {
        
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: posterURL, into: moviePoster)
    }
    
//    private let imageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        return imageView
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        contentView.addSubview(imageView)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError()
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        imageView.frame = contentView.bounds
//    }
//
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        imageView.image = nil
//    }
}
