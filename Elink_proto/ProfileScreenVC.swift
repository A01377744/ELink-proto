//
//  ProfileScreenVC.swift
//  Elink_proto
//
//  Created by user188474 on 5/28/21.
//

import UIKit

class ProfileScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func logout(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToViewController1", sender: self)
    }
}
