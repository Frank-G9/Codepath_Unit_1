//
//  DetailViewController.swift
//  Codepath_Unit_1
//
//  Created by Frank Gomez on 9/5/23.
//

import UIKit

class DetailViewController: UIViewController {

    //outlet for image and Label
   
    @IBOutlet weak var Lobo_pics: UIImageView!
    
    @IBOutlet var infoLabel: UILabel!
    
    
    
    //Property
    var INFO: ButtonPress?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Additional setup
        if let INFO = INFO {
            Lobo_pics.image = INFO.image
            infoLabel.text = String(INFO.info)
        }
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
