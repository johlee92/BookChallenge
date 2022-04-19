//
//  BookCardView.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import SwiftUI

struct BookCardView: View {
    
    var book:Book
    
    var body: some View {
        NavigationView {
            
            GeometryReader {
                geo in
                
                VStack (alignment: .leading) {
                    Text(book.title)
                    
                    NavigationLink(
                        destination: BookReadView(book: book),
                        label: {
                            VStack (alignment: .center) {
                                Text("Read Now")
                                Image("cover"+String(book.id))
                                    .resizable()
                                    .clipped()
                                    .frame(width: geo.size.width*0.7, height: geo.size.height*0.5, alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                            }
                        }
                    )
                
                    Text("Mark for later!")
                    
                    Text("Rate Amazing Words")
                    
                    //Add Picker
                }
            }
        }
    }
}

struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookModel()
        
        BookCardView(book: model.books[0])
    }
}
