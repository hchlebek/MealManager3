//
//  ViewController.swift
//  MealManagerFinal
//
//  Created by HChlebek on 4/14/16.
//  Copyright © 2016 HChlebek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet var calendarTableView: UITableView!
    
    
    var daysArray = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        calendarTableView.dataSource = self
        calendarTableView.delegate = self
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return daysArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = calendarTableView.dequeueReusableCellWithIdentifier("calendarCell", forIndexPath: indexPath)
        myTableViewCell.textLabel?.text = daysArray[indexPath.row]
        return myTableViewCell
    }
    
}

