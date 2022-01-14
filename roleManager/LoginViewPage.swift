//
//  LoginViewPage.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 10/01/22.
//

import SwiftUI

struct LoginViewPage: View {
    
    @State var isWrong = false
    let screnWidth = UIScreen.main.bounds.size.width
    
    
    let screnHeigth = UIScreen.main.bounds.size.height
    
    @State private var userName: String = ""
    @State private var passWord: String = ""
    
    var body: some View {
        VStack{
            logo
            mainText
                .padding(20)
                .frame(width: 411, height: 54)
                .foregroundColor(Color(UIColor(red: 0.027, green: 0, blue: 0.302, alpha: 1)))
                .offset(x: 0, y: 180)
            VStack{
                inpultUserName
                inpultPassword

            }.offset(x: 0, y: 200)
            buttonLogin
            lbInvite
            
        }.position(x:screnWidth/2, y: screnHeigth*0.32)
            
    }
    
//TODO: Criar uma page_laout para esses inpults
    //MARK: Logo
        var logo:some View{
            Image(systemName: "square")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 96, height: 96)
                .padding(EdgeInsets.init(top: 60, leading: 24, bottom: -180, trailing: 24))
                
                
        }
        
    //MARK: Texto principal
    var mainText: some View{
        Text("Entre com a sua conta")
            .font(Font.custom("Poppins-Bold", size: 36))
    }
        

    //MARK: Inpults
        var inpultUserName: some View{
            VStack{
               
                
                if(isWrong == false){
                    
                    Text("Email")
                        .foregroundColor(Color(UIColor(red: 0.027, green: 0, blue: 0.302, alpha: 1)))
                        .frame(width: screnWidth/8, height:24)
                        .offset(x: -screnWidth/2.65, y: 10)
                        
                    TextField("Digite seu usuario", text: $userName)
                               .padding()
                               .padding(EdgeInsets(top: 10, leading: 10, bottom: 15, trailing: 10))
                               .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black,lineWidth: 1)
                                .padding())
                    
                }else{
                    Text("Email")
                        .foregroundColor(Color.red)
                        .frame(width: screnWidth/8, height:24)
                        .offset(x: -screnWidth/2.65, y: 10)
                    
                    TextField("Digite seu usuario", text: $userName)
                               .padding()
                               .padding(EdgeInsets(top: 10, leading: 10, bottom: 15, trailing: 10))
                               .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.red,lineWidth: 1)
                                .padding())
                    Text("Login ou senha incorreta")
                        .foregroundColor(.red)
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .lineLimit(2)
                        .frame(width: screnWidth/2, height:24)
                        .offset(x: -screnWidth/4.3, y: -10)
                }
            }
        }
        
        var inpultPassword: some View{
            VStack{
                
                
                if(isWrong == false){
                    
                    Text("Senha")
                        .foregroundColor(Color(UIColor(red: 0.027, green: 0, blue: 0.302, alpha: 1)))
                        .frame(width: screnWidth/8, height:24)
                        .offset(x: -screnWidth/2.65, y: 10)
                    
                    SecureField("Digite sua senha", text: $passWord)
                               .disableAutocorrection(true)
                               
                               .padding()
                               .padding(EdgeInsets(top: 10, leading: 10, bottom: 15, trailing: 10))
                               .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.black,lineWidth: 1)
                                .padding()
                               )
                    
                }else{
                    Text("Senha")
                        .foregroundColor(.red)
                        .frame(width: screnWidth/8, height:24)
                        .offset(x: -screnWidth/2.65, y: 10)
                    
                    SecureField("Digite sua senha", text: $passWord)
                               .disableAutocorrection(true)
                               
                               .padding()
                               .padding(EdgeInsets(top: 10, leading: 10, bottom: 15, trailing: 10))
                               .overlay(
                               RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.red,lineWidth: 1)
                                .padding()
                               )
                    Text("Login ou senha incorreta")
                        .foregroundColor(.red)
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .lineLimit(2)
                        .frame(width: screnWidth/2, height:24)
                        .offset(x: -screnWidth/4.3, y: -10)
                }
                
                
            }
        }
        
        var buttonLogin: some View{
            
            Button {
                
                let isValidUsername = RegexValidations.isValidEmail(email:userName)
                //TODO: Fazer o regex da senha funcionar
                let isValidPass = RegexValidations.isValidPassword(pass: passWord)
                
                if(isValidUsername != true){
                isWrong = true
                }else{
                print("pass")
                }
                
            //TODO: Depois fazer a seta ficar vermelha tb
            } label: {
                Image("Login")
                    .resizable()
                    .frame(width: 98, height: 98)
                    .offset(x: 0, y: -40)
            }.padding()
                .background(.white)
                .cornerRadius(8)
                .offset(x: 0, y: screnWidth/1.9)
                .foregroundColor(.black)

        }
        
        var lbInvite: some View{
            VStack{
                Text("Recebeu um convite e ainda não se cadastrou?")
                    .font(Font.custom("Poppins-Regular", size: 18))
                    .foregroundColor(Color(UIColor(red: 0.027, green: 0, blue: 0.302, alpha: 1)))
                    .offset(x: 0, y: screnHeigth/4)
                Button{
                    
                }label: {
                    Text("Clique aqui")
                        .foregroundColor(Color(UIColor(red: 0.365, green: 0.373, blue: 0.937, alpha: 1)))
                        .font(Font.custom("Poppins-Bold", size: 18))
                        .offset(x: 0, y: screnHeigth/3.6)
                        
                }
            }
        }


struct LoginViewPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginViewPage()
    }
}
    
}
