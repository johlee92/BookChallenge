//
//  Book.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import Foundation

class Book:Identifiable, Decodable {
    var id:Int
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var content:[String]
}
