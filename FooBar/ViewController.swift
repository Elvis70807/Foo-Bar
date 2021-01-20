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
    @IBOutlet var secondaryNumberDisplay: UILabel!
    
    
        
    override func viewDidLoad()
    {
        super.viewDidLoad()
        numberDisplay.text = String(number)
        
        
        
        
    }

 
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        number += 1
        if number % 3 == 0 && number % 5 == 0 {
            view.backgroundColor = .red
            numberDisplay.textColor = .black
            secondaryNumberDisplay.text = String(number)
            numberDisplay.text = "Foo Bar"
        }
        else if number % 3 == 0{
            view.backgroundColor = .green
            numberDisplay.textColor = .black
            secondaryNumberDisplay.text = String(number)
            numberDisplay.text = "Foo"
        }
        else if number % 5 == 0{
            view.backgroundColor = .yellow
            numberDisplay.textColor = .black
            secondaryNumberDisplay.text = String(number)
            numberDisplay.text = "Bar"
        }
        else
        {
            view.backgroundColor = .black
            numberDisplay.textColor = .white
            secondaryNumberDisplay.text = nil
            numberDisplay.text = String(number)
        }
        
    }
    
    @IBAction func onPress(_ sender: UILongPressGestureRecognizer) {
        number = 0
        view.backgroundColor = .black
        numberDisplay.text = String(number)
    }
   

    
}

