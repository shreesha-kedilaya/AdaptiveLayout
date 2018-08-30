//
//  TraitsViewController.swift
//  AutoLayout
//
//  Created by Shreesha on 29/08/18.
//  Copyright © 2018 Shreesha. All rights reserved.
//

import UIKit

class TraitsViewController: UIViewController {

    @IBOutlet weak var greyView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate(alongsideTransition: { (context) in
            self.greyView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (context) in
            UIView.animate(withDuration: 0.4, animations: {
                self.greyView.transform = .identity
            })
        }
    }
}
