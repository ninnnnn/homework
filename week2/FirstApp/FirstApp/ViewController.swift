//
//  ViewController.swift
//  FirstApp
//
//  Created by Ninn on 2019/11/13.
//  Copyright © 2019 Ninn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textContent: UILabel!
    @IBOutlet weak var viewBg: UIView!

    @IBAction func changeColorAndText(_ sender: UIButton) {
        self.viewBg.backgroundColor = .randomColor()
        randomContent()
    }

    let text = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempu",
                "Contrary to popular belief, Lorem Ipsum is not simply random text.",
                "Richard McClintock, a Latin professor at Hampden-Sydney College in",
                "looked up one of the more obscure Latin words, consectetur",
                "from a Lorem Ipsum passage, and going through the cites of the word",
                "This book is a treatise on the theory of ethics, very popular during the.",
                "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    func randomContent(){
        let index = Int(arc4random_uniform(UInt32(text.count)))
        textContent.text = text[index]
    }

}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(red: .random(),
        green: .random(),
        blue: .random(),
        alpha: 1.0)
    }
}
