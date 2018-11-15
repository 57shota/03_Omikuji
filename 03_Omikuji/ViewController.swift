//
//  ViewController.swift
//  03_Omikuji
//
//  Created by shota ito on 26/09/2018.
//  Copyright © 2018 shota ito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var omikuji: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    
    @IBAction func tellFortune(_ sender: Any) {
        // automatically create a random nuber 0 - 99
        let randNum = arc4random_uniform(99)

        // define the ratio of fortunes by numbers
        switch randNum {
        case 0...9:
            result.text! = "Great Blessing!"
            
            // display different images
            let greatImage = UIImage(named: "great")
            resultImage.image = greatImage
            
        case 10...29:
            result.text! = "Middle Blessing!"
            let middleImage = UIImage(named: "middle")
            resultImage.image = middleImage
        case 30...69:
            result.text! = "Blessing!"
            let blessingImage = UIImage(named: "blessing")
            resultImage.image = blessingImage
        case 70...89:
            result.text! = "Curse!"
            let curseImage = UIImage(named: "curse")
            resultImage.image = curseImage
        case 90...99:
            result.text! = "Great Curse!"
            let gCurseImage = UIImage(named: "greatCurse")
            resultImage.image = gCurseImage
        default:
            break
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

