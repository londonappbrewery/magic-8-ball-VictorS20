//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by VICTOR on 14/11/2016.
//  Copyright © 2016 Victor J. Somovilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    func updateBallAnswer(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        print(randomBallNumber)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        

    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateBallAnswer()
        
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallAnswer()
    }
    
}

