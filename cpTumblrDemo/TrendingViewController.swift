//
//  TrendingViewController.swift
//  cpTumblrDemo
//
//  Created by Anthony Devincenzi on 2/19/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var trendingScrollView: UIScrollView!
    @IBOutlet weak var trendingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trendingScrollView.contentSize = trendingImageView.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

