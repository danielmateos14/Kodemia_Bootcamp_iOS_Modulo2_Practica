//
//  MoviesData.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 06/07/23.
//

import Foundation

class MoviesData{
    
    var imageSource: CollectionMovieObject?
    var objetoMovie: MovieObj?
    
    
    func getImage(){
        let pepeToro = MoviesImage(image: "pepeElToro")
        let soldadoRyan = MoviesImage(image: "ryan")
        let fury = MoviesImage(image: "hierro")
        let castilloAmbulante = MoviesImage(image: "castilloAmbulante")
        let ff = MoviesImage(image: "ff")
        let chucky = MoviesImage(image: "chuvky")
        let extraction = MoviesImage(image: "extraction")
        let horfanato = MoviesImage(image: "orfa")
        let yourName = MoviesImage(image: "name")
        
        let recent = MovieCategory(moviesImage: [pepeToro,
                                                soldadoRyan,
                                                fury,
                                                castilloAmbulante,
                                                ff,
                                                chucky,
                                                extraction,
                                                horfanato,
                                                yourName])
        let image = CollectionMovieObject(movieCategory: [recent])
        
        imageSource = image
    }
    
    func getData(){
        let movie1 = Movie(name: "Pepe el Toro", description: "a lovely true history", cover: "pepeElToro", director: "Mel Gipson", year: 2000, duration: 60.3)
        let movie2 = Movie(name: "Chuky", description: "a terror history", cover: "chuvky", director: "Mel Gup 2 ", year: 2001, duration: 59.0)
        let movie3 = Movie(name: "El Horfanato", description: "a history of special need childs", cover: "orfa", director: "Gillermo del toro ", year: 2006, duration: 90.04)
        
        let warMovi = Movie(name: "Rescatando al soldado Ryan", description: "Es una película bélica épica estadounidense estrenada en 1998 y ambientada en la invasión de Normandía durante la Segunda Guerra Mundial. Dirigido por Steven Spielberg y escrito por Robert Rodat", cover: "ryan", director: "Mark Panigua", year: 2005, duration: 120.8)
        let warMovi2 = Movie(name: "Fury", description: "Un comandante de tanque deberá tomar decisiones muy difíciles mientras él y su equipo luchan en Alemania en 1945.", cover: "hierro", director: "Phil Harvey", year: 2014, duration: 130)
        
        let movie5 = Movie(name: "El Castillo Ambulante", description: "Una historia de amor y fantasia", cover: "castilloAmbulante", director: "Hayao Miyazaki", year: 1999, duration: 119)
        
        let movie6 = Movie(name: "Your Name", description: "Dos adolescentes comparten una profunda y mágica conexión al descubrir que están intercambiando cuerpos”", cover: "name", director: "Makoto Shinkai", year: 2018, duration: 107)
        
        let actionMovie1 = Movie(
            name: "Fast and furious",
            description: "Dominic Toretto to bring down a heroin importer by infiltrating his operation.",
            cover: "ff",
            director: "Justin Lin",
            year: 2009,
            duration: 107)
        let actionMovie2 = Movie(
            name: "Extraction",
            description: "Black market mercenary embarks on the most deadly extraction of his career ",
            cover: "extraction",
            director: "Sam Hargrave",
            year: 2020,
            duration: 116)
        
        let categoryTerror = Category(name: "Terror", movies: [movie1,movie2,movie3])
        let categoryAction = Category(name: "Action", movies: [actionMovie1,actionMovie2])
        let categoryWar = Category(name: "War", movies: [warMovi,warMovi2])
        let categoryAnimation = Category(name: "Animation", movies: [movie5,movie6])
        
        let movieBD = MovieObj(category: [categoryTerror, categoryAction, categoryWar, categoryAnimation])
        
        objetoMovie = movieBD
    }
    
}
