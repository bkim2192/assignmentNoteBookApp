//
//  ViewController.swift
//  assignmentNoteBookApp
//
//  Created by Brandon Kim on 2/26/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var textField: UITextField!
    var array:[Assignment] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        
        
        
      tableView.dataSource = self
        
        let firstAssignment = Assignment(name: "Math")
        let secondAssignment = Assignment(name: "Biology")
        let thirdAssignment = Assignment(name: "English")
        array.append(firstAssignment)
        array.append(secondAssignment)
        array.append(thirdAssignment)
       
        
        var anArray = defaults.array(forKey: "ARRAY")
        
        var array2 = array
      
        /*
        var count = anArray?.count
        var thing = anArray![count! + 1]
        
        
        var name = defaults.string(forKey: "Name1")
        var page = defaults.string(forKey: "Page1")
        */
        
        
        
        
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            let assignmentName = array[indexPath.row].name
            let assignmentPage = array[indexPath.row].page
            cell.detailTextLabel?.textColor = UIColor.blue
            cell.textLabel?.textColor = UIColor.blue
            let defaults = UserDefaults.standard
            defaults.set(indexPath.row, forKey: "Inte")
            
            cell.textLabel?.text = assignmentName
            cell.detailTextLabel?.text = "Pages:\(assignmentPage)"
            
            return cell
        } else {
            return UITableViewCell()
        }
       
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            array.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    
    
    
    
    
    
    
    @IBAction func addItem(_ sender: Any) {
        
       if let newOne = textField.text, newOne != ""{
        let defaults = UserDefaults.standard
        
            let new = Assignment(name: newOne)
            array.append(new)
        
            tableView.reloadData()
        
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let nvc = segue.destination as! SecondViewController
            let currentItem = array[indexPath.row]
            nvc.assignment = currentItem
            let defaults = UserDefaults.standard
            nvc.inte = indexPath.row
            
           
           
            
            
            tableView.reloadData()
            
           
            
            

        }
        
        
        
        
        
        
        
    
    }
    
    
   
    
    
    
}

