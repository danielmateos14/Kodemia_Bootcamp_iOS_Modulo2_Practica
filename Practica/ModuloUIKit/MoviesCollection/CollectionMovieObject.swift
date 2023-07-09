//
//  CollectionMovieObject.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 06/07/23.
//

import Foundation

class CollectionMovieObject {
    var movieCategory: [MovieCategory]?
//    var title: String?
    
    init(movieCategory: [MovieCategory]?) {
        self.movieCategory = movieCategory
//        self.title = title
    }
}

class MovieCategory{
    var name: String?
    var moviesImage: [MoviesImage]
    
    init(name: String? = nil, moviesImage: [MoviesImage]) {
        self.name = name
        self.moviesImage = moviesImage
    }
}

class MoviesImage {
    var image: String?
    
    init(image: String?) {
        self.image = image
    }
    
}

