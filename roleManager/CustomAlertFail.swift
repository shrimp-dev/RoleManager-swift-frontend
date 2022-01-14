//
//  CustomAlertFail.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 14/01/22.
//

import SwiftUI

struct CustomAlertFail: View {
    @Environment(\.presentationMode) var presentation
    var body: some View {
            VStack{
             
                Image("fail")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .offset(x: 0, y: 200)
                
                Text("Fail")
                    .offset(x: 0, y: 60)
                    .font(.title)
                
                
                HStack{
                    Button{
                    self.presentation.wrappedValue.dismiss()
                    }label: {
                        Text("OK")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: UIScreen.main.bounds.width/1.5,height: 50)
                            .offset(x: 0, y: 80)
                    }
                    
                }.frame(width: UIScreen.main.bounds.width/1.3, height: 300)
                    .background(Color.black.opacity(0.3))
                    .cornerRadius(12)
                    .clipped()
                
            }
    }
}

struct CustomAlertFail_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertFail()
    }
}
