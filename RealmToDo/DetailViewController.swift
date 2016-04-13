//
//  DetailViewController.swift
//  RealmToDo
//
//  Created by Piotr Sochalewski on 12.04.2016.
//  Copyright © 2016 Droids On Roids. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var doneSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let saveButton = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: #selector(saveObject))
        navigationItem.rightBarButtonItem = saveButton
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    func saveObject() {
    }
}