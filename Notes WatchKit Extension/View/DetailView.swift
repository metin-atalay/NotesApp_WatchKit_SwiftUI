//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Metin Atalay on 18.04.2022.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - PROP
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            //HEADER
            
           HeaderView()
            
            //CONTENT
            
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            //FOOTER
            
            HStack(alignment: .center) {
                
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented) {
                        SettingsView()
                    }
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content : {
                        CreditsView()
                    })
                
            }
        } //: VSTACK
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(note: Note(id: UUID(), text: "Read Book"), count: 5, index: 1)
    }
}
