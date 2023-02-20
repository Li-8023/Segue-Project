//
//  ViewController.swift
//  CSE335Lab2
//
//  Created by lihe5 on 2/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var eWeightTextField: UITextField!
    @IBOutlet weak var earthImage: UIImageView!
    //@IBOutlet weak var fromJupiterMessage: UILabel!
    @IBOutlet weak var fromMoonMessage: UILabel!
    var earth_weight: Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.earthImage.image = UIImage(named: "earth.jpg")
    }
    
    //transfer the earth weight to moon
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "toViewMoon")
        {
            let moon = segue.destination as! MoonViewController
            
            let result = self.eWeightTextField.text
            if let unwrapped = result{
                earth_weight = Double(unwrapped)
                
            }
            else
            {
                print("miss weight result")
            }
            moon.fromEarth = earth_weight
        }
        
    }
    
    //unwind segue method
    //return from moon
    @IBAction func fromMoon(segue:UIStoryboardSegue)
    {
        
        if let sourceViewController = segue.source as? MoonViewController{
            self.fromMoonMessage.text = "Coming from Moon"
        }
        
        if let sourceViewController2 = segue.source as? JupiterViewController
        {
            self.fromMoonMessage.text = "Coming from Jupiter"
        }
    }
    
    //unwind segue method
    //return from jupiter
//    @IBAction func fromJupiter(segue:UIStoryboardSegue)
//    {
        
//        if let sourceViewController2 = segue.source as? JupiterViewController
//        {
//            self.fromMoonMessage.text = "Coming from Jupiter"
//        }
   // }
}

