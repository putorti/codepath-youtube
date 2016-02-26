//
//  FeedViewController.swift
//  youtube
//
//  Created by Jason Putorti on 2/26/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet var feedPan: UIPanGestureRecognizer!
    @IBOutlet var feedView: UIImageView!
    var feedViewCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedViewCenter = feedView.center
        feedView.userInteractionEnabled = true
        feedPan = UIPanGestureRecognizer(target: self, action: "revealMenu:")
        feedView.addGestureRecognizer(feedPan)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func revealMenu(panGestureRecognizer: UIPanGestureRecognizer) {
        var point = panGestureRecognizer.locationInView(view)
        var translation = panGestureRecognizer.translationInView(view)
        var velocity = panGestureRecognizer.velocityInView(view)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture happening")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            
            feedView.center = CGPoint(x: feedViewCenter.x + translation.x, y: feedViewCenter.y) // allow drag on x-axis only
            print("Gesture happening")
            
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
