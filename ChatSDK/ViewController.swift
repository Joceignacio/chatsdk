//
//  ViewController.swift
//  ChatSDK
//
//  Created by Joce on 23.08.16.
//  Copyright © 2016 Joce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func show(sender: AnyObject) {
        
        let conversationViewController  = ConversationViewController()
        presentViewController(conversationViewController, animated: true, completion: nil)
        
        
    }

}

