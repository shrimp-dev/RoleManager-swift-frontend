//
//  LoginViewPage.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 10/01/22.
//

import SwiftUI

struct LoginViewPage: View {
    
    
    let screnWidth = UIScreen.main.bounds.size.width
    
    let screnHeigth = UIScreen.main.bounds.size.height
    
    @State private var userName: String = ""
    @State private var passWord: String = ""
    
    var body: some View {
        VStack{
            logo
            mainText.padding(Edge.Set.bottom,64)
            inpultUserName
            inpultPassword
            buttonLogin
            lbInvite
            
        }.position(x:screnWidth/2, y: screnHeigth*0.25)
            .background(
                LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
    }


//MARK: Logo
    var logo:some View{
        Image("Logo")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .frame(width: 74.0, height: 74.0)
            .padding(EdgeInsets.init(top: 128, leading: 24, bottom: 36, trailing: 24))
            
    }
    
//MARK: Texto principal
var mainText: some View{
    Text("Faça o login com a sua conta")
        .font(.title2)
        .bold()
}
    

//MARK: Inpults
    var inpultUserName: some View{
        TextField("usuario", text: $userName)
                   .padding()
                   .background(Color.white)
                   .cornerRadius(4.0)
                   .padding(EdgeInsets(top: 0, leading: 10, bottom: 15, trailing: 10))
    }
    
    var inpultPassword: some View{
        TextField("senha", text: $passWord)
                   .padding()
                   .background(Color.white)
                   .cornerRadius(4.0)
                   .padding(EdgeInsets(top: 0, leading: 10, bottom: 15, trailing: 10))
    }
    
    var buttonLogin: some View{
        Button {
            print("clicado")
        } label: {
            Text("Login").frame(width: screnWidth/1.5, height: 50, alignment: .center)
        }.padding()
            .background(.white)
            .cornerRadius(8)
            .offset(x: 0, y: screnWidth/2.5)
            .foregroundColor(.black)

    }
    
    var lbInvite: some View{
        Button{
            print("invite")
        } label: {
            Text("Já foi convidado?")
        }.offset(x: 0, y: screnWidth/2.5)

    }
        
    
struct LoginViewPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewPage()
    }
}
    
}
