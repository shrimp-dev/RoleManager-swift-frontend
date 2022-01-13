//
//  UrlShared.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 07/01/22.
//

import Foundation

enum UrlType{
    
    case heroku
    
    case localHost
    
    case amazon
    
    case dominio
    
}

final class UrlShared{
    
    static func urlShared(url type: UrlType) -> String{
       
        switch type {
  
        case .heroku:
            return "https://role-manager-cdj.herokuapp.com"
        case .localHost:
            return "localhost:3000"
        case .amazon:
            return "http://3.13.112.254:3000"
        case .dominio:
            return "https://drinkgame.shrimpdev.com"
        }
    
    }
   
    
}
