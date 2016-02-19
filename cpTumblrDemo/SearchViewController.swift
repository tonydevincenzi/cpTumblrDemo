//
//  SearchViewController.swift
//  cpTumblrDemo
//
//  Created by Anthony Devincenzi on 2/19/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var loadingImage: UIImageView!
    var images:[UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...3
        {
            var img = UIImage(named: "loading-\(i).png")
            images.append(img!)
            print(img)
            //imageList += UIImage(named: imageName)
        }
        
        loadingImage.animationImages = images
        loadingImage.animationRepeatCount = 0
        loadingImage.animationDuration = 0.5
    }
    
    override func viewWillAppear(animated: Bool) {
        feedView.hidden = true;
        loadingImage.startAnimating()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        delay(2) {
            self.loadingImage.stopAnimating()
            self.loadingImage.hidden = true
            self.feedView.hidden = false;
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }


}
