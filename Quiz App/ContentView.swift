//
//  ContentView.swift
//  Quiz App
//
//  Created by Seth Loh on 15/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var pointsCount = 0

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: QuizView()) {
                    Image(systemName: "play")
                        .padding()
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                }
            }
            .navigationTitle(Text("Home"))
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
