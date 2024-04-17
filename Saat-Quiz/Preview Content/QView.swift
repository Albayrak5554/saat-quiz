//
//  QView.swift
//  Saat-Quiz
//
//  Created by Ertuğrul Ata Balcı on 17.04.2024.
//

import SwiftUI

struct Quiz1: View {
    //Soru'nun sayısı
    @State var i : Int = 0
    
    //Skor için değişken
    @State var score = 0
    @State private var showActionSheet = false
    
    var body: some View {
        
        VStack(alignment: .leading,spacing: 15){
            //if i < sorulardan --> soruları başlat
            if(self.i < myQuiz1.count){
                Image(myQuiz1[self.i].img!)
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal)
                Text(myQuiz1[self.i].text!)
                
                // 0 
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 0)
                }, label: {
                    Text(myQuiz1[self.i].answer[0])
                        .foregroundColor(.green)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
                // 1
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 1)
                }, label: {
                    Text(myQuiz1[self.i].answer[1])
                        .foregroundColor(.green)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
                // 2
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 2)
                }, label: {
                    Text(myQuiz1[self.i].answer[2])
                        .foregroundColor(.green)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
                //3
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(n: 3)
                }, label: {
                    Text(myQuiz1[self.i].answer[3])
                        .foregroundColor(.green)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.purple, lineWidth: 2))
                })
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(
                            title: Text("Skor"),
                            message: Text("Skorunuz: \(self.score) / \(myQuiz1.count)"),
                            buttons: [
                                .cancel { print(self.showActionSheet)}
                            ]
                        )
                    }
                
            }
            else{
                FinalView(score: self.score)
            }
        }
        .padding(.horizontal)
    }
    func buttonAction(n: Int){
        //Eğer soru doğruya
        if(myQuiz1[self.i].correct == n){
            self.score = self.score + 1
        }
        // Yeni Soruya Git
        self.i = self.i + 1
    }
}

struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}

