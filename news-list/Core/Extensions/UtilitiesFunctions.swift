//
//  UtilitiesFunctions.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 06/12/23.
//

import Foundation

public func getRandomNews<T>(_ array: [T]) -> [T] {
    let shuffledArray = array.shuffled()
    let endIndex = min(4, shuffledArray.count)
    return Array(shuffledArray.prefix(endIndex))
}
