//
//  BookReadView.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import SwiftUI

struct BookReadView: View {
    
    var book:Book
    
    var body: some View {
        TabView {
            ForEach(0..<book.content.count) {
                index in
                ScrollView {
                    VStack {
                        Text(book.content[index])
                        Text("\(index+1)")
                    }
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct BookReadView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookReadView(book: model.books[0])
    }
}
