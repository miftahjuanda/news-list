//
//  HorizontalSlider.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import SwiftUI

internal struct HorizontalSlider: View {
    let items: [NewsListEntity]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(items, id: \.self) { item in
                    NavigationLink(destination: DetailPageView(newsEntity: item)) {
                        VStack {
                            HorizontalItems(image: item.contentThumbnail,
                                            contributor: item.contributorName,
                                            title: item.title)
                        }
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.red.withAlphaComponent(0.7)
                UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGray
            }
        }
    }
}

private struct HorizontalItems: View {
    let image: String
    let contributor: String
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            AsyncImage(url: URL(string: image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 200)
            Spacer(minLength: 5)
            
            Text(contributor)
                .lineLimit(1)
                .foregroundColor(Color.red.opacity(0.7))
            
            Spacer(minLength: 5)
            Text(title)
                .font(.title)
                .lineLimit(2)
                .foregroundColor(Color.gray)
            Spacer()
        }
        .padding()
    }
}

//#Preview {
//    HorizontalSlider(items: valuesDUmmy)
//}
