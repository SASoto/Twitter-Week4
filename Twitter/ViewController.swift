//
//  ViewController.swift
//  Twitter
//
//  Created by Saul Soto on 2/13/16.
//  Copyright © 2016 CodePath - Saul Soto. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

class ViewController: UIViewController
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogin(sender: AnyObject) {

        TwitterClient.sharedInstance.loginWithCompletion() {
         
            (user: User?, error: NSError?) in
            if user != nil {
            self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                
            }
        }
        
    }

}

