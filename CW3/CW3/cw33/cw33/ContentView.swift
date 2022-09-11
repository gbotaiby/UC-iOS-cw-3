//
//  ContentView.swift
//  cw33
//
//  Created by Ghalia on 11/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
   
    
    var body: some View {
        HStack{
            VStack{
                Text("استغفرالله العظيم")
                    .font(.title2)
                    .frame(width: 200.0, height: 10.0)
            
                Text("سبحان الله وبحمده")
                    .font(.title2)
                    .padding()
        
                Text("سبحان الله العظيم")
                    .font(.title2)
                    .padding()
            }
            VStack{
                ExtractedView(counter: $counter)
                    .padding()
                ExtractedView(counter: $counter)
                    .padding()
                ExtractedView(counter: $counter)
                    .padding()
                
            }

        }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var counter: Int
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.green)
                .frame(width: 90.0, height: 90.0)
                .onTapGesture {
                counter+=1
                
            }
                .padding()
        }
    }
}
