//
//  ViewController.swift
//  SumOfPrimeNumbersApp
//
//  Created by AlexandraChernigova on 12.04.17.
//  Copyright © 2017 AlexandraChernigova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var explainingText: UILabel!
        
    @IBOutlet weak var enterNameField: UITextField!
    
    private enum Segue: String {
        
        case start = "GoToTask"
        
        var identifier: String {
            return rawValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func tapToStart(_ sender: Any) {
        TaskStore.shared.userName = enterNameField.text!
        performSegue(withIdentifier: Segue.start.identifier, sender: nil)
    }

}

