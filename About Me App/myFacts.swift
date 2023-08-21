//
//  myFacts.swift
//  About Me App
//
//  Created by Maryna Vitoria de Almeida Brito on 2023-08-13.
//

import SwiftUI

struct myFacts: View {
     var garden = "I like to garden"
     var fruit = "My favorite fruit is strawberry"
     var catperson = "I'm a cat person"
    var olive = "I hate olives"
     var spring = "My favorite season is spring"
    @State private var fact1 = ""
   @State private var fact2 = ""
    @State private var fact3 = ""
    @State private var fact4 = ""
    var body: some View {

        ZStack {
            Image("factsBackground")
                .ignoresSafeArea()
            .padding()
            VStack {
                Text("Click on the emoji to see a fun fact")
                    .font(.title3)
                    .padding(20)
                  Button("🪴") {
                      fact1 = ("\(garden)")
                    }
                Text("\(fact1)")
                    .fontWeight(.medium)
                    .padding (2)
                Button("🍓") {
                    fact2 = ("\(fruit)")
                }
            
                Text("\(fact2)")
                    .fontWeight(.medium)
                
                    .padding (2)
                
                        Button("🐱") {
                            fact3 = ("\(catperson)")
                        }
                    Text("\(fact3)")
                        .fontWeight(.medium)
                
                        .padding (2)
                
                Button("🫒") {
                    fact4 = ("\(olive)")
                }
            Text("\(fact4)")
                .fontWeight(.medium)
                }
            .background(Rectangle().frame(width: 370.0, height: 600.0).foregroundColor(.white) .opacity(0.9) .cornerRadius(15))
                .padding()
        }
    }


struct myFacts_Previews: PreviewProvider {
    static var previews: some View {
        myFacts()
    }
}
}
