//
//  Object.swift
//  RealmToDo
//
//  Created by Piotr Sochalewski on 12.04.2016.
//  Copyright © 2016 Droids On Roids. All rights reserved.
//

import RealmSwift

extension Object {
    func add() {
        let realm = try? Realm()
        try! realm?.write {
            realm?.add(self)
        }
    }
    
    func update(updateBlock: () -> ()) {
        let realm = try? Realm()
        try! realm?.write(updateBlock)
    }
    
    func delete() {
        let realm = try? Realm()
        try! realm?.write {
            realm?.delete(self)
        }
    }
}