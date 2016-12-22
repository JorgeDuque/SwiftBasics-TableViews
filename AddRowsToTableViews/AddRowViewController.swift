//
//  AddRowViewController.swift
//  AddRowsToTableViews
//
//  Created by Jorge Duque on 12/21/16.
//  Copyright © 2016 Jorgeduque. All rights reserved.
//

import UIKit

class AddRowViewController: UIViewController {

    @IBOutlet weak var textFieldAdd: UITextField!
    @IBAction func AddRow(_ sender: AnyObject) {
        if let rowTitle = textFieldAdd.text{
            contentArray.append(rowTitle)
            navigationController?.popViewController(animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(contentArray)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
