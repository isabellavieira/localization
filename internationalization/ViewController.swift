//
//  ViewController.swift
//  internationalization
//
//  Created by Isabella Vieira on 8/25/16.
//  Copyright © 2016 Isabella Vieira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateValues()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }
    
    var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter ()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    func populateValues() {
        //textLabel.text = NSLocalizedString("GOOD_MORNING", comment: "Good Morning")
        textLabel.text = "Good Morning".loc
        currencyLabel.text = currencyFormatter.string(from: 5000)
        dataLabel.text = dateFormatter.string(from: Date())
        //flagImage.image = UIImage (named: "Flag.png")
        //minionImage.image = UIImage (named: "MinionHI.png")
    }


}

extension String {
    var loc:String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}

