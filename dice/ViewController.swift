//
//  ViewController.swift
//  dice
//
//  Created by AKBARJON JURAMIRZAEV on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    let diceImages = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollPressed(_ sender: Any) {
//        diceImageView1.image = diceImages[Int.random(in: 0...5)]
//        diceImageView2.image = diceImages[Int.random(in: 0...5)]
        diceImageView1.image = diceImages.randomElement()
        diceImageView2.image = diceImages.randomElement()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

