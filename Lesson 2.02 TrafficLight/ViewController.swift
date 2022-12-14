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
    
    private let filletSize: CGFloat = 75
    
    private var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = filletSize
        yellowView.layer.cornerRadius = filletSize
        greenView.layer.cornerRadius = filletSize
    }

    @IBAction func buttinDidTapped(_ sender: Any) {
        switchButton.setTitle("NEXT", for: .normal)
        switch counter {
        case 1:
            redView.alpha = 1
            greenView.alpha = 0.3
            counter += 1
        case 2:
            yellowView.alpha = 1
            redView.alpha = 0.3
            counter += 1
        case 3:
            greenView.alpha = 1
            yellowView.alpha = 0.3
            counter = 1
        default:
            break
        }
        
    }
    
}

