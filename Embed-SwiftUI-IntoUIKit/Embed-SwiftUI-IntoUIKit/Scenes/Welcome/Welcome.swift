//
//  Welcome.swift
//  Embed-SwiftUI-IntoUIKit
//
//  Created by Dario Galiani on 24/03/22.
//

import SwiftUI

struct Welcome: View {
    var clicked: (() -> Void)?
    
    var body: some View {
        
        VStack {
            
            Text("Hi!, I'm a SwiftUI View")
            
            Button("Call Another SwiftUI View from Segue Action"){
                clicked?()
            }
            
        }
        
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
