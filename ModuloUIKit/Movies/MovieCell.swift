//
//  MovieCell.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 30/06/23.
//

import Foundation

class MovieObj {
    var category: [Category]
    var title: String?
    
    init(category: [Category], title: String? = nil, movies: [Movie]) {
        self.category = category
        self.title = title
    }
}

class Category{
    var name: String?
    var movies: [Movie]
    
    init(name: String? = nil, movies: [Movie]) {
        self.name = name
        self.movies = movies
    }
}

class Movie {
    var name: String?
    var description: String?
    var cover: String?
    var director: String?
    var year: Int?
    var duration: Float?
    
    init(name: String? = nil, description: String? = nil, cover: String? = nil, director: String? = nil, year: Int? = nil, duration: Float? = nil) {
        self.name = name
        self.description = description
        self.cover = cover
        self.director = director
        self.year = year
        self.duration = duration
    }
    
}
