//
//  MoonViewController.swift
//  CSE335Lab2
//
//  Created by lihe5 on 2/1/23.
//

import UIKit

class MoonViewController: UIViewController {
    var mWeight:Double = 0.0
    var fromEarth:Double?

    @IBOutlet weak var eWeightResult: UILabel!
    //@IBOutlet weak var mWeightResult: UIView!
    
    @IBOutlet weak var mWeightResult: UILabel!
    @IBOutlet weak var moonImage: UIImageView!
    @IBOutlet weak var fromJupiterMessage: UILabel!
    var data:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let unwrapped = fromEarth ?? nil {
            self.eWeightResult.text = "Your weight in Earth is \(unwrapped)"
            mWeight = unwrapped / 6
        }
        else{
            self.eWeightResult.text = "missing earth weight"
        }
        
        self.mWeightResult.text = "Your weight on Moon is \(mWeight)"
        self.moonImage.image = UIImage(named: "moon.jpg")
    }
    
    //transfer weight to jupiter
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        if(segue.identifier == "toViewJupiter")
        {
            let jupiter = segue.destination as! JupiterViewController
            jupiter.fromMoon = mWeight
            
            if let unwrapped2 = fromEarth ?? nil {
                jupiter.fromEarth = unwrapped2
            }
            else{
                print("missing earth weight")
            }
        }
        
    }
    
    //unwind segue method
    @IBAction func fromJupiter(segue:UIStoryboardSegue)
    {
        
        if let sourceViewController = segue.source as? JupiterViewController{
            // dataRecieved = sourceViewController.fromMoon
            //print(dataRecieved)
            self.fromJupiterMessage.text = "Coming from the Jupiter"
        }
    }
}
