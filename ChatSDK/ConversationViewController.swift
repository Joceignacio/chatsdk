//
//  ConversationViewController.swift
//  ChatSDK
//
//  Created by Joce on 23.08.16.
//  Copyright © 2016 Joce. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView = UITableView()
        var height = view.frame.height
        var width = view.frame.width
        myTableView.frame = CGRectMake(0, 20, width , height)
        myTableView.dataSource = self
        myTableView.delegate = self
        view.addSubview(myTableView)
        
        myTableView.registerNib(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: MyTableViewCell = MyTableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
//        cell.label.text = "test"
        return cell
    }
    

}
