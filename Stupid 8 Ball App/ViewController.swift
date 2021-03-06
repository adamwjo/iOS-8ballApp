//
//  ViewController.swift
//  Stupid 8 Ball App
//
//  Created by Adam Johnson on 3/18/19.
//  Copyright © 2019 Adam Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballpicIndex: Int = 0
    let ballImages = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5"
    ]
    
    @IBOutlet weak var eightBallView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBall()
    }
    
    
    @IBAction func newBallViewButton(_ sender: Any) {
        newBall()
    }
    
    func newBall() {
        ballpicIndex = Int.random(in: 0...4)
        eightBallView.image = UIImage(named: ballImages[ballpicIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBall()
    }
    


}

