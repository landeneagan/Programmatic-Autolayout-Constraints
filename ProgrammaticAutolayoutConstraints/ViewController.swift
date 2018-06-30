//
//  ViewController.swift
//  ProgrammaticAutolayoutConstraints
//
//  Created by Landen Eagan on 6/29/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//

import UIKit

//I took the code from the example and tried to make it work with multiple photos

class ViewController: UIViewController {

    var imageView = UIImageView()
    var imageView2 = UIImageView()
    var imageView3 = UIImageView()
    var imageView4 = UIImageView()
    
    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    var leadingConstraint2: NSLayoutConstraint?
    var trailingConstraint2: NSLayoutConstraint?
    var topConstraint2: NSLayoutConstraint?
    var bottomConstraint2: NSLayoutConstraint?
    
    var leadingConstraint3: NSLayoutConstraint?
    var trailingConstraint3: NSLayoutConstraint?
    var topConstraint3: NSLayoutConstraint?
    var bottomConstraint3: NSLayoutConstraint?
    
    var leadingConstraint4: NSLayoutConstraint?
    var trailingConstraint4: NSLayoutConstraint?
    var topConstraint4: NSLayoutConstraint?
    var bottomConstraint4: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Note: view is the same as self.view
        // The view is the container view that is the top level view for this view controller.
        
        imageView.image = UIImage(named: "1.jpg")
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
        
        
        
        // supposed to make multiple photos on one screen
        // trying to make it a 2x2 grid
        
        imageView2.image = UIImage(named: "2.jpg")
        imageView2.contentMode = .scaleAspectFit
        imageView2.clipsToBounds = true
        view.addSubview(imageView2)
        
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        
        leadingConstraint2 = NSLayoutConstraint(item: imageView2, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailingConstraint2 = NSLayoutConstraint(item: imageView2, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        topConstraint2 = NSLayoutConstraint(item: imageView2, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
        
        bottomConstraint2 = NSLayoutConstraint(item: imageView2, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        leadingConstraint2?.isActive = true
        trailingConstraint2?.isActive = true
        topConstraint2?.isActive = true
        bottomConstraint2?.isActive = true
        
        
        imageView3.image = UIImage(named: "3.jpg")
        imageView3.contentMode = .scaleAspectFit
        imageView3.clipsToBounds = true
        view.addSubview(imageView3)
        
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        
        leadingConstraint3 = NSLayoutConstraint(item: imageView3, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailingConstraint3 = NSLayoutConstraint(item: imageView3, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        topConstraint3 = NSLayoutConstraint(item: imageView3, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
        
        bottomConstraint3 = NSLayoutConstraint(item: imageView3, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        leadingConstraint3?.isActive = true
        trailingConstraint3?.isActive = true
        topConstraint3?.isActive = true
        bottomConstraint3?.isActive = true
        
        
        imageView4.image = UIImage(named: "4.jpg")
        imageView4.contentMode = .scaleAspectFit
        imageView4.clipsToBounds = true
        view.addSubview(imageView4)
        
        imageView4.translatesAutoresizingMaskIntoConstraints = false
        
        leadingConstraint4 = NSLayoutConstraint(item: imageView4, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailingConstraint4 = NSLayoutConstraint(item: imageView4, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        topConstraint4 = NSLayoutConstraint(item: imageView4, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
        
        bottomConstraint4 = NSLayoutConstraint(item: imageView4, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        leadingConstraint4?.isActive = true
        trailingConstraint4?.isActive = true
        topConstraint4?.isActive = true
        bottomConstraint4?.isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

