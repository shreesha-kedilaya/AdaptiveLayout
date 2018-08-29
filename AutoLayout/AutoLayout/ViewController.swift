//
//  ViewController.swift
//  AutoLayout
//
//  Created by Shreesha on 27/08/18.
//  Copyright © 2018 Shreesha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftView = UIButton()
    var rightView = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftView.backgroundColor = UIColor(red: 114/255, green: 137/255, blue: 66/255, alpha: 1) // green
        rightView.backgroundColor = UIColor(red: 227/255, green: 106/255, blue: 0, alpha: 1) // right
        
        leftView.setTitle("Left view", for: .normal)
        rightView.setTitle("Right view", for: .normal)
        
//        view.addSubview(leftView)
//        view.addSubview(rightView)
        
//        addConstraintsThroughAnchors()
//        addNormalConstraints()
    }
    
    private func addConstraintsThroughAnchors() {
        
//        leftView.translatesAutoresizingMaskIntoConstraints = false
//        rightView.translatesAutoresizingMaskIntoConstraints = false
//
//        // Adding constraints to leftView
//
//        var leading = leftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
//        var center = leftView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
//        var height = leftView.heightAnchor.constraint(equalToConstant: 200)
//
//        NSLayoutConstraint.activate([leading, center, height])
//
//        // Adding constraints to rightView
//
//        leading = rightView.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 20)
//        center = rightView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
//        height = rightView.heightAnchor.constraint(equalToConstant: 200)
//
//        // Dont need this
//        let trailing = rightView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
//
//        let equalWidthConstraint = rightView.widthAnchor.constraint(equalTo: leftView.widthAnchor, multiplier: 1)
//
//        NSLayoutConstraint.activate([leading, center, height, trailing, equalWidthConstraint])
    }
    
    private func addNormalConstraints() {
        
//        leftView.translatesAutoresizingMaskIntoConstraints = false
//        rightView.translatesAutoresizingMaskIntoConstraints = false
//        
//        // Adding constraints to leftView
//        
//        var leading = NSLayoutConstraint(item: leftView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 10)
//        var center = NSLayoutConstraint(item: leftView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
//        var height = NSLayoutConstraint(item: leftView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
//        
//        view.addConstraints([leading, center])
//        leftView.addConstraint(height)
//        
//        // Adding constraints to rightView
//        
//        leading = NSLayoutConstraint(item: rightView, attribute: .leading, relatedBy: .equal, toItem: leftView, attribute: .trailing, multiplier: 1, constant: 20)
//        center = NSLayoutConstraint(item: rightView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
//        height = NSLayoutConstraint(item: rightView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
//        let trailingConstraint = NSLayoutConstraint(item: rightView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -10)
//        let equalWidthConstraint = NSLayoutConstraint(item: rightView, attribute: .width, relatedBy: .equal, toItem: leftView, attribute: .width, multiplier: 1, constant: 0)
//        
//        view.addConstraints([center, trailingConstraint])
//        view.addConstraint(leading)
//        rightView.addConstraint(height)
//        view.addConstraint(equalWidthConstraint)
    }
}

