//
//  ContentView.swift
//  CustomPopup
//
//  Created by ramil on 08.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    
    var body: some View {
        ZStack {
            Button(action: {
                self.showModal.toggle()
            }) {
                Text("Press me")
            }
            if $showModal.wrappedValue {
                ZStack {
                    Color.black.opacity(0.3)
                        .edgesIgnoringSafeArea(.vertical)
                    
                    // Popup
                    VStack(spacing: 20) {
                        Text("Popup")
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                        Spacer()
                        Button(action: {
                            self.showModal = false
                        }) {
                            Text("Close")
                        }.padding()
                            
                    }.frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 20)
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
