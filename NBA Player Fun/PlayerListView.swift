//
//  PlayerListView.swift
//  NBA Player Fun
//
//  Created by Burak Şahin Erden on 9.08.2022.
//

import SwiftUI

struct PlayerListView: View {
    var body: some View {
      
        NavigationView {
            
            List(players) {
                currentPlayer in
                NavigationLink(destination:PlayerDetail(player:currentPlayer)){
                    PlayerRowView(player: currentPlayer)
                }
            }
            .navigationTitle(
                Text("NBA Finals Players")
            )
        }
        
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
