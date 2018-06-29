//
//  ViewController.swift
//  ProgrammaticAutolayoutConstraints
//
//  Created by Landen Eagan on 6/29/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView = UIImageView()
    
    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Note: view is the same as self.view
        // The view is the container view that is the top level view for this view controller.
        
        imageView.image = UIImage(named: "BayBridge.jpg")
        imageView.contentMode = .scaleAspectFit  // this tells the imageView how to display the image in it
        imageView.clipsToBounds = true  // not really needed since doing scaleAspectFit, but be aware it exists
        view.addSubview(imageView) // this adds the imageView as a child of the View Controller's container view
        
        // why the following? https://stackoverflow.com/questions/47800210/when-should-translatesautoresizingmaskintoconstraints-be-set-to-true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        leadingConstraint = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailingConstraint = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        topConstraint = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
        
        bottomConstraint = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        leadingConstraint?.isActive = true
        trailingConstraint?.isActive = true
        topConstraint?.isActive = true
        bottomConstraint?.isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

