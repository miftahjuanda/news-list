//
//  HomePageView.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import SwiftUI

internal struct HomePageView: View {
    @ObservedObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if !viewModel.newsList.isEmpty {
                    ScrollView {
                        HorizontalSlider(items: viewModel.newsRecomendation)
                            .frame(height: 350)
                        
                        Divider()
                        Text("Latest News")
                            .font(.title)
                            .foregroundColor(.black)
                        Divider()
                        
                        Spacer()
                        VStack {
                            ForEach(viewModel.newsList) { list in
                                ListNewsView(news: list)
                                Divider()
                            }
                        }
                    }
                    .background(Color.clear)
                } else {
                    VStack {
                        Spacer()
                        ProgressView("Loading...")
                            .padding()
                            .background(Color.secondary.colorInvert())
                            .cornerRadius(10)
                        Spacer()
                    }
                }
            }
            .background(Color.clear)
            .navigationTitle("Hot News")
            .onAppear {
                if viewModel.newsList.isEmpty {
                    viewModel.getNewslist()
                }
            }
        }
    }
}

//#Preview {
//    HomePageView()
//}
