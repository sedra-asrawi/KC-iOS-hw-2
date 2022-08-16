//
//  ContentView.swift
//  HW2
//
//  Created by Sedra Asrawi on 16/08/2022.
//

import SwiftUI

struct ContentView: View {
    
//    @State var menu = [ "mango salad","quinoa salad","zen salad","matcha latte" ]
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
        NavigationView {
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 600, height: 960, alignment: .center)
                VStack{
                    HStack{
                        VStack{
                        Image("mango salad")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 50, height:50)
                             .padding()
                            
                            Text("\(salad)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Spacer()
                        }.frame(height: 120)
                        
                        Text("mango salad".capitalized)
                              .padding()
                              .font(.system(size: 15))
                        Spacer()
                       
                        
                        Button {
                            quantity1 += 1
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 13, height: 13)

                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        Text("\(quantity1)")
                        .frame(width: 23, height: 20)
                        .foregroundColor(.black)
                        
                        
                        Button {
                            if quantity1 > 0 {
                                quantity1 -= 1 }
                        } label: {
                            Image(systemName: "minus")
                                .frame(width: 13, height: 13)
                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        
                        

                        Spacer()
                        
                    }  .frame(width: 348)
                        .background()
                        .cornerRadius(20)
                        
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack{
                        VStack{
                        Image("quinoa salad")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 50, height:50)
                             .padding()
                            
                            Text("\(salad)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Spacer()
                        }.frame(height: 120)
                        
                        Text("quinoa salad".capitalized)
                              .padding()
                              .font(.system(size: 15))
                        Spacer()
                       
                        
                        Button {
                            quantity2 += 1
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 13, height: 13)

                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        Text("\(quantity2)")
                        .frame(width: 23, height: 20)
                        .foregroundColor(.black)
                        
                        
                        Button {
                            if quantity2 > 0 {
                                quantity2 -= 1 }
                        } label: {
                            Image(systemName: "minus")
                                .frame(width: 13, height: 13)
                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        
                        

                        Spacer()
                        
                    }  .frame(width: 348)
                        .background()
                        .cornerRadius(20)
                    
                    
                    HStack{
                        VStack{
                        Image("zen salad")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 50, height:50)
                             .padding()
                            
                            Text("\(salad)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Spacer()
                        }.frame(height: 120)
                        
                        Text("zen salad    ".capitalized)
                              .padding()
                              .font(.system(size: 15))
                        Spacer()
                       
                        
                        Button {
                            quantity3 += 1
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 13, height: 13)

                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        Text("\(quantity3)")
                        .frame(width: 23, height: 20)
                        .foregroundColor(.black)
                        
                        
                        Button {
                            if quantity3 > 0 {
                                quantity3 -= 1 }
                        } label: {
                            Image(systemName: "minus")
                                .frame(width: 13, height: 13)
                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        
                        

                        Spacer()
                        
                    }  .frame(width: 348)
                        .background()
                        .cornerRadius(20)
                    
                    
                    HStack{
                        VStack{
                        Image("matcha latte")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 50, height:50)
                             .padding()
                            
                            Text("\(matcha)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Spacer()
                        }.frame(height: 120)
                        
                        Text("matcha latte".capitalized)
                              .padding()
                              .font(.system(size: 15))
                        Spacer()
                       
                        
                        Button {
                            quantity4 += 1
                        } label: {
                            Image(systemName: "plus")
                                .frame(width: 13, height: 13)

                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        Text("\(quantity4)")
                        .frame(width: 23, height: 20)
                        .foregroundColor(.black)
                        
                        
                        Button {
                            if quantity4 > 0 {
                                quantity4 -= 1 }
                        } label: {
                            Image(systemName: "minus")
                                .frame(width: 13, height: 13)
                                .font(.system(size: 13))
                                .padding(5)
                                .foregroundColor(.black)
                                .background(.gray.opacity(0.5))
                                .cornerRadius(50)
                                
                        }
                        
                        

                        Spacer()
                        
                    }  .frame(width: 348)
                        .background()
                        .cornerRadius(20)
                    
                }.padding()
                VStack{
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
                        
                        NavigationLink {
                            ZStack {
                                
                                Image("background2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 600, height: 955, alignment: .center)
                                
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
                                        .foregroundColor(.white)
                                        
                                    
                                    
                                    
                                    
                                    Spacer()

                                    
                                    
                                    
                                }.frame(height: 700)
                            }
                        } label: {
                            Text("Finish")
                                .font(.headline)
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(15)
                                
                        }

                        
                        
                        Spacer()
                    }.frame(width: 350)
                        .padding(.top,600)
                    
                  
                    
                       
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
