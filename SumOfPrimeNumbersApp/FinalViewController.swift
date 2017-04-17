//
//  FinalViewController.swift
//  SumOfPrimeNumbersApp
//
//  Created by AlexandraChernigova on 17.04.17.
//  Copyright © 2017 AlexandraChernigova. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var backgroudImage: UIImageView!
    
    @IBOutlet weak var finalMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalMessage.text = "You did this, \(TaskStore.shared.userName)!"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
