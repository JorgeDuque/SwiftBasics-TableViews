//
//  ViewController.swift
//  AddRowsToTableViews
//
//  Created by Jorge Duque on 12/21/16.
//  Copyright © 2016 Jorgeduque. All rights reserved.
//

import UIKit

var contentArray = ["Jorge", "Joe", "Doe"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(contentArray)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
        print(contentArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Table Views Required Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = contentArray[indexPath.row]
        return cell
    }
    
    //TableView Optional methods
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            contentArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    
    
    //Passing data from one view to another
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "showDetail"{
            let cell = sender as! UITableViewCell
            let row = self.tableView.indexPath(for: cell)?.row
            let detailViewController = segue.destination as! RowDetailViewController
            detailViewController.rowName = contentArray[row!]
        }
    }

  
   

}

