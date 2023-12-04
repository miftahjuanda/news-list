//
//  HomePageView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import SwiftUI

internal struct HomePageView: View {
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    HomePageView()
}
