//
//  MovieCollectionViewCell.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 07/07/23.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    var imageMovie: UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        self.backgroundColor = Extras().myViewBackgroundColor
        imageMovie = UIImageView(frame: CGRect(x: 23, y: 8, width: Constants.width/4, height: Constants.height/3.6))
        imageMovie?.backgroundColor = UIColor.black
        imageMovie?.contentMode = .scaleAspectFill
        imageMovie?.image = UIImage(named: "logo")
        self.addSubview(imageMovie!)
    }
    
    func setData(movieImage: MoviesImage){
        imageMovie?.image = UIImage(named: movieImage.image ?? "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
