//
//  TraitsViewController.swift
//  AutoLayout
//
//  Created by Shreesha on 29/08/18.
//  Copyright © 2018 Shreesha. All rights reserved.
//

import UIKit

class TraitsViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layoutIfNeeded()
        profileImageView.layer.cornerRadius = profileImageView.bounds.height / 2
        profileImageView.layer.masksToBounds = true
    }
}
