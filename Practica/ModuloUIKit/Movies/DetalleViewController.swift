//
//  DetalleViewController.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 06/07/23.
//

import UIKit

class DetalleViewController: UIViewController {
    
    var movieContent: UIView?
    var movieName: UILabel?
    var movieDirector: UILabel?
    var movieDescription: UILabel?
    var movieYear: UILabel?
    var movieDuration: UILabel?
    var movieCover: UIImageView?
    
    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        initUI()
        
    }
    
    init(movie: Movie?){
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI(){
        
        movieContent = UIView(frame: CGRect(x: 5, y: 5, width: Constants.width - 10 , height: Constants.height/2))
        movieContent?.backgroundColor = .clear
        movieContent?.layer.cornerRadius = 10
        view.addSubview(movieContent!)
        
        
        movieName = UILabel(frame: CGRect(x: 20, y: 200, width: 300, height: 120))
        movieName?.text = movie?.name
        movieName?.textAlignment = .center
        movieName?.textColor = .white
        movieName?.numberOfLines = 0
        movieName?.font = .boldSystemFont(ofSize: 40)
        movieContent?.addSubview(movieName!)
        
        movieDirector = UILabel(frame: CGRect(x: 10, y: 380, width: 250, height: 20))
        movieDirector?.text = "Director: \(movie?.director ?? "")"
        movieDirector?.textAlignment = .left
        movieDirector?.textColor = .white
        movieDirector?.font = .boldSystemFont(ofSize: 18)
        movieContent?.addSubview(movieDirector!)
        
        movieDescription = UILabel(frame: CGRect(x: 10, y: 440, width: 350, height: 200))
        movieDescription?.text = "Description: \(movie?.description ?? "")"
        movieDescription?.textAlignment = .justified
        movieDescription?.textColor = .white
        movieDescription?.font = .boldSystemFont(ofSize: 18)
        movieDescription?.numberOfLines = 0
        movieContent?.addSubview(movieDescription!)
        
        movieYear = UILabel(frame: CGRect(x: 10, y: 400, width: 250, height: 20))
        movieYear?.text = "Año: \(movie?.year ?? 0)"
        movieYear?.textAlignment = .left
        movieYear?.textColor = .white
        movieYear?.font = .boldSystemFont(ofSize: 18)
        movieContent?.addSubview(movieYear!)
        
        movieDuration = UILabel(frame: CGRect(x: 10, y: 420, width: 250, height: 20))
        movieDuration?.text = "Duracion: \(movie?.duration ?? 0) min."
        movieDuration?.textAlignment = .left
        movieDuration?.textColor = .white
        movieDuration?.font = .boldSystemFont(ofSize: 18)
        movieContent?.addSubview(movieDuration!)
        
        movieCover = UIImageView(frame: CGRect(x: 95, y: 5, width: 200, height: 200))
        movieCover?.image = UIImage(named: movie?.cover ?? "go")
        movieCover?.layer.cornerRadius = 10
        movieCover?.layer.masksToBounds = true
        movieContent?.addSubview(movieCover!)
    }

    
}
