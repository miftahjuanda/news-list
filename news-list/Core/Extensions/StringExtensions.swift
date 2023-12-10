//
//  StringExtensions.swift
//  news-list
//
//  Created by Miftah Juanda Batubara on 06/12/23.
//

import Foundation

extension String {
    func dateToString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let dateString = dateFormatter.date(from: self)
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "id_ID")
        formatter.dateFormat = "EEEE, d MMMM yyyy"
        
        guard let dateStr = dateString else {
            print("error convert date")
            return ""
        }
        return formatter.string(from: dateStr)
    }
    
    func stringToDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        guard let date = dateFormatter.date(from: self) else {
            print("Gagal convert data.")
            return Date()
        }
        return date
    }
}
