//
//  ComposeViewController.swift
//  cpTumblrDemo
//
//  Created by Anthony Devincenzi on 2/19/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var buttonText: UIButton!
    @IBOutlet weak var buttonPhoto: UIButton!
    @IBOutlet weak var buttonQuote: UIButton!
    @IBOutlet weak var buttonLink: UIButton!
    @IBOutlet weak var buttonChat: UIButton!
    @IBOutlet weak var buttonVideo: UIButton!
    var damping:CGFloat = 0.7
    var velocity:CGFloat = 1
    var duration:Double = 0.4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        buttonText.frame.origin.y = 570
        buttonPhoto.frame.origin.y = 570
        buttonQuote.frame.origin.y = 570
        buttonLink.frame.origin.y = 694
        buttonChat.frame.origin.y = 694
        buttonVideo.frame.origin.y = 694
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
                self.buttonText.frame.origin.y = 140
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.05, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonPhoto.frame.origin.y = 140
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.1, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonQuote.frame.origin.y = 140
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.15, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonLink.frame.origin.y = 264
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.2, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonChat.frame.origin.y = 264
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.25, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonVideo.frame.origin.y = 264
            }) { (Bool) -> Void in
        }
    }

    @IBAction func didClickNevermind(sender: AnyObject) {
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonText.frame.origin.y = -290
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.05, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonPhoto.frame.origin.y = -290
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.1, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonQuote.frame.origin.y = -290
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.15, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonLink.frame.origin.y = -166
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.2, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonChat.frame.origin.y = -166
            }) { (Bool) -> Void in
        }
        UIView.animateWithDuration(duration, delay: 0.25, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: [], animations: { () -> Void in
            self.buttonVideo.frame.origin.y = -166
            }) { (Bool) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
