//
//  SwiftUIView.swift
//  HW2
//
//  Created by Sedra Asrawi on 16/08/2022.
//

import SwiftUI

struct SwiftUIView: View {
    
    let salad  = "2.25 KD"
    let matcha = "1.50 KD"
   @State var quantity1 = 0
   @State var quantity2 = 0
   @State var quantity3 = 0
   @State var quantity4 = 0
   @State var budget = ""
    @State var result = ""


   func Total () -> Double {
      return
        (Double(quantity1) * 2.25)+(Double(quantity2) * 2.25)+(Double(quantity3) * 2.25)+(Double(quantity4) * 1.5)
   }
   
    
    var body: some View {
        
        
        ZStack {
            
            Image("background2")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 860, alignment: .center)
            
            VStack{
                
            Text("Enter your budget :")
                    .fontWeight(.bold)
                    .font(.custom(FontsManager.MouseMemoirs.regular, size: 50))
                
                TextField("your budget", text: $budget)
                    .padding()
                    .background(.white.opacity(0.4))
                    .cornerRadius(15)
                    .frame(width: 350, height: 100)
                
                HStack{
                    Text("Total :")
                        .fontWeight(.heavy)
                        .font(.title2)

                    Text(String (Total()))
                        .fontWeight(.heavy)
                        .font(.title2)

                    Text("KD")
                        .fontWeight(.heavy)
                        .font(.title2)
                    Spacer()
                }.frame(width: 350)
                    .padding()
                
                
                
                Button {
                    
                    if budget == "" {
                        result = "please enter your budget"
                    }
                        
                    
                    else if Total() > (Double(budget) ?? 0) {
                        result = "sorry, you don't have enough money"
                    }
                    
                    else {
                        result = "your order is complete !"
                    }
                        
                    
                } label: {
                    Text("Pay !")
                        .font(.headline)
                        .fontWeight(.black)
                        .padding()
                        .background(Color("Color1"))
                        .cornerRadius(15)
                        .foregroundColor(.white)
                      
                }
                
                Text(result)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
                    
                
                
                
                
                Spacer()

                
                
                
            }.frame(height: 700)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
