//
//  ViewController.swift
//  Project1
//
//  Created by Lambda_School_Loaner_259 on 2/16/20.
//  Copyright © 2020 DeVitoC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                //this is a picture to load!
                pictures.append(item)
            }
        }
        
        print(pictures)
    }


}

