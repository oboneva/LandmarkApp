//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Ognyanka Boneva on 7.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
