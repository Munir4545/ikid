//
//  SecondViewController.swift
//  ikid
//
//  Created by Munir Emam on 4/28/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var PunLabel: UILabel!
    
    @IBOutlet weak var PunView: UIView!
    
    var isFlipped = false
    
    @IBAction func punPunch(_ sender: Any) {
        if !isFlipped {
            self.isFlipped = true
            let newView = UIView()
            PunLabel.text = "Many soles were lost"
            newView.center = PunView.center
            UIView.transition(with: PunView, duration: 0.2, options: [.transitionFlipFromRight],animations: {self.PunView.addSubview(newView)})
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
