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

   override func prepare(for segue: UIStoryboardSegue, sender: Any?)
   {
        // get the new view controller using segue.destination.
        // Pass the selected object to the new view ccontroller.
    //moving to next screen
    
    
    
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        //for checking the username and password
        if(textemail.text == "m@a.com" && textpassword.text == "123")
        {
           print("Login Success!!!")
            
        if(swremember.isOn)
        {
            print("write code to remember")
            }
        else{
            print("remove the code")
            }
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let next = sb.instantiateViewController(withIdentifier: "1") as! HomeViewController
            
            //self.present(next, animated: true)
            self.navigationController?.pushViewController(next, animated: true)
        }
        else
        {
            //displaying the alert
            let alert = UIAlertController(title: "Invalid", message: "Invalid Username or password!!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
}

