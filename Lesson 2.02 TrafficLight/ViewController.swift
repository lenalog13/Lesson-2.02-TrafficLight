//
//  ViewController.swift
//  Lesson 2.02 TrafficLight
//
//  Created by Елена Логинова on 14.12.2022.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var switchButton: UIButton!
    
    private let lightIsOff: CGFloat = 1
    private let lightIsOn: CGFloat = 0.3
    
    private var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }

    
    
    @IBAction func buttonDidTapped() {
        if  switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        switch counter {
        case 1:
            redView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            counter += 1
        case 2:
            yellowView.alpha = lightIsOff
            redView.alpha = lightIsOn
            counter += 1
        case 3:
            greenView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            counter = 1
        default:
            break
        }
    }
    
}

