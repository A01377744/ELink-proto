//
//  ChatVC.swift
//  Elink_proto
//
//  Created by user188474 on 5/27/21.
//

import UIKit

class ChatVC: UIViewController {
    let arrChats = ["Martín Lorenzo", "Gabriela López", "Paola Márquez","Jacques Cárdenas","Peter Parker","Nolan Grayson","Kraudio Mayoral", "Allen el Alien","Mark Williams", "Héctor Anaya", "Isaac Darkblood"]

    @IBOutlet weak var msgTableView: UITableView!
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

}

extension ChatVC:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrChats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaChat", for: indexPath) as! CeldaChat
        celda.textLabel?.text = arrChats[indexPath.row]
        return celda
    }
    
    
}

