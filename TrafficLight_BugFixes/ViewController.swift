//
//  ViewController.swift
//  TrafficLight_BugFixes
//
//  Created by Анна on 06.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = startButton.frame.size.height / 4
    }

    @IBAction func pressedStartButton(_ sender: UIButton) {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight.alpha = 0.3
            redLight.alpha = 1
        case .yellow:
            currentLight = .green
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case .green:
            currentLight = .red
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    }
}

