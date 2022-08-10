//
//  PlayerDetail.swift
//  NBA Player Fun
//
//  Created by Burak Şahin Erden on 9.08.2022.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player : Player
    
    var body: some View {
        VStack {
            
            Image(player.team.imageName)
                .resizable()
                .aspectRatio( contentMode: .fit)
            
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .offset(x:0,y:-90)
                .padding(.bottom,-90)
                .shadow(radius: 15)
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
            
            StatTextView(statName: "Age", statValue: String(player.age))
            StatTextView(statName: "Height", statValue: String(player.height))
            StatTextView(statName: "Weight", statValue: String(player.weight))
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player:players[1])
    }
}
 
 
