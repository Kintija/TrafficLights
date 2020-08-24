//
//  ViewController.swift
//  TrafficLights
//
//  Created by kintija.avena on 24/08/2020.
//  Copyright © 2020 Kintija Avena. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}
class ViewController: UIViewController {

    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //startButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    
    @IBAction func startButtonPressed() {
    
        startButton.setTitle("NEXT", for: .normal)
    
        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
            
        case.yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
            
        case .green:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .red
        
        }
        
    }
    
}

