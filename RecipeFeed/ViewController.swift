//
//  ViewController.swift
//  RecipeFeed
//
//  Created by Dave Bobak on 2014-07-10.
//  Copyright (c) 2014 Teehan+Lax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView = UIScrollView(frame: view.bounds)
        
        scrollView.contentSize = CGSize(width: CGRectGetWidth(view.bounds), height: CGRectGetHeight(view.bounds) * 3)
        
        scrollView.alwaysBounceVertical = true
        
        view.addSubview(scrollView)
        
        // Create 3 subviews (this could be improved in many ways)
        // TODO:
        // Should have an array of image names
        // Iterate through array and do the positioning dynamically
        
        // Recipe 1 Image
        var recipe1ImageView:UIImageView = UIImageView(frame: CGRectMake(0, 0, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        recipe1ImageView.contentMode = UIViewContentMode.ScaleAspectFill
        recipe1ImageView.image = UIImage(named: "recipe1")
        if !recipe1ImageView.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            recipe1ImageView.image = UIImage(named: "recipe1.png")
        }
        scrollView.addSubview(recipe1ImageView)
        
        
        // Recipe 2 Image
        var recipe2ImageView:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame), CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        recipe2ImageView.contentMode = UIViewContentMode.ScaleAspectFill
        recipe2ImageView.image = UIImage(named: "recipe2")
        if !recipe2ImageView.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            recipe2ImageView.image = UIImage(named: "recipe2.png")
        }
        scrollView.addSubview(recipe2ImageView)
        
        // Recipe 3 Image
        var recipe3ImageView:UIImageView = UIImageView(frame: CGRectMake(0, CGRectGetHeight(view.frame)*2, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame)))
        recipe3ImageView.contentMode = UIViewContentMode.ScaleAspectFill
        recipe3ImageView.image = UIImage(named: "recipe3")
        if !recipe3ImageView.image {
            // bug: iOS 7 not playing nice with asset catalog - use the full path for now
            recipe3ImageView.image = UIImage(named: "recipe3.png")
        }
        scrollView.addSubview(recipe3ImageView)

        
//        var button = UIButton.buttonWithType(.System) as UIButton // buttons are a unique type of UIView, need to be cast\
//        button.setTitle("Hello", forState: .Normal)
//        button.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
//        scrollView.addSubview(button)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

