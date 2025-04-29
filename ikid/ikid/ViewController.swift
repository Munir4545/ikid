//
//  ViewController.swift
//  ikid
//
//  Created by Munir Emam on 4/28/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var GoodJoke: UILabel!
    
    @IBOutlet weak var GoodView: UIView!
    
    var isFlipped = false
    
    @IBAction func goodPunch(_ sender: Any) {
        if !isFlipped {
            self.isFlipped = true
            print("good punch")
            let newView = UIView()
            GoodJoke.text = "An American"
            newView.center = GoodView.center
            UIView.transition(with: GoodView, duration: 0.2, options: [.transitionFlipFromRight], animations: {self.GoodView.addSubview(newView)})
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

