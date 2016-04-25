//
//  ShoppingLIstVC.swift
//  MealManagerFinal
//
//  Created by HChlebek on 4/14/16.
//  Copyright © 2016 HChlebek. All rights reserved.
//

import Foundation

class ShoppingListVC: UITableViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    
}
