//
//  NewsListEntity.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 04/12/23.
//

import Foundation

struct NewsListEntity: Codable, Hashable, Identifiable {
    var uuid = UUID()
    let createdAt, contributorName: String
    let contributorAvatar: String
    let title, content: String
    let contentThumbnail: String
    let slideshow: [String]
    let id: String
}

var valuesDUmmy: [NewsListEntity] = [
    NewsListEntity(createdAt: "2023-09-13T17:30:27.606Z",
                                            contributorName: "Alma Dickens",
                                            contributorAvatar: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/498.jpg",
                                            title: "sed quisquam ipsa",
                                            content: "Modi doloremque odio neque. Quam temporibus laborum distinctio non ea adipisci ipsa maxime vero. Libero aut deleniti. Unde provident molestias omnis laboriosam eaque. Eaque vel temporibus nisi cumque maiores. Nemo at quibusdam quisquam cumque doloribus ipsum blanditiis.\nMinima esse dolorum. Tempora deleniti placeat quis modi debitis voluptatum non. Totam suscipit incidunt voluptas eveniet tenetur consectetur. Possimus atque nam consequatur tenetur.\nDolore illum facilis rem asperiores. Quos quas eaque. Libero recusandae nam vero. Repellendus assumenda facilis velit architecto dolores nihil ipsa temporibus.",
                                            contentThumbnail: "https://loremflickr.com/640/480",
                                            slideshow: [
                                                "https://loremflickr.com/640/490",
                                                "https://loremflickr.com/640/492",
                                                "https://loremflickr.com/640/493",
                                                "https://loremflickr.com/640/494",
                                                "https://loremflickr.com/640/495",
                                                "https://loremflickr.com/640/495",
                                                "https://loremflickr.com/640/495"
                                            ],
                                            id: "47"),
                             NewsListEntity(createdAt: "2023-09-13T17:30:27.606Z",
                                                                     contributorName: "Alma Dickens",
                                                                     contributorAvatar: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/498.jpg",
                                                                     title: "sed quisquam ipsa",
                                                                     content: "Modi doloremque odio neque. Quam temporibus laborum distinctio non ea adipisci ipsa maxime vero. Libero aut deleniti. Unde provident molestias omnis laboriosam eaque. Eaque vel temporibus nisi cumque maiores. Nemo at quibusdam quisquam cumque doloribus ipsum blanditiis.\nMinima esse dolorum. Tempora deleniti placeat quis modi debitis voluptatum non. Totam suscipit incidunt voluptas eveniet tenetur consectetur. Possimus atque nam consequatur tenetur.\nDolore illum facilis rem asperiores. Quos quas eaque. Libero recusandae nam vero. Repellendus assumenda facilis velit architecto dolores nihil ipsa temporibus.",
                                                                     contentThumbnail: "https://loremflickr.com/640/480",
                                                                     slideshow: [
                                                                         "https://loremflickr.com/640/490",
                                                                         "https://loremflickr.com/640/492",
                                                                         "https://loremflickr.com/640/493",
                                                                         "https://loremflickr.com/640/494",
                                                                         "https://loremflickr.com/640/495"
                                                                     ],
                                                                     id: "47"),
    NewsListEntity(createdAt: "2023-09-13T17:30:27.606Z",
                                            contributorName: "Alma Dickens",
                                            contributorAvatar: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/498.jpg",
                                            title: "sed quisquam ipsa",
                                            content: "Modi doloremque odio neque. Quam temporibus laborum distinctio non ea adipisci ipsa maxime vero. Libero aut deleniti. Unde provident molestias omnis laboriosam eaque. Eaque vel temporibus nisi cumque maiores. Nemo at quibusdam quisquam cumque doloribus ipsum blanditiis.\nMinima esse dolorum. Tempora deleniti placeat quis modi debitis voluptatum non. Totam suscipit incidunt voluptas eveniet tenetur consectetur. Possimus atque nam consequatur tenetur.\nDolore illum facilis rem asperiores. Quos quas eaque. Libero recusandae nam vero. Repellendus assumenda facilis velit architecto dolores nihil ipsa temporibus.",
                                            contentThumbnail: "https://loremflickr.com/640/480",
                                            slideshow: [
                                                "https://loremflickr.com/640/490",
                                                "https://loremflickr.com/640/492",
                                                "https://loremflickr.com/640/493",
                                                "https://loremflickr.com/640/494",
                                                "https://loremflickr.com/640/495"
                                            ],
                                            id: "47"),
                             NewsListEntity(createdAt: "2023-09-13T17:30:27.606Z",
                                                                     contributorName: "Alma Dickens",
                                                                     contributorAvatar: "https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/498.jpg",
                                                                     title: "sed quisquam ipsa",
                                                                     content: "Modi doloremque odio neque. Quam temporibus laborum distinctio non ea adipisci ipsa maxime vero. Libero aut deleniti. Unde provident molestias omnis laboriosam eaque. Eaque vel temporibus nisi cumque maiores. Nemo at quibusdam quisquam cumque doloribus ipsum blanditiis.\nMinima esse dolorum. Tempora deleniti placeat quis modi debitis voluptatum non. Totam suscipit incidunt voluptas eveniet tenetur consectetur. Possimus atque nam consequatur tenetur.\nDolore illum facilis rem asperiores. Quos quas eaque. Libero recusandae nam vero. Repellendus assumenda facilis velit architecto dolores nihil ipsa temporibus.",
                                                                     contentThumbnail: "https://loremflickr.com/640/480",
                                                                     slideshow: [
                                                                         "https://loremflickr.com/640/490",
                                                                         "https://loremflickr.com/640/492",
                                                                         "https://loremflickr.com/640/493",
                                                                         "https://loremflickr.com/640/494",
                                                                         "https://loremflickr.com/640/495"
                                                                     ],
                                                                     id: "47")
]
