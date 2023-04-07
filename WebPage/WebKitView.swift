//
//  WebKitView.swift
//  WebPage
//
//  Created by Froy on 4/7/23.
//

import SwiftUI
import WebKit

struct WebKitView: UIViewRepresentable {
    let url = URL(string: Constants.webPage)!
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}

struct WebKitView_Previews: PreviewProvider {
    static var previews: some View {
        WebKitView()
    }
}
