//
//  MoviesTableViewCell.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 03/07/23.
//

import Foundation
import UIKit

class MoviesTableViewCell: UITableViewCell {
    var movieContent: UIView?
    var movieName: UILabel?
    var movieDirector: UILabel?
    var movieDescription: UILabel?
    var movieYear: UILabel?
    var movieCover: UIImageView?
    var movie: Movie?
    
    init(movie: Movie){
        super.init(style: .default, reuseIdentifier: nil)
        self.movie = movie
        self.backgroundColor = Extras().myViewBackgroundColor
        
        initUI()
    }
    
    func initUI(){
        
        movieContent = UIView(frame: CGRect(x: 0, y: 0, width: Constants.width/1 , height: Constants.height/7))
        movieContent?.backgroundColor = Extras().myViewBackgroundColor
//        movieContent?.layer.cornerRadius = 10
        self.addSubview(movieContent!)
        
        
        movieName = UILabel(frame: CGRect(x: 80, y: 10, width: 250, height: 20))
        movieName?.text = movie?.name
        movieName?.textAlignment = .left
        movieName?.font = .boldSystemFont(ofSize: 22)
        movieName?.textColor = .gray
        movieContent?.addSubview(movieName!)
        
        movieDirector = UILabel(frame: CGRect(x: 80, y: 40, width: 250, height: 20))
        movieDirector?.text = "Director: \(movie?.director ?? "")"
        movieDirector?.textAlignment = .left
        movieDirector?.font = .boldSystemFont(ofSize: 16)
        movieDirector?.textColor = Extras().titleColor
        movieContent?.addSubview(movieDirector!)
        
//        movieDescription = UILabel(frame: CGRect(x: 80, y: 70, width: 250, height: 20))
//        movieDescription?.text = "Description: \(movie?.description ?? "")"
//        movieDescription?.textAlignment = .left
//        movieDescription?.font = .boldSystemFont(ofSize: 18)
//        movieDescription?.numberOfLines = 0
//        movieContent?.addSubview(movieDescription!)
        
        movieYear = UILabel(frame: CGRect(x: 80, y: 70, width: 250, height: 20))
        movieYear?.text = "Año: \(movie?.year ?? 0)"
        movieYear?.textAlignment = .left
        movieYear?.font = .boldSystemFont(ofSize: 16)
        movieYear?.textColor = Extras().titleColor
        movieContent?.addSubview(movieYear!)
        
        movieCover = UIImageView(frame: CGRect(x: 10, y: 5, width: 60, height: 80))
        movieCover?.image = UIImage(named: movie?.cover ?? "go")
        movieCover?.layer.cornerRadius = 10
        movieCover?.layer.masksToBounds = true
        movieContent?.addSubview(movieCover!)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
