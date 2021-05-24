	//
//  userType.swift
//  Elink_proto
//
//  Created by user188474 on 5/24/21.
//

import UIKit

class UserTypeVC: UIViewController {
    
    var userType: String = ""

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var sharkyBtn: UIButton!
    @IBOutlet weak var sheepyBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sharkyPressed(_ sender: Any) {
        userType = "sharky"
        if usernameTF.text != ""{
            continueBtn.isEnabled = true
        }
    }
    
    @IBAction func sheepyPressed(_ sender: Any) {
        userType="sheepy"
        if usernameTF.text != ""{
            continueBtn.isEnabled = true
        }    }
    @IBAction func continuePressed(_ sender: Any) {
        if userType == "sharky" {
            self.performSegue(withIdentifier: "sharkyScreen", sender: self)
        }else if userType == "sheepy" {
            self.performSegue(withIdentifier: "sheepyScreen", sender: self)
        }else{
            print("error al ejecutar segue")
        }
        
    }
}
