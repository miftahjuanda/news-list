//
//  DetailPageView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 05/12/23.
//

import SwiftUI

internal struct DetailPageView: View {
    @State var newsEntity: NewsListEntity
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(newsEntity.title)
                    .font(.title)
                    .foregroundColor(Color.gray)
                Group {
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
                
                Text(newsEntity.content)
                    .font(.footnote)
                    .foregroundColor(Color.black)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct SliderImage: View {
    @State private var selected: Image = .init(systemName: "")
    let images: [String]
    
    var body: some View {
        VStack {
            selected.resizable()
                .frame(height: UIScreen.main.bounds.width/1.7)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(images, id: \.self) { img in
                        AsyncImage(url: URL(string: img)) { image in
                            image.resizable()
                                .onAppear {
                                    selected = image
                                }
                                .onTapGesture {
                                    selected = image
                                }
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(maxWidth: 90,
                               maxHeight: 70)
                        Spacer(minLength: 5)
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
