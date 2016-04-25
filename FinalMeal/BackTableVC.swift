//
//  BackTableVC.swift
//  MealManagerFinal
//
//  Created by HChlebek on 4/14/16.
//  Copyright © 2016 HChlebek. All rights reserved.
//

import Foundation

class BackTableVC: UITableViewController
{
    var optionsArray = [String]()
    
    override func viewDidLoad()
    {
        optionsArray = ["Meal Planner","My Recipes","Discover Recipes","Shopping List"]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionsArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(optionsArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = optionsArray[indexPath.row]
        
        return cell
    }
}