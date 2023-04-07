//
//  ContentView.swift
//  WebPage
//
//  Created by Froy on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Open Web Pages App")
                NavigationLink(destination: SafariServiceModeView()) {
                    Text("Safari Mode")
                        .frame(width: 200, height: 50)
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
