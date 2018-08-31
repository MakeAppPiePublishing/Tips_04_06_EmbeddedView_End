//
//  ItemsViewController.swift
//  Embeddedview
//
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//
import UIKit
protocol ItemsTableViewControllerDelegate{
    func didSelect(item:RDR1)
}

class ItemsTableViewController:UITableViewController {
   
   
    var items = [RDR1]()
    var delegate:ItemsTableViewControllerDelegate! = nil
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = items[row].description
        cell.detailTextLabel?.text = String(format:"$ %5.2f",items[row].price)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        if let delegate = delegate {
            delegate.didSelect(item:items[row])
        }
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        let itemsOrdered = ItemsOrdered()
        items = itemsOrdered.orderRows
    }
}
