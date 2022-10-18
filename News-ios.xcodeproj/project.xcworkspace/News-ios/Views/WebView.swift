//
//  WebView.swift
//  News-ios
//
//  Created by Sriramoju Avinash Sai on 22/09/22.
//

import UIKit
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable{
    let urlString : String?
    
    func makeUIView(context: Context) ->  WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
}
