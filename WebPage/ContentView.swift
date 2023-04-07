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
                    .font(.largeTitle)
                NavigationLink(destination: SafariServiceModeView()) {
                    Text("Safari Mode")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 10)
                        .padding(.horizontal)
                }
                NavigationLink(destination: WebKitView()) {
                    Text("WebKit Mode")
                        .navigationBarBackButtonHidden(true)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(LinearGradient(
                            gradient: Gradient(colors: [Color(red: 40/255, green: 168/255, blue: 255/255),
                                                        Color(red: 0/255, green: 122/255, blue: 155/255),
                                                        Color(red: 2/255, green: 64/255, blue: 55/255)]),
                            startPoint: .leading,
                            endPoint: .trailing))
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 10)
                        .padding(.horizontal)
                }
                .navigationBarBackButtonHidden(true)
                NavigationLink(destination: BottomSheetView()) {
                    Text("BottomSheet Mode")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 10)
                        .padding(.horizontal)
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
