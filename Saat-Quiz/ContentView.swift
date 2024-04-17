//
//  ContentView.swift
//  Saat-Quiz
//
//  Created by Ertuğrul Ata Balcı on 17.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    //Skor için değişken
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Text("Quiz'e Hoşgeldiniz")
                //Butona basıldığında quize başlanır
                
                NavigationLink(destination: Quiz1()){
                    Text("Saat Quizini Çözmeye Başla") 
                }
                HStack{
                    //Skor'unu Gör
                    Text("Bulduğunuz Saatler:  \(self.score) / \(myQuiz1.count)")
                        .onAppear(){
                            self.score = LoadScore(quiz: "myQuiz1")
                        }
                }
            }
            .navigationBarTitle("Saat Markası Quiz'i", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
