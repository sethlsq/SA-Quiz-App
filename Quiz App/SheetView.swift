//
//  SheetView.swift
//  Quiz App
//
//  Created by Seth Loh on 15/6/22.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        NavigationView {
        VStack{
            ZStack {
                Circle()
                    .stroke(lineWidth: 20.0)
                    .opacity(0.3)
                    .foregroundColor(Color.red)
                    .frame(width: 150.0, height: 150.0)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(pointsCount)/6)
                    .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color.red)
                    .frame(width: 150.0, height: 150.0)
                Text("\(pointsCount)/5")
                    .bold()
                }
            }
        .navigationTitle("Results")
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
