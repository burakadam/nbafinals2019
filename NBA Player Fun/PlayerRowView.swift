//
//  PlayerRowView.swift
//  NBA Player Fun
//
//  Created by Burak Şahin Erden on 9.08.2022.
//

import SwiftUI

struct PlayerRowView: View {
    
    var player:Player
    
    var body: some View {
        HStack {
            
            Image(player.imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color))
            
            Text(player.name)
                .font(.system(size: 35))
                .fontWeight(.medium)
                .padding(.leading,20)
            
            Spacer()
            
        }
    }
}

struct PlayerRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRowView(player:players[0])
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
