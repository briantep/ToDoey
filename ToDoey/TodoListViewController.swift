//
//  ViewController.swift
//  ToDoey
//
//  Created by Brian Tep on 9/3/18.
//  Copyright © 2018 Brian Tep. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    
    let itemArray = ["Find Mike", "Buy Eggs", "Destroy Bike"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK - Tabbleview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print (itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }
        
        
        
    }
    

}

