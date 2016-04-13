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
    
    var task: Task?

    func configureView() {
        if let task = task {
            titleTextField.text = task.taskTitle
            descriptionTextView.text = task.taskDescription ?? ""
            doneSwitch.on = task.done
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let saveButton = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: #selector(saveObject))
        navigationItem.rightBarButtonItem = saveButton

        self.configureView()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    func saveObject() {
        if let task = task {
            updateTask(task)
        } else {
            task = Task()
            task!.add()
            updateTask(task!)
        }
        
        navigationController?.popViewControllerAnimated(true)
    }
    
    func updateTask(task: Task) {
        task.update { 
            task.taskTitle = self.titleTextField.text ?? ""
            task.taskDescription = self.descriptionTextView.text
            task.done = self.doneSwitch.on
            task.date = NSDate()
        }
    }
}