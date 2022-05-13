//
//  ViewController.swift
//  CheckLists
//
//  Created by Cem TAŞKIN on 15.04.2022.
//

import UIKit

class CheckListsViewController: UITableViewController {

    var items  = [CheklistItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let item1 = CheklistItem()
        item1.text = "Walk the dog"
        items.append(item1)
        
        let item2 = CheklistItem()
        item2.text = "Brush the teeth"
        item2.checked = true
        items.append(item2)
    
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        let item = items[indexPath.row]
        label.text = item.text
        
        cell.accessoryType = item.checked ? .checkmark : .none
        
        
        return cell
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        
        let item = items[indexPath.row]
        item.checked = !item.checked
        
        cell?.accessoryType = item.checked ? .checkmark : .none
        
    }
        
}

