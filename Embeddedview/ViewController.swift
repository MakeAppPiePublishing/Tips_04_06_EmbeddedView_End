//
//  ViewController.swift
//  Embeddedview
//
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController,ItemsTableViewControllerDelegate {
    func didSelect(item: RDR1) {
        itemDetailLabel.text = item.detail
    }
    

    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var itemDetailLabel: UILabel!
    var orderedItems = ItemsOrdered()
    var itemTotal:Double{
        var total = 0.00
        for row in orderedItems.orderRows{
            total += row.price
        }
        return total
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format:"Total for order: %5.2f  ",itemTotal)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "table" {
            let vc = segue.destination as! ItemsTableViewController
            vc.delegate = self
        }
    }

}

