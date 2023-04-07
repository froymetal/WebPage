//
//  SafariServiceModeView.swift
//  WebPage
//
//  Created by Froy on 4/7/23.
//

import SwiftUI
import SafariServices

struct SafariServiceModeView: View {
    var body: some View {
        Button("Visita EF Home Investors") {
            guard let url = URL(string: Constants.webPage) else { return }
            UIApplication.shared.open(url)
        }
    }
}

struct SafariServiceModeView_Previews: PreviewProvider {
    static var previews: some View {
        SafariServiceModeView()
    }
}
