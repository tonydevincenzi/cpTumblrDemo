//
//  ViewController.swift
//  cpTumblrDemo
//
//  Created by Anthony Devincenzi on 2/18/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var exploreView: UIImageView!
    
    var viewControllers: [UIViewController]!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationViewController = segue.destinationViewController
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        fadeTransition = FadeTransition()
        destinationViewController.transitioningDelegate = fadeTransition
        fadeTransition.duration = 0.3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("Home")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("Search")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("Compose")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("Account")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("Trending")
        
        viewControllers = [homeViewController, searchViewController, composeViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        
        UIView.animateWithDuration(1, delay: 0, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.exploreView.transform = CGAffineTransformMakeTranslation(0, -5)
        }, completion: nil)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func didPressTab(sender: UIButton) {
        //Clear up previous tab button & VC
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        buttons[previousIndex].selected = false
        
        //Set new tab button and VC
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
        if selectedIndex == 1 {
         exploreView.hidden = true
        }
    }
}

