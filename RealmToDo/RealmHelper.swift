//
//  RealmHelper.swift
//  RealmToDo
//
//  Created by Piotr Sochalewski on 12.04.2016.
//  Copyright © 2016 Droids On Roids. All rights reserved.
//

import RealmSwift

class RealmHelper {
    
    static func objects<T: Object>(type: T.Type) -> Results<T>? {
        let realm = try? Realm()
        
        return realm?.objects(type)
    }
}