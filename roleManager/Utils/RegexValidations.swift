//
//  RegexValidations.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 13/01/22.
//

import Foundation

public class RegexValidations{
    
    static func isValidEmail(email: String) -> Bool {
                let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
                let test = NSPredicate(format: "SELF MATCHES %@", regex)
                let result = test.evaluate(with: email)
                
                return result
    }
    
    static func isValidPassword(pass: String) -> Bool{
        let passRegex = "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,20}"
        let isPass = NSPredicate(format: "SELF MATCHES %@", passRegex)
        return isPass.evaluate(with: passRegex)
    }
    
    static func isValidUrl(url: String) -> Bool {
           let urlRegEx = "(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+"
           let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegEx)
           let result = urlTest.evaluate(with: url)
           return result
       }
    
}
