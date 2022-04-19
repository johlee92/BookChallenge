//
//  DataService.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // check if pathSTring is not nil, otherwise does something...
        guard pathString != nil else {
            return [Book]()
        }
        
        //create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //create data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let bookData = try decoder.decode([Book].self, from: data)
                
                return bookData
                
            } catch {
                
                print(error)
                
            }
        } catch {
            
            print(error)
        }
        
        //return an empty array of books
        return [Book]()
    }
}
