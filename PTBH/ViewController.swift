//
//  ViewController.swift
//  PTBH
//
//  Created by Anh Lê Việt on 9/28/16.
//  Copyright © 2016 Anh Lê Việt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var NumA: UITextField!
    
    @IBOutlet weak var numB: UITextField!
    
    @IBOutlet weak var numC: UITextField!
    var alertView:UIAlertView = UIAlertView()
    
    @IBAction func btnCaculate(_ sender: AnyObject) {
            if NumA.text == "" || numB.text == "" || numC.text == "" {
            alertView.title = "error"
            alertView.message = "Hay dien du cac dong!"
            alertView.addButton(withTitle: "OK")
            alertView.show()
        }
        else if Int(NumA.text!) != nil || Int(numB.text!) != nil || Int(numC.text!) != nil{
                let a : Int = Int(NumA.text!)!
                let b : Int = Int(numB.text!)!
                let c : Int = Int(numC.text!)!
                let delta : Int =  b*b - 4*a*c;
           if a == 0 {
                if b == 0 {
                    if c == 0 {
                        alertView.title = "result"
                        alertView.message = "Phuong trinh co vo so nghiem"
                        alertView.addButton(withTitle: "OK")
                        alertView.show()
                    }
                    else {
                        alertView.title = "result"
                        alertView.message = "Phuong trinh  vo  nghiem"
                        alertView.addButton(withTitle: "OK")
                        alertView.show()
                    }
                }
                else {
                    alertView.title = "result"
                    alertView.message = "Phuont trinh co nghiem la : " + String (-c/b)
                    alertView.addButton(withTitle: "OK")
                    alertView.show()
                }
            }
            else if delta > 0 {
                let x1 : Double = (Double(-b) - sqrt(Double(delta)))/2*Double(a)
                let x2 : Double = (Double(-b) + sqrt(Double(delta)))/2*Double(a)
                alertView.title = "result"
                alertView.message = "Phuong trinh hai nghiem:  x1 =  " + String(x1) + " va  x2 = " + String(x2)
                alertView.addButton(withTitle: "OK")
                alertView.show()
            }
            else if delta == 0{
                alertView.title = "result"
                alertView.message = "Phuong trinh  co mot nghiem phan biet: " + String(-b/2*a)
                alertView.addButton(withTitle: "OK")
                alertView.show()
            }
            else {
                alertView.title = "result"
                alertView.message = "Phuong trinh vo nghiem"
                alertView.addButton(withTitle: "OK")
                alertView.show()
            }
        }
        else {
            alertView.title = "error"
            alertView.message = "Ban phai nhap chu so"
            alertView.addButton(withTitle: "OK")
            alertView.show()
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

