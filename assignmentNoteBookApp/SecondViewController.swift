//
//  SecondViewController.swift
//  assignmentNoteBookApp
//
//  Created by Brandon Kim on 2/27/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var pageField: UITextField!
    
    @IBOutlet weak var onOff: UILabel!
    @IBOutlet weak var label: UILabel!
    var Boole:Bool! = true
    var inte:Int!
    var assignment: Assignment!
    override func viewDidLoad() {
        label.text = assignment.name
        super.viewDidLoad()
/*        label.text = "Edit Assignment:\(assignment.name)"
        nameField.text = assignment.name
        pageField.text = String(assignment.page)
 */
        // Do any additional setup after loading the view.
       
        
        
        
        
    }
    
    
    
    @IBAction func addButton(_ sender: Any) {
        var name = nameField.text
        var pageNumber = pageField.text
        let defaults = UserDefaults.standard
        defaults.set(name, forKey: "Name1")
        defaults.set(pageNumber, forKey: "Page1")
        
        
    }
    
    
    
    
    
    
    @IBAction func deleteButton(_ sender: Any) {
      var buttonText = ""
        let defaults = UserDefaults.standard
            Boole = !Boole
        if Boole {
            buttonText = "On"
            defaults.set(buttonText, forKey: "Text")
            
            onOff.text = buttonText
        } else {
           
            buttonText = "Off"
             defaults.set(buttonText, forKey: "Text")
            onOff.text = buttonText
        }
        
        
        
    }
    
    
    /*
    
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 let nvc = segue.destination as! ViewController
 
 nvc.array.append(Assignment(name: assignment.name))
 nvc.array.remove(at: inte)
 nvc.tableView.reloadData()
 
 
 }
    
    */
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
