//
//  ImageExtensions.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import SwiftUI
import Combine

extension Image {
    func imageFrom(_ url: URL) -> Self {
        @State var downloadedImage: Image = Image(systemName: "photo.on.rectangle.angled")
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let data = data, let loadedImage = UIImage(data: data) {
//                DispatchQueue.main.async {
//                    print("~cek img url: ", url)
//                    downloadedImage = Image(uiImage: loadedImage)
//                }
//            }
//        }.resume()
        return downloadedImage
    }
}
