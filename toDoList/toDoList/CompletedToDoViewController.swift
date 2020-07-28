//
//  CompletedToDoViewController.swift
//  toDoList
//
//  Created by Apple on 7/28/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    @IBOutlet weak var toDoDisplay: UILabel!
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDoDisplay.text = selectedToDo.description

        // Do any additional setup after loading the view.
    }
    
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo = ToDoClass()


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
