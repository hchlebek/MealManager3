//
//  Recipe.swift
//  MealManagerFinal
//
//  Created by HChlebek on 4/18/16.
//  Copyright © 2016 HChlebek. All rights reserved.
//

import UIKit

class Recipe : NSObject
{
    var name = ""
    var ingredientsArray = [String]()
    var image = UIImage(named: "default")
    
    init(Name: String, Ingredients: [String], Image: UIImage)
    {
        super.init()
        name = Name
        ingredientsArray = Ingredients
        image = Image
    }
    
}
