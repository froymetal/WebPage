//
//  BottomSheetView.swift
//  WebPage
//
//  Created by Froy on 4/7/23.
//

import SwiftUI
import WebKit

struct BottomSheetView: View {
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showSheet.toggle()
            }, label: {
                Text("Open Website")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            .sheet(isPresented: $showSheet, content: {
                WebView(url: URL(string: Constants.webPage)!)
                    .presentationDetents([.fraction(0.80)]) // Tamaño del bottomsheet
            })
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
