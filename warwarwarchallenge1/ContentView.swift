//
//  ContentView.swift
//  warwarwarchallenge1
//
//  Created by Andrea Delgado on 2022-06-22.
//

import SwiftUI

struct ContentView: View {
    @State private var playercard = "card4"
    @State private var cpuCard = "card5"
    @State private var playerscore = 0
    @State private var cpuscore = 0
    
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                
                HStack{
                    Image(playercard)
                        .padding(.horizontal, 20
                        )
                    Image(cpuCard)
                        .padding(.trailing, 20.0)
                    
                    
                    
                }
                .padding([.leading, .bottom, .trailing], 80.0)
            
            VStack{
                
                Image("logo")
                    .padding(.top, 140.0)
                Spacer()
                Spacer()
                Spacer()
                
                Button(action: {
                    //how to generate a  random number between 2 and 14 from card assets
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    //update the cards
             playercard = "card" + String(playerRand)
             cpuCard = "card" + String(cpuRand)
                    
                    //update the score
                    if playerRand > cpuRand {
                        playerscore += 1
                    }
                    else if cpuRand > playerRand
                     {
                        cpuscore += 1
                    }
                   // playerscore += 1
                   // cpuscore += 1
                    
                },
                       label: {
                    Image("dealbutton")
                })
                
               
                    .padding(.bottom, 80.0)
                Spacer()
                
                
                }
                
                
                HStack{
                
                
                VStack{
                    Spacer()
                    Text("Player").font(.largeTitle).foregroundColor(Color.white).padding(.top, 10.0)
                    Text(String(playerscore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.top, 6.0)
                    
                }
                .padding([.bottom, .trailing], 80.0)
                
                VStack{
                    Spacer()
                    Text("CPU")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    
                    Text(String(cpuscore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.top, 11.0
                        )
                    
                    
                    
                    
                }
                .padding(.bottom, 80.0)
                
                }
                
            
            
        }
       
        
        
            
            
           
            
        }
    }






































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
