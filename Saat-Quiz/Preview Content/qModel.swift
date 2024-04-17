//
//  qModel.swift
//  Saat-Quiz
//
//  Created by Ertuğrul Ata Balcı on 17.04.2024.
//

import Foundation

struct QuizModel{

var img: String?
var text: String?
var answer: [String]
var correct: Int?

}

var myQuiz1 : [QuizModel] = [
    QuizModel(img: "saat1",
              text: "Görseldeki Saat Hangi Markaya Aittir?",
              answer: ["Rolex", "Omega", "Hublot", "Tag heuer"],
              correct: 0),
    
    QuizModel(img: "saat2",
              text: "Hangi Ülkede Greenwich Mean Time (GMT) Hangi Ülkede Kullanılır?",
              answer: ["Fransa ", "Japonya", "ABD", "İngiltere"],
              correct: 3),
    
    QuizModel(img: "saat3",
              text: "Bir analog saatte, saat ve dakika ibreleri arasındaki açı nedir?",
              answer: ["90 Derece", "180 Derece", "30 Derece", "60 Derece"],
              correct: 2),
    
    QuizModel(img: "saat4",
              text: "Dünya üzerindeki en yüksek saat kulesi nerede bulunur ve kaç metre yüksekliğindedir?",
              answer: ["ABD", "Birleşik Arap Emirlikleri", "Çin", "Suudi Arabistan"],
              correct: 3),
    
    QuizModel(img: "saat5",
              text: "Atomik saatler nasıl çalışır ve neden çok hassas zaman ölçüm cihazları olarak kabul edilir?",
              answer: ["Radyoaktif madde kullanırlar", "Atomik çekirdeklerin elektron hareketlerini kullanırlar", "Güneş ışığını kullanarak zamanı belirlerler", "Hidrojen gazı kullanırlar"],
              correct: 1),
    
    
]

func SaveScore(quiz: String, score: Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz: String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}

