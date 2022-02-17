//
//  SampleView.swift
//  toolbarTest
//
//  Created by Sabesh Bharathi on 17/02/22.
//

import SwiftUI

struct SampleView: View {
    var body: some View {
        Text("Toolbar isn't appearing 👆🏽")
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: toggleSidebar, label: {
                        Image(systemName: "sidebar.left")
                    })
                }
                
                ToolbarItemGroup() {
                    Spacer()
                    Button(action: {
                        //Action
                    }, label: {
                        Image(systemName: "person.circle.fill")
                    })
                }
                
            }.frame(width: 1000, height: 800)
    }
    
    func toggleSidebar() {
        #if os(macOS)
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
        #endif
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
