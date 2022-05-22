//
//  DataFilms.swift
//  MeuPrimeiroAppIos
//
//  Created by Dan on 14/05/2022.
//

import Foundation

class DataFilms {
    static var films:[Film] = []
    
    static func getFavoriteFilms() -> [Film] {
        var favoriteFilms:[Film] = []
        
        for film in DataFilms.films{
            if(film.isMyFavorite){
                favoriteFilms.append(film)
            }
        }
        
        return favoriteFilms
    }
    
}
