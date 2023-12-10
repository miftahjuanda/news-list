//
//  ListNewsView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 05/12/23.
//

import SwiftUI

struct ListNewsView: View {
    @State var news: NewsListEntity
    
    var body: some View {
        NavigationLink(destination: DetailPageView(newsEntity: news)) {
            
            VStack(alignment: .leading) {
                Spacer()
                Group {
                    AsyncImage(url: URL(string: news.contentThumbnail)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 300, height: 200)
                }
                .padding([.bottom], 10)
                
                Group {
                    Text(news.contributorName)
                        .lineLimit(1)
                        .foregroundColor(Color.red.opacity(0.7))
                    
                    Spacer(minLength: 10)
                    Text(news.title)
                        .font(.title)
                        .lineLimit(3)
                        .foregroundColor(Color.black.opacity(0.7))
                    Spacer()
                    Text(news.createdAt)
                        .font(.footnote)
                        .lineLimit(2)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            .padding(.bottom, 10)
        }
    }
}

//#Preview {
//    ListNewsView(news: )
//}
