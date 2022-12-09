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
    @IBOutlet weak var diceScoreText: UILabel!
    @IBOutlet weak var diceScoreIndex: UILabel!
    
    @IBAction func rollPressed(_ sender: Any) {
//        diceImageView1.image = diceImages.randomElement()
//        diceImageView2.image = diceImages.randomElement()
        let scoreIndex1 = Int.random(in: 0...5)
        let scoreIndex2 = Int.random(in: 0...5)
        diceImageView1.image = diceImages[scoreIndex1]
        diceImageView2.image = diceImages[scoreIndex2]
        let result = scoreIndex1+scoreIndex2+2
        diceScoreIndex.text = String(result)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

