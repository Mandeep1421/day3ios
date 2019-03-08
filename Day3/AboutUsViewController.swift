//
//  AboutUsViewController.swift
//  Day3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var lblAnimalName: UILabel!
    
    @IBOutlet weak var lblslider: UILabel!
    @IBOutlet weak var segmentAnimal: UISegmentedControl!
    @IBOutlet weak var imgAnimal: UIImageView!
    var x:Int?
    override func viewDidLoad() {
    super.viewDidLoad()
            
            if let i = x
            {
                print(i)
            }
        segmentAnimal.insertSegment(withTitle: "Monkey", at: 3, animated: true)

        }
    @IBAction func segmentAnimalChanges(_ sender: UISegmentedControl)
    {
        print(sender.selectedSegmentIndex)
        
        switch sender.selectedSegmentIndex {
        case 0:
            lblAnimalName.text = "Cat"
            imgAnimal.image = UIImage(named: "cat.jpeg")

        case 1:
            lblAnimalName.text = "Lion"
            imgAnimal.image = UIImage(named: "lion.jpeg")

        case 2:
            lblAnimalName.text = "Tiger"
            imgAnimal.image = UIImage(named: "panda.jpeg")

        case 3:
            lblAnimalName.text  = "I am dynamic Jiraf"
            imgAnimal.image = UIImage(named: "jiraf.jpeg")
    
        default:
            break
        }
    }
    
    @IBAction func slider(_ sender: UISlider)
    {
        lblslider.text = String(Int(sender.value))
    }
    
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


