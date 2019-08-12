//
//  CatsBreed.swift
//  UITableViewAndUIImage
//
//  Created by Ника Перепелкина on 11/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class CatsBreed: UITableViewController {

    let imageNameArray = [ "Персидская",
                           "Шотландская вислоухая",
                           "Бенгальская",
                           "Сфинкс"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   
    
    // количество строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) // получили ячейку
        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! DetailVC
                detailVC.breedTitle = imageNameArray[indexPath.row]
            }
        }
        
    }
    

}
