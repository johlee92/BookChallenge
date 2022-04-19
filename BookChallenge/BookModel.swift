//
//  BookModel.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import Foundation

class BookModel:ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
}
