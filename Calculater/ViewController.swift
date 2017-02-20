//
//  ViewController.swift
//  Calculater
//
//  Created by Geeksoft llc on 2/18/17.
//  Copyright © 2017 Geeksoft llc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displaylabel:Double = 0
    var firstnumber:Double = 0
    var operation = 0
    var calculation = false

    @IBOutlet weak var textlabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)

    {
            
        
        if calculation == true{
            textlabel.text = String(sender.tag-1)
            
            displaylabel = Double(textlabel.text!)!
            
            calculation = false
        }
        
        else {
        textlabel.text = textlabel.text! + String(sender.tag-1)
        displaylabel = Double(textlabel.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if textlabel.text != "" && sender.tag != 11 && sender.tag != 16
        {
            firstnumber = Double(textlabel.text!)!
           
            if sender.tag == 12 {
                textlabel.text = "Div"
                
            } //devide
            
           
            if sender.tag == 13 {
                textlabel.text = "Mul"
            }//minus
            
            if sender.tag == 14 {
                textlabel.text = "Sub"

            }//addition
            
            if sender.tag == 15 {
                textlabel.text = "Add"
                
            }// addition
            
            
            operation = sender.tag
            calculation = true
    
        }
        else if sender.tag == 16{
            if operation == 12{
                textlabel.text = String(firstnumber / displaylabel)
            }
            if operation == 13{
                textlabel.text = String(firstnumber * displaylabel)
            }
            if operation == 14{
                textlabel.text = String(firstnumber - displaylabel)
            }
            if operation == 15{
                textlabel.text = String(firstnumber + displaylabel)
            }
            
        }
        
        else if sender.tag == 11{
            operation = 0
            textlabel.text = ""
            firstnumber = 0
            displaylabel = 0
        }
        


}
    
  
}


















