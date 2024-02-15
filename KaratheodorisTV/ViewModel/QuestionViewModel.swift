//
//  QuestionViewModel.swift
//  KaratheodorisTV
//
//  Created by Angelos Staboulis on 16/2/24.
//

import Foundation
class QuestionViewModel:ObservableObject{
    @Published var record:Int!=0
    @Published var answered:Int!=0
    func createQuestions()->[Question]{
        return [Question(question: "What is the firstname of Caratheodory?", answer1: "Angelos", answer2: "Theodoros", answer3: "Constantin", correct: "Constantin"),Question(question: "What is the job of Caratheodory?", answer1: "Physician", answer2: "Mathematician", answer3: "Doctor", correct: "Mathematician"),Question(question: "Where Caratheodory is born?", answer1: "Alexandroupoli", answer2: "Rome", answer3: "Berlin", correct: "Berlin"),Question(question: "Which year Caratheodory is died?", answer1: "1930", answer2: "1940", answer3: "1950", correct: "1950")]
    }
    func initializeRecordValue(){
        record = 0
    }
    func initializeValues(){
        record = 0
        answered = 0
    }
    func incrementRecord(){
        record = record + 1
    }
    func incrementAnswered(){
        answered = answered + 1
    }
    func getRecord()->Int{
        return record
    }
    func getAnswered()->Int{
        return answered
    }
}
