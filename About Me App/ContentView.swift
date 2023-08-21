//
//  ContentView.swift
//  About Me App
//
//  Created by Maryna Vitoria de Almeida Brito on 2023-08-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        ZStack {
            Image("backgroundPhoto")
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 20.0) {
                Text("Hi, I'm Maryna!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .frame(width: 500.0, height: 50.0)
                
                Image("myPhoto")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350.0, height: 250.0)
                Text("I love walking in nature🌱")
                    .font(.title3)
                    .fontWeight(.medium)
                    .frame(width: 400.0)
                Text(" Click on Fun Facts to know more about me!")
                    .font(.title3)
                    .fontWeight(.medium)
                    .frame(width: 350.0)
            
            }
            .padding()
            .background(Rectangle().frame(width: 370.0, height: 600.0).foregroundColor(.white) .opacity(0.65) .cornerRadius(15))
                .padding()
            
          .toolbar {
              ToolbarItemGroup(placement : .bottomBar) {
               NavigationLink(destination: myFacts()) {
                        Text(" Fun Facts")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 140.0, height: 30.0)
                            .background(Rectangle().foregroundColor(.blue  .opacity (0.7)))
                           
                }
              }
           }
            
        }
     }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
