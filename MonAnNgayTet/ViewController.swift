//
//  ViewController.swift
//  MonAnNgayTet
//
//  Created by Tuấn 01635578022 on 3/11/17.
//  Copyright © 2017 Tuấn 01635578022. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var dataManager = DataManager.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        self.myTableView.register(Cell.self, forCellReuseIdentifier: "Cell")
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        let monAn = dataManager.data[indexPath.item] as! MonAn
        cell.kCellWidth = self.view.frame.size.width
        cell.addSubviews()
        cell.imageViewCell.image = monAn.photo
        cell.nameLabel.text = monAn.name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            dataManager.data.removeObject(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    
}
