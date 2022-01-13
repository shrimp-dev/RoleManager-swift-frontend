//
//  CustomImagemView.swift
//  roleManager
//
//  Created by Gabriel Aderaldo on 08/01/22.
//

import Foundation
import SwiftUI


struct CustomImageViewRounded: View{
    
    var urlString: String
    @ObservedObject var imageLoader = ImageLoaderService()
    @State var image: UIImage = UIImage()
    
    var body: some View{
        Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode:.fill)
                        .frame(width:50, height:50)
                        .cornerRadius(100.0)
                        .onReceive(imageLoader.$image) { image in
                            self.image = image
                        }
                        .onAppear {
                            imageLoader.loadImage(for: urlString)
                        }
                }

    }
    

class ImageLoaderService: ObservableObject {
    @Published var image: UIImage = UIImage()
    
    func loadImage(for urlString: String) {
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data) ?? UIImage()
            }
        }
        task.resume()
    }
    
}
