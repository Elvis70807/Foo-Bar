//
//  ViewController.swift
//  FooBar
//
//  Created by Elvis Conte on 1/11/21.
//

import UIKit

class ViewController: UIViewController
{

   
    @IBOutlet var numberDisplay: UILabel!
    var number = 0
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        numberDisplay.text = String(number)
    }

 
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        number += 1
        numberDisplay.text = String(number)
    }
    
    @IBAction func onPress(_ sender: UILongPressGestureRecognizer) {
        number = 0
        numberDisplay.text = String(number)
    }
    
    
    
}

