//
//  ThirdViewController.swift
//  ikid
//
//  Created by Munir Emam on 4/28/25.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var DadLabel: UILabel!
    
    @IBOutlet weak var DadView: UIView!
    
    let knockKnock = [1: "Who's there!", 2: "Ken!", 3: "Ken who?", 4: "Ken you open the door and let me in."]
    
    var flipCount = 1
    
    @IBAction func dadPunch(_ sender: Any) {
        if flipCount < 5 {
            let newView = UIView()
            DadLabel.text = knockKnock[flipCount]
            newView.center = DadView.center
            UIView.transition(with: DadView, duration: 0.2, options: [.transitionFlipFromRight], animations: {self.DadView.addSubview(newView)})
            flipCount += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
