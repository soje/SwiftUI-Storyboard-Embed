//
//  LaunchHostingController.swift
//  Embed-SwiftUI-IntoUIKit
//
//  Created by Dario Galiani on 24/03/22.
//

import Foundation
import SwiftUI

class LaunchHostingController: UIHostingController<Launch> {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: Launch())
        
        self.rootView.showModal = { [weak self] in
            self?.showModal()
        }
        
    }
    
    override func viewDidLoad() {
        print("Launch loaded")
    }
    
    func showModal(){
        performSegue(withIdentifier: "presentDetailsModal", sender: self)
    }
    
    @IBSegueAction
    func presentDetailsModal(_ coder: NSCoder) -> UIViewController? {
        
        let launchDetailsHC = LaunchDetailsHostingController(coder: coder)
        
        if let sheet = launchDetailsHC?.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
        }
        
        return launchDetailsHC
    }
    
}
