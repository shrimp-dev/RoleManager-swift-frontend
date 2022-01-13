//
//  PersonViewModel.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 07/01/22.
//

import Foundation



struct PersonViewModel{
    
    var person:Person
    
    init(person: Person){
        self.person = person
    }
    
    var _id:String{
        return self.person._id
    }
    
    var name:String{
        return self.person.name
    }
    
    var path:String{
        return self.person.path
    }
    
}

class PersonListViewModel: ObservableObject{
    @Published var persons = [PersonViewModel]()
    
    }
