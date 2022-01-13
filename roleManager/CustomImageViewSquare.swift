//
//  CustomImageViewSquare.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 08/01/22.
//

import Foundation
import SwiftUI


struct CustomImageViewSquare: View{
    
    var urlString: String
    var escaleScreen:CGFloat = 1.0
    @ObservedObject var imageLoader = ImageLoaderService()
    @State var image: UIImage = UIImage()
    
    var body: some View{
        Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width:300*escaleScreen, height:200*escaleScreen)
                        .cornerRadius(20)
                        .onReceive(imageLoader.$image) { image in
                            self.image = image
                        }
                        .onAppear {
                            imageLoader.loadImage(for: urlString)
                        }
                }

    }
    
