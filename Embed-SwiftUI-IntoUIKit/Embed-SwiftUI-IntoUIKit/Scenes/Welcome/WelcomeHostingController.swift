//
//  WelcomeHostingController.swift
//  Embed-SwiftUI-IntoUIKit
//
//  Created by Dario Galiani on 24/03/22.
//

import Foundation
import SwiftUI

class WelcomeHostingController: UIHostingController<Welcome> {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: Welcome())
            
        self.rootView.clicked = { [weak self] in
            self?.clicked()
        }

    }
    
    @IBSegueAction func presentLaunchView(_ coder: NSCoder) -> UIViewController? {
        return LaunchDetailsHostingController(coder: coder)
    }
    
    func clicked(){
        performSegue(withIdentifier: "presentLaunchView", sender: self)
    }
    
}
