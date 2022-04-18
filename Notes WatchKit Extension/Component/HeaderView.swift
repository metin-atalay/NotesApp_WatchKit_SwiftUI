//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Metin Atalay on 18.04.2022.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROP
    
    var title: String = ""
    
    // MARK: - BODY
    var body: some View {
        VStack {
            
            //TITLE
            
            if title != "" {
                
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                
            }
            
            HStack {
                
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule().frame(height: 1)
                
            }
            .foregroundColor(.accentColor)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            HeaderView(title: "Credits")
            
            HeaderView()
        }
    }
}
