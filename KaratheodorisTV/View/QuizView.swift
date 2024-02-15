//
//  QuizView.swift
//  KaratheodorisTV
//
//  Created by Angelos Staboulis on 15/2/24.
//

import SwiftUI

struct QuizView: View {
    @StateObject var viewModel = QuestionViewModel()
    @State var isHidden:Bool!=true
    @State var correct:Int!=0
    var body: some View {
        VStack{
            Text("Quiz")
            Text(viewModel.createQuestions()[viewModel.getRecord()].question)
            Button(action: {
                viewModel.incrementAnswered()
            }, label: {
                Text(viewModel.createQuestions()[viewModel.getRecord()].answer1).frame(width:300,height:45)
            }).padding(30)
            Button(action: {
                if viewModel.getRecord() == 1{
                    correct = correct + 1
                }
                viewModel.incrementAnswered()
            }, label: {
                Text(viewModel.createQuestions()[viewModel.getRecord()].answer2).frame(width:300,height:45)
            }).padding(30)
            Button(action: {
                if viewModel.getRecord() == 0{
                    correct = correct + 1
                }else if viewModel.getRecord() == 2{
                    correct = correct + 1
                }else if viewModel.getRecord() == 3{
                    correct = correct + 1
                }
                viewModel.incrementAnswered()
            }, label: {
                Text(viewModel.createQuestions()[viewModel.getRecord()].answer3).frame(width:300,height:45)
            }).padding(30)
            Button(action: {
                if viewModel.getRecord() == 3 {
                     viewModel.initializeRecordValue()
                     isHidden = false
                }else{
                    viewModel.incrementRecord()
                }
            }, label: {
                Text("Next Question").frame(width:300,height:45)
            }).padding(30)
            VStack{
                Text("Answered:"+String(describing:viewModel.getAnswered())).padding(15)
                Text("Correct:"+String(describing:correct!)).padding(15)
            }.opacity(isHidden ? 0 : 1)
        }.onAppear(perform: {
            isHidden = true
            viewModel.initializeValues()
            correct = 0
        })
    }
}

#Preview {
    QuizView()
}
