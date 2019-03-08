//
//  HomeViewController.swift
//  Day3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController
{
    
    var userEmail:String?
    @IBOutlet weak var lblUserEmail: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if let  e =  userEmail
        {
            self.lblUserEmail.text = e
        }
        
        // to hide back button
            self.navigationItem.hidesBackButton = true
           self.navigationController?.hidesBarsOnTap = true
           self.navigationController?.navigationBar.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
        let userDefault = UserDefaults.standard
       if let email = userDefault.string(forKey: "userEmail")
       {
        print(email)
        }
       if let pass = userDefault.string(forKey: "userPassword")
       {
       print(pass)
    }
    }
    
      @IBAction  func btnway(_ sender: UIButton)
        {
       // self.performSegue(withIdentifier: "MovetoAboutUs", sender: nil)
    }
       override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            if segue.identifier == "MoveToAboutUs"
            {
                if let destinationVC = segue.destination as? AboutUsViewController
                {
                    destinationVC.x = 1_000
                }
    
            }
        }

}
