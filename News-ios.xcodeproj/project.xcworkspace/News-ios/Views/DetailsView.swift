//
//  DetailsView.swift
//  News-ios
//
//  Created by Sriramoju Avinash Sai on 22/09/22.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    let url : String?
    
    var body: some View {
       WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url:"a")
    }
}
