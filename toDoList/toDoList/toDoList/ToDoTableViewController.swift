//
//  ToDoTableViewController.swift
//  toDoList
//
//  Created by Apple on 7/27/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoClass] = []
    
    func createToDo() -> [ToDoClass] {
        
        let swiftToDo = ToDoClass()
        swiftToDo.description = "learn swift"
        swiftToDo.important = true
        
        let snackToDo = ToDoClass()
        snackToDo.description = "make a snack"
        // important is set to false by default
        


        return [swiftToDo, snackToDo]
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listOfToDo = createToDo()
      
    }

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

         // this gives us a single ToDo
         let eachToDo = listOfToDo[indexPath.row]

         performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo[indexPath.row]
      
        
        if eachToDo.important {
            cell.textLabel?.text = "✨" + eachToDo.description
            } else {
              cell.textLabel?.text = eachToDo.description
            }
            return cell
        }
    

   


        // Configure the cell...

       
    
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as? AddToDoViewController {
            nextAddToDoVC.previousToDoTVC = self
        }
    if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
              if let choosenToDo = sender as? ToDoClass {
                   nextCompletedToDoVC.selectedToDo = choosenToDo
                   nextCompletedToDoVC.previousToDoTVC = self
              }
         }
    }

        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
}




