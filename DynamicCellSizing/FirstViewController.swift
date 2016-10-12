//
//  FirstViewController.swift
//  DynamicCellSizing
//
//  Created by kchlodek on 12.10.2016.
//  Copyright © 2016 kchlodek. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextViewDelegate {

    /** TableView */
    @IBOutlet weak var tableView: UITableView!
    
    let data = ["Foo\nBoo", "Boo", "Huh"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setupTableView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     Setup tableView
     
     - Author: kchlodek
     */
    func setupTableView()
    {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 100
    }
    
    /**
     UITextView Delegate
     
     - Author: kchlodek
     */
    func textViewDidChange(_ textView: UITextView)
    {
        self.updateTableView()
    }
    
    /**
     Update table view to recalculate the height of cell
     
     - Author: kchlodek
     */
    func updateTableView()
    {
        self.tableView.beginUpdates()
        self.tableView.endUpdates()
    }
}

extension FirstViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "textCell") as! TextTableViewCell
        
        cell.textView.text = self.data[indexPath.row]
        cell.textView.delegate = self
        
        return cell
    }
}

