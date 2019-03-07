//
//  ViewController.swift
//  Day3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textemail: UITextField!
    @IBOutlet weak var textpassword: UITextField!
    
    
    @IBOutlet weak var swremember: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func loginButton(_ sender: UIButton) {
        if(textemail.text == "m@gmail.com" && textpassword.text == "Akshay@12")
        {
           
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let next = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
                
                self.present(next, animated: true)
            
        }
        else
        {
            let alert = UIAlertController(title: "Invalid", message: "Invalid Username or password!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
}

