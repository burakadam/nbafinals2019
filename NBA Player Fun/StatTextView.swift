//
//  StatTextView.swift
//  NBA Player Fun
//
//  Created by Burak Şahin Erden on 9.08.2022.
//

import SwiftUI

struct StatTextView: View {
    
    var statName:String
    var statValue:String
    
    var body: some View {
        HStack {
            
            Text(statName + ":")
                .font(.system(size: 45))
                .fontWeight(.heavy)
                .padding(.leading,30)
            
            Text(statValue)
                .font(.system(size: 45))
                .fontWeight(.light)
                .padding(.trailing,30)
            
            Spacer()
            
        }
    }
}

struct StatTextView_Previews: PreviewProvider {
    static var previews: some View {
        StatTextView(statName: "Age", statValue: "32")
    }
}
