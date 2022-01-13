//
//  CustomCellHome.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 08/01/22.
//

import Foundation
import SwiftUI


struct CustomCellHome: View{
    let name:String
    let path:String
    let number:Int
    
    init(name:String,path:String,number:Int){
        self.name = name
        self.path = path
        self.number = number
    }
    
    var body: some View{
        HStack{
            CustomImageViewRounded(urlString: self.path)
            Spacer(minLength: 4)
            Text(self.name)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            
            Spacer(minLength: 30)
                Text(self.number.description)
            
        }
    }
}
