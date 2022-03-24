//
//  Launch.swift
//  Embed-SwiftUI-IntoUIKit
//
//  Created by Dario Galiani on 24/03/22.
//

import SwiftUI

struct Launch: View {
    var showModal: (() -> Void)?
    var viewController: ViewController
    
    init(){
        self.viewController = .init(nibName:nil, bundle:nil)
    }
    
    var body: some View {
        
        VStack{
            Text("Hello, I'm the SwiftUI Launch Page")
            
            Button("Open a details modal"){
                showModal?()
            }
        }
        
    }
}

struct Launch_Previews: PreviewProvider {
    static var previews: some View {
        Launch()
    }
}
