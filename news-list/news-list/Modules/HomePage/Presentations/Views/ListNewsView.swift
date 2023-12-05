//
//  ListNewsView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 05/12/23.
//

import SwiftUI

struct ListNewsView: View {
    let image: String
    let contributor: String
    let title: String
    let date: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Group {
                Image(systemName: "photo.on.rectangle.angled")
                    .imageFrom(URL(string: image)!)
                    .resizable()
                    .frame(width: 300,
                           height: 200)
                    .clipped()
            }
            .padding([.bottom], 10)
            
            Group {
                Text(contributor)
                    .lineLimit(1)
                    .foregroundColor(Color.red.opacity(0.7))
                
                Spacer(minLength: 10)
                Text(title)
                    .font(.title)
                    .lineLimit(3)
                    .foregroundColor(Color.black.opacity(0.7))
                Spacer()
                Text(date)
                    .font(.footnote)
                    .lineLimit(2)
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    ListNewsView(image: "https://loremflickr.com/640/480",
                 contributor: "Alma Dickens",
                 title: "sed quisquam ipsa", 
                 date: "2023-09-13")
}
