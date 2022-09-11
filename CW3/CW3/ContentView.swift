//
//  ContentView.swift
//  CW3
//
//  Created by Ghalia on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
 @State var result = ""
    var body: some View {
        ZStack{
            Color(.blue)
    
            VStack{
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .font(.subheadline)
                Image("mal")
                    .resizable()
                    .scaledToFit()
                    .padding()
                TextField("ادخل درجتك", text: $grade)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                Text("احسب درجتي")
                    .foregroundColor(.white)
                    .background(.yellow)
                    .onTapGesture {
                        if Double(grade) ?? 0 >= 90 {
                            result = "امتياز"
                            
                        }
                        else if Double(grade) ?? 0 < 90 &&  Double(grade) ?? 0 >= 80{
                            result = "جيد جدا"
                        }
                        else if Double(grade) ?? 0 < 80 &&  Double(grade) ?? 0 >= 70 {
                            result = "جيد"
                        }
                        else if Double(grade) ?? 0 < 70 && Double(grade) ?? 0 >= 60 {
                            result = "مقبول"
                        }
                        else {
                            result = "راسب"
                        }
                    }
                
                
                
            }
            .padding()
        }

            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
