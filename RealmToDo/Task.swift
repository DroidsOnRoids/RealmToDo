//
//  Task.swift
//  RealmToDo
//
//  Created by Piotr Sochalewski on 12.04.2016.
//  Copyright © 2016 Droids On Roids. All rights reserved.
//

import RealmSwift

class Task: Object {
    
    dynamic var taskTitle = ""
    dynamic var taskDescription: String? = nil
    dynamic var done = false
    dynamic var date = NSDate()
}