//
//  HorizontalSlider.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import SwiftUI

internal struct HorizontalSlider: View {
    let items: [NewsListEntity]
    @State private var selectedIndex = 0
    @State private var offset: CGFloat = 0.0
    @State private var index: Int = 0
    
    var body: some View {
        VStack {
            TabView {
                ForEach(Array(items.enumerated()), id: \.element.uuid) { index, item in
                    if index == 0 {
                        HorizontalItems(image: item.contentThumbnail,
                                        contributor: item.contributorName,
                                        title: item.contributorName)
                        .overlay(
                            GeometryReader { proxy -> Color in
                                let minX = proxy.frame(in: .global).minX
                                DispatchQueue.main.async {
                                    withAnimation {
                                        self.offset = -minX
                                    }
                                }
                                return Color.clear
                            }
                                .frame(width: 0, height: 0)
                            , alignment: .leading
                        )
                    } else {
                        HorizontalItems(image: item.contentThumbnail,
                                        contributor: item.contributorName,
                                        title: item.contributorName)
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            Spacer(minLength: 10)
            HStack(spacing: 6) {
                ForEach(0..<(items.count)) { index in
                    let _ = print("~cek index: ", index, selectedIndex)
                    
                    Capsule()
                        .fill(Color.red.opacity(0.7))
                        .frame(width: getIndex() == index ? 40 : 6, height: 6)
                }
            }
        }
    }
    
    private func getIndex() -> Int {
        let index = Int(round(offset / getWidth()))
        print("~cek get index: ", index, getWidth(), offset)
        return index
    }
}

private struct HorizontalItems: View {
    let image: String
    let contributor: String
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Image(systemName: "photo.on.rectangle.angled")
                .imageFrom(URL(string: image)!)
                .resizable()
                .frame(width: 300,
                       height: 200)
                .clipped()
            Spacer(minLength: 10)
            
            Text(contributor)
                .lineLimit(1)
                .foregroundColor(Color.red.opacity(0.7))
            
            Spacer(minLength: 10)
            Text(title)
                .font(.title)
                .lineLimit(2)
                .foregroundColor(Color.gray)
            Spacer()
        }
        .padding()
    }
}

extension View {
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
}

//#Preview {
//    HorizontalSlider(items: valuesDUmmy)
//}
