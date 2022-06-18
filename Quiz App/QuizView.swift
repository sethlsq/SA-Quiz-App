//
//  QuizView.swift
//  Quiz App
//
//  Created by Seth Loh on 15/6/22.
//

import SwiftUI

struct QuizView: View {
    @State var questionIndex = 0
    @State var isAlertShown = false
    @State var alertMessage = ""
    @State var showSheet = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemBackground)
                VStack(alignment: .leading) {
                    Text(Questions[questionIndex].title)
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Button {
                            if Questions[questionIndex].correctAns == 1{
                                alertMessage = "Correct."
                                isAlertShown = true
                                pointsCount += 1
                            } else {
                                alertMessage = "Incorrect."
                                isAlertShown = true
                            }
                        } label: {
                            Text(Questions[questionIndex].option1)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        Button {
                            if Questions[questionIndex].correctAns == 2{
                                alertMessage = "Correct."
                                isAlertShown = true
                                pointsCount += 1
                            } else {
                                alertMessage = "Incorrect."
                                isAlertShown = true
                            }
                        } label: {
                            Text(Questions[questionIndex].option2)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        Button {
                            if Questions[questionIndex].correctAns == 3{
                                alertMessage = "Correct."
                                isAlertShown = true
                                pointsCount += 1
                            } else {
                                alertMessage = "Incorrect."
                                isAlertShown = true
                            }                        } label: {
                                Text(Questions[questionIndex].option3)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        Button {
                            if Questions[questionIndex].correctAns == 4 {
                                alertMessage = "Correct."
                                isAlertShown = true
                                pointsCount += 1
                            } else {
                                alertMessage = "Incorrect."
                                isAlertShown = true
                            }                        } label: {
                                Text(Questions[questionIndex].option4)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Question \(questionIndex + 1)")
            }
            .alert(alertMessage, isPresented: $isAlertShown){
                Button {
                    isAlertShown = false
                    if questionIndex == 4 {
                        showSheet = true
                    } else{
                        questionIndex += 1
                    }
                    
                } label:{
                    Text("Next Question")
                }
            }
            
            .sheet(isPresented:$showSheet){
                SheetView()
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
