//
//  DayOptions.swift
//  MealManagerFinal
//
//  Created by HChlebek on 4/20/16.
//  Copyright © 2016 HChlebek. All rights reserved.
//

import Foundation

class DayOptions: UITableViewController
{
    @IBOutlet var dayOptionsTableView: UITableView!
    
    var dayOptionsArray = ["Breakfast","Lunch","Dinner","Snacks"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dayOptionsArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myTableViewCell = dayOptionsTableView.dequeueReusableCellWithIdentifier("dayOptionsCell", forIndexPath: indexPath)
        myTableViewCell.textLabel?.text = dayOptionsArray[indexPath.row]
        return myTableViewCell
    }
    
    
}