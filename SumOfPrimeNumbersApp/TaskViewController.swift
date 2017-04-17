//
//  TaskViewController.swift
//  SumOfPrimeNumbersApp
//
//  Created by AlexandraChernigova on 12.04.17.
//  Copyright © 2017 AlexandraChernigova. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    
    @IBOutlet weak var finiteValue: UITextField!

    @IBOutlet weak var primeLabel: UILabel!
    
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var allPrimeNumbers: UILabel!
    
    @IBOutlet weak var sumOfPrimeNumbers: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = "Hi, \(TaskStore.shared.userName)!"
        self.automaticallyAdjustsScrollViewInsets = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func tapToCount(_ sender: Any) {
        
        if let n = Int(self.finiteValue.text!) {
        
        var numbers = [Int](2 ..< n)
        var primeNumbers : [Int] = []
        
        func isPrime(m: Int) -> Bool {
            if m < 2 {
                return false
            }
            
            let limit = Int(sqrt(Double(m)))
            
            if limit < 2 {
                return true
            }
            
            for j in 2...limit {
                if m % j == 0 {
                    return false
                }
            }
            return true
        }
        
        for i in 0..<numbers.count {
            if isPrime(m: numbers[i]) {
                primeNumbers.append(numbers[i])
                
            }
        }

        func returnSum(Array: [Int]) -> Int {
            var result: Int = 0
            
            for i in 0..<Array.count {
                result = Array[i] + result
            }
            return result
        }
        
        allPrimeNumbers.text = String(describing: primeNumbers)
            
        sumOfPrimeNumbers.text = String(returnSum(Array: primeNumbers))

        } else {
            let dialog = UIAlertController(title: "It's not a number" , message: "Please input correct value", preferredStyle: .alert)
            
            dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(dialog, animated:  true, completion:  nil)
        }
        
    }
}
