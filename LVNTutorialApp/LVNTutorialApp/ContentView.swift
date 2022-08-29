//
//  ContentView.swift
//  LVNTutorialApp
//
//  Created by Shadowfacts on 8/29/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct ContentView: View {
    @State var coordinator = LiveViewCoordinator(URL(string: "http://localhost:4000/cats")!)
    
    var body: some View {
        LiveView(coordinator: coordinator)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
