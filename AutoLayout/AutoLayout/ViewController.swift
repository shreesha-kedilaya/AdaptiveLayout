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
    
    //iPad
    let regularTraits = UITraitCollection(traitsFrom:
        [UITraitCollection(horizontalSizeClass : .regular),
         UITraitCollection(verticalSizeClass : .regular)])
    
    //iPhone 6plus L.S
    let regularCompactTraits = UITraitCollection(traitsFrom: [UITraitCollection(horizontalSizeClass : .regular),
        UITraitCollection(verticalSizeClass : .compact)])
    
    // iPhone 4, 4s, 5, 5c, 5s, 6, 6s L.S
    let compactCompactTraits = UITraitCollection(traitsFrom: [UITraitCollection(horizontalSizeClass: .compact),
        UITraitCollection(verticalSizeClass: .compact)])
    
    //all iphones portrait
    let compactRegular = UITraitCollection(traitsFrom:
        [UITraitCollection(horizontalSizeClass : .compact),
         UITraitCollection(verticalSizeClass : .regular)])
    
    let horizontalCompactClass = UITraitCollection(horizontalSizeClass: .compact)
    
    var leftViewHeightConstraint: NSLayoutConstraint!
    var rightViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftView.backgroundColor = UIColor(red: 114/255, green: 137/255, blue: 66/255, alpha: 1) // green
        rightView.backgroundColor = UIColor(red: 227/255, green: 106/255, blue: 0, alpha: 1) // right
        
        leftView.setTitle("Left view", for: .normal)
        rightView.setTitle("Right view", for: .normal)
        
        view.addSubview(leftView)
        view.addSubview(rightView)
        
        addConstraintsThroughAnchors()
//        addNormalConstraints()
//        addVFLConstraints()
    }
    
//    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
//        super.traitCollectionDidChange(previousTraitCollection)
//
//        if traitCollection.containsTraits(in: compactCompactTraits) || traitCollection.containsTraits(in: regularCompactTraits) {
//            leftViewHeightConstraint.constant = 200
//            rightViewHeightConstraint.constant = 200
//        } else {
//            leftViewHeightConstraint.constant = 500
//            rightViewHeightConstraint.constant = 500
//        }
//    }
//
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        super.viewWillTransition(to: size, with: coordinator)
//
//        coordinator.animate(alongsideTransition: { (context) in
//            self.leftView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//            self.rightView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//        }) { (context) in
//            UIView.animate(withDuration: 0.4, animations: {
//                self.leftView.transform = .identity
//                self.rightView.transform = .identity
//            })
//        }
//    }
//
    private func addConstraintsThroughAnchors() {
        
        leftView.translatesAutoresizingMaskIntoConstraints = false
        rightView.translatesAutoresizingMaskIntoConstraints = false

        // Adding constraints to leftView

        var leading = leftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        var center = leftView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        leftViewHeightConstraint = leftView.heightAnchor.constraint(equalToConstant: 500)

        NSLayoutConstraint.activate([leading, center, leftViewHeightConstraint])

        // Adding constraints to rightView

        leading = rightView.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 50)
        center = rightView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0)
        rightViewHeightConstraint = rightView.heightAnchor.constraint(equalToConstant: 500)

        // Dont need this
        let trailing = rightView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)

        let equalWidthConstraint = rightView.widthAnchor.constraint(equalTo: leftView.widthAnchor, multiplier: 1)

        NSLayoutConstraint.activate([leading, center, rightViewHeightConstraint, trailing, equalWidthConstraint])
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
    
    
    private func addVFLConstraints() {
        
//        let views = Dictionary(dictionaryLiteral:
//            ("leftView", leftView),
//            ("rightView", rightView))
//
//        leftView.translatesAutoresizingMaskIntoConstraints = false
//        rightView.translatesAutoresizingMaskIntoConstraints = false
//
//        var allConstraints: [NSLayoutConstraint] = []
//
//        var verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[leftView(==200)]", metrics: nil, views: views)
//        var horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[leftView]", metrics: nil, views: views)
//        allConstraints += verticalConstraints
//        allConstraints += horizontalConstraints
//
//        verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[rightView(==200)]", options: [] , metrics: nil, views: views)
//        horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[leftView]-20-[rightView(==leftView)]-20-|", options: [] , metrics: nil, views: views)
//
//        allConstraints += verticalConstraints
//        allConstraints += horizontalConstraints
//
//        NSLayoutConstraint.activate(allConstraints)
    }
}

