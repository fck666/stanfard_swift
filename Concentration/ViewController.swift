//
//  ViewController.swift
//  Concentration
//
//  Created by 58 on 2021/5/27.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0{
        didSet{
            flipCountLabel.text = "Flips:\(flipCount)"
        }
    }
    
    var emojiChioces = ["🎃","👻","👻","🎃"]
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.firstIndex(of: sender)
        flipCard(withEmoji: emojiChioces[cardNumber!], on: sender)
        print("cardNum:\(cardNumber)")
        
    }
    func flipCard(withEmoji emoji: String, on button: UIButton)  {
//        print("flipCard(withEmoji:\(emoji))")
        if button.currentTitle==emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

