//
//  DetailViewController.swift
//  GildedRoseKata
//
//  Created by Shaher Kassam on 2019-05-02.
//  Copyright © 2019 Shaher. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var itemNameLabel: UILabel!
    var item: Item?
    
    
    convenience init?(item: Item) {
        self.init()
        self.item = item
    }

    override func viewWillAppear(_ animated: Bool) {
        
        self.itemNameLabel.text = item?.name
        
    }
}
