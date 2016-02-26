//
//  HamburgerViewController.swift
//  youtube
//
//  Created by Jason Putorti on 2/26/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class HamburgerViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var feedView: UIView!
    var menuViewController: UIViewController!
    var feedViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var ms = storyboard.instantiateViewControllerWithIdentifier("MenuViewController") as! MenuViewController
        var fs = storyboard.instantiateViewControllerWithIdentifier("FeedViewController") as! FeedViewController
        
        //menuView.addSubview(ms.view)
        feedView.addSubview(fs.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
