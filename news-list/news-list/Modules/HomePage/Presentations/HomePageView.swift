//
//  HomePageView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import SwiftUI

internal struct HomePageView: View {
    var body: some View {
        List {
            VStack {
                HorizontalSlider(items: valuesDUmmy)
                    .frame(height: 300)
                Spacer(minLength: 10)
                
                Group {
                    Divider()
                    Text("Latest News")
                        .font(.largeTitle)
                        .foregroundColor(Color.black.opacity(0.7))
                    Divider()
                }
                
                ForEach(valuesDUmmy, id: \.uuid) { news in
                    ListNewsView(image: news.contentThumbnail,
                                 contributor: news.contributorName,
                                 title: news.title+news.title+news.title+news.title+news.title+news.title,
                                 date: news.createdAt)
                    Divider()
                }
            }
        }
        .background(Color.gray)
    }
}

//#Preview {
//    HomePageView()
//}
