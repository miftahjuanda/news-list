//
//  HomeViewModel.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 06/12/23.
//

import SwiftUI
import Combine

internal class HomeViewModel: ObservableObject {
    private let networking: NetworkService
    private var cancellables: Set<AnyCancellable> = []
    
    @Published var newsList: [NewsListEntity] = []
    @Published var newsRecomendation: [NewsListEntity] = []
    
    init(networking: NetworkService = NetworkManager()) {
        self.networking = networking
    }
    
    func getNewslist() {
        let response: AnyPublisher<[NewsListResponse], APIError> = networking.request(.getNews, headers: nil, parameters: nil)
        response
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Success")
                case .failure(let error):
                    self.newsList = []
                    print("Error: \(error)")
                }
            }
    receiveValue: { response in
        self.newsList = self.mapData(response)
        self.newsRecomendation = getRandomNews(self.newsList)
    }
    .store(in: &cancellables)
    }
    
    private func mapData(_ data: [NewsListResponse]) -> [NewsListEntity] {
        let sortByDate = data.sorted { string1, string2 in
            guard let date1 = string1.createdAt?.stringToDate(),
                  let date2 = string2.createdAt?.stringToDate() else { return false }
            return date1 < date2
        }
        
        let newsList: [NewsListEntity] = sortByDate.map { res in
            let slideshow: [String] = res.slideshow.isEmpty ? [res.contentThumbnail ?? ""] : res.slideshow
            
            return NewsListEntity(createdAt: res.createdAt?.dateToString() ?? "",
                                  contributorName: res.contributorName ?? "",
                                  contributorAvatar: res.contributorAvatar ?? "",
                                  title: res.title ?? "",
                                  content: res.content ?? "",
                                  contentThumbnail: res.contentThumbnail ?? "",
                                  slideshow: slideshow,
                                  id: res.id ?? "")
        }
        return newsList
    }
}
