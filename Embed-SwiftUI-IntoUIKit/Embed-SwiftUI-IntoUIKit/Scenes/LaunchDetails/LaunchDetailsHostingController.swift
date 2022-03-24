//
//  LaunchDetailsView.swift
//  Embed-SwiftUI-IntoUIKit
//
//  Created by Dario Galiani on 24/03/22.
//

import Foundation
import SwiftUI

class LaunchDetailsHostingController:UIHostingController<LaunchDetails> {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: LaunchDetails())
    }
    
    
}
