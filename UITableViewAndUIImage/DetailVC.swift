//
//  DetailVC.swift
//  UITableViewAndUIImage
//
//  Created by Ника Перепелкина on 12/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var breedTitle = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: breedTitle)
        titleLabel.text = breedTitle
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
    }
}
