//
//  ViewController.swift
//  assignmentNoteBookApp
//
//  Created by Brandon Kim on 2/26/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var array:[String] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
        
        
    }

    @IBAction func addItem(_ sender: Any) {
        
        
        
    }
    
}

