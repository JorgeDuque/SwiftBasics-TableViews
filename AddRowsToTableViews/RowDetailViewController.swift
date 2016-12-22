//
//  RowDetailViewController.swift
//  AddRowsToTableViews
//
//  Created by Jorge Duque on 12/21/16.
//  Copyright © 2016 Jorgeduque. All rights reserved.
//

import UIKit

class RowDetailViewController: UIViewController {

    @IBOutlet weak var labelDetail: UILabel!
    var rowName = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelDetail.text = rowName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
