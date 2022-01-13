//
//  DrinksViewModel.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 08/01/22.
//

import Foundation

struct DrinksViewModel{
    
    var drink:Drink
    
    init(drink:Drink){
        self.drink = drink
    }
    
    var _id:String{
        return self.drink._id
    }
    
    var usrId:String{
        return self.drink.usrId
    }
    
    var name:String{
        return self.drink.name
    }
    
    var done:Bool{
        return self.drink.done
    }
    
}

class DrinksListViewModel:ObservableObject{
    @Published var Drinks = [DrinksViewModel]()
    
}
