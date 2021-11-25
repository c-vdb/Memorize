//
//  ContentView.swift
//  Memorize
//
//  Created by Claudia on 14.11.21.
//

import SwiftUI

/*
 struct ContentView: View {
     var body: some View {
         ZStack(content: {
             RoundedRectangle(cornerRadius: 50)
                 .stroke(lineWidth: 3)

                 .foregroundColor(/*@START_MENU_TOKEN@*/ .orange/*@END_MENU_TOKEN@*/)
             Text("Hello Wolrd!")

         })
         .padding(.horizontal)
         .foregroundColor(.red)
     }
 }
 */

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50)
                .stroke(lineWidth: 3)
                .foregroundColor(/*@START_MENU_TOKEN@*/ .orange/*@END_MENU_TOKEN@*/)

            Text("Hello Wolrd!")
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
