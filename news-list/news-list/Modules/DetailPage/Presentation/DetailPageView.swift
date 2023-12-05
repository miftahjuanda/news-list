//
//  DetailPageView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 05/12/23.
//

import SwiftUI

internal struct DetailPageView: View {
    let newsEntity: NewsListEntity
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Group {
                    Text(newsEntity.title)
                        .font(.title)
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text(newsEntity.contributorName)
                        .foregroundColor(Color.red.opacity(0.7))
                        .padding(.bottom, 10)
                    Text(newsEntity.createdAt)
                        .font(.footnote)
                        .lineLimit(1)
                        .foregroundColor(Color.gray)
                    
                }
                Group {
                    SliderImage(images: newsEntity.slideshow)
                    Spacer()
                }
                
                Text(newsEntity.content+newsEntity.content)
                    .font(.footnote)
                    .foregroundColor(Color.black)
            }
            .padding()
        }
    }
}

private struct SliderImage: View {
    let images: [String]
    @State private var selectImage: String = ""
    
    var body: some View {
        VStack {
            Image(systemName: "photo.on.rectangle.angled")
                .resizable()
                .frame(height: UIScreen.main.bounds.width/1.7)
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(images, id: \.self) { img in
                        Image(systemName: "photo.on.rectangle.angled")
                            .resizable()
                            .frame(width: 90, height: 70)
                            .onTapGesture {
                                selectImage = img
                            }
                        Divider()
                    }
                }
            }
        }
        .clipped()
        .padding()
    }
}

#Preview {
    DetailPageView(newsEntity: valuesDUmmy.first!)
}
