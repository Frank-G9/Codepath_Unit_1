//
//  ViewController.swift
//  Codepath_Unit_1
//
//  Created by Frank Gomez on 9/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Creating multiple Individual info
    let MyBackground = ButtonPress(image: UIImage(named: "Lobo_Back")!, info: "Originally, Lobo belonged to a race of aliens  called the Velorpians, who were all killed by the Psions, with Lobo the only survivor. After Crisis on Infinite Earths, the name of this race was retroactively changed in later appearances to the Czarnians, with Lobo himself now the cause of their genocide.")
    let Weakness = ButtonPress(image: UIImage(named: "Lobo_Weak")!, info: "Lobo's nigh-unkillable state has trained him to think he is invincible, when in reality he can still be incapacitated (it's just really hard to do so). Because of this, he tends to overestimate his own abilities. Lobo also can easily be distracted by a woman's pretty face.")
    let Kills = ButtonPress(image: UIImage(named: "Lobo_Kill")!, info: "He has killed millions or billions when he destroyed worlds. He has destroyed countless planets and preserves their knowledge through one Urban area from that planet that he shrunk.")
    
    //Array for Storing Info
    var INFO: [ButtonPress] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Store INFO
        INFO = [MyBackground, Weakness, Kills]
    }

    @IBAction func didTapButtton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {
            if tappedView.restorationIdentifier == "one" {
                detailViewController.INFO = INFO[0]
            } else if tappedView.restorationIdentifier == "two" {
                detailViewController.INFO = INFO[1]
            } else if tappedView.restorationIdentifier == "three" {
                detailViewController.INFO = INFO[2]
            } else {
                print("no info was tapped, please check your selection.")
            }
        }
    }
    
}

