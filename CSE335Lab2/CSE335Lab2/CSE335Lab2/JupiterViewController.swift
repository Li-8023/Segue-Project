//
//  JupiterViewController.swift
//  CSE335Lab2
//
//  Created by lihe5 on 2/1/23.
//

import UIKit

import UIKit

class JupiterViewController: UIViewController {
    @IBOutlet weak var jupiterImage: UIImageView!
    @IBOutlet weak var eWeightResult: UILabel!
    @IBOutlet weak var mWeightResult: UILabel!
    @IBOutlet weak var jWeightResult: UILabel!
    var fromMoon:Double? //get the info from moon
    var fromEarth:Double? //get the info from earth
    
    var jWeight:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.jupiterImage.image = UIImage(named: "jupiter.jpg")
        
        if let unwrapped = fromEarth ?? nil{
            self.eWeightResult.text = "Your weight on Earth is \(unwrapped)"
            jWeight = unwrapped * 2.4
            
        }
        else{
            self.eWeightResult.text = "missing earth weight"
        }
        
        if let unwrapped2 = fromMoon ?? nil
        {
            self.mWeightResult.text = "Your weight on Moon is \(unwrapped2)"
        }
        else
        {
            self.mWeightResult.text = "missing moon weight"
        }
        
        self.jWeightResult.text = "Your weight on Jupiter is \(jWeight)"
    }
    
}
