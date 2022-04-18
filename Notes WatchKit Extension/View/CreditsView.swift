//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Metin Atalay on 18.04.2022.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            //PROFILE IMAGE
            
            Image("metin")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            
            HeaderView(title: "Credits")
            
            // CONTENT
            
            Text("Metin ATALAY")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        } //: VSTACK
        
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
