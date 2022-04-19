//
//  ContentView.swift
//  BookChallenge
//
//  Created by Johnathan Lee on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        
        NavigationView {
             
        GeometryReader {
            geo in
            
            ScrollView {
                
                Text("My Library")
                    .font(.largeTitle)
                    .bold()
                
                VStack (spacing: 40) {
                
                    ForEach(0..<model.books.count) {
                        index in
                        
                        NavigationLink(
                            destination: BookCardView(book: model.books[index]),
                            label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .shadow(color: .black, radius: 5, x: -5, y: 5)
                                    
                                    VStack (alignment: .leading) {
                                        Text(model.books[index].title)
                                            .font(.headline)
                                            .bold()
                                            .padding(.leading)
                                            .padding(.top, 5)
                                        
                                        Text(model.books[index].author)
                                            .padding(.leading)
                                            .padding(.top, 5)
                                        
                                        Image("cover"+String(model.books[index].id))
                                            .resizable()
                                            .clipped()
                                            .padding(.all)
                                        
                                    }
                                        
                                }
                                .frame(width: geo.size.width*0.8, height: geo.size.height*0.6, alignment: .center)
                            }
                        )
                    }
                    
                }
                
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
