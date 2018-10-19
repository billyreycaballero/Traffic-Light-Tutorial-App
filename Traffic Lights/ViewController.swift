//
//  ViewController.swift
//  Traffic Lights
//
//  Created by alcoderithm on 19/10/18.
//  Copyright © 2018 alcoderithm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trafficLightBox: UILabel!
    @IBOutlet weak var redLight: UILabel!
    @IBOutlet weak var amberLight: UILabel!
    @IBOutlet weak var greenLight: UILabel!
    @IBOutlet weak var lightDescriptionLabel: UILabel!
    @IBOutlet weak var lightDefinitionLabel: UILabel!
    @IBOutlet weak var sequenceButtonLabel: UIButton!
    let redLightOn = UIColor(displayP3Red: 249/255, green: 21/255, blue: 47/255, alpha: 1.0)
    let amberLightOn = UIColor(displayP3Red: 255/255, green: 191/255, blue: 0/255, alpha: 1.0)
    let greenLightOn = UIColor(displayP3Red: 39/255, green: 232/255, blue: 51/255, alpha: 1.0)
    let redLightOff = UIColor(displayP3Red: 249/255, green: 21/255, blue: 47/255, alpha: 0.5)
    let amberLightOff = UIColor(displayP3Red: 255/255, green: 191/255, blue: 0/255, alpha: 0.5)
    let greenLightOff = UIColor(displayP3Red: 39/255, green: 232/255, blue: 51/255, alpha: 0.5)
    var nextButtonCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lightDescriptionLabel.isEnabled = false
        self.lightDescriptionLabel.isHidden = true
        self.lightDefinitionLabel.textColor = UIColor.white
        self.lightDefinitionLabel.text = "Press \"START\"\nto begin."
        self.lightDefinitionLabel.font = lightDefinitionLabel.font.withSize(18)
        self.lightDefinitionLabel.textAlignment = .center
        self.trafficLightBox.clipsToBounds = true
        self.trafficLightBox.layer.cornerRadius = 30
        self.redLight.backgroundColor = redLightOff
        self.redLight.clipsToBounds = true
        self.redLight.layer.cornerRadius = 30
        self.amberLight.backgroundColor = amberLightOff
        self.amberLight.clipsToBounds = true
        self.amberLight.layer.cornerRadius = 30
        self.greenLight.backgroundColor = greenLightOff
        self.greenLight.clipsToBounds = true
        self.greenLight.layer.cornerRadius = 30
        self.redLight.backgroundColor = redLightOff
        self.amberLight.backgroundColor = amberLightOff
        self.greenLight.backgroundColor = greenLightOff
    }

    @IBAction func sequenceButtonTapped(_ sender: Any) {
        nextButtonCounter += 1
        self.sequenceButtonLabel.setTitle("NEXT", for: .normal)
        switch nextButtonCounter {
        case 1:
            self.lightDescriptionLabel.font = lightDescriptionLabel.font.withSize(22)
            self.lightDescriptionLabel.isEnabled = true
            self.lightDescriptionLabel.isHidden = false
            self.lightDescriptionLabel.layer.position = CGPoint(x: 219, y: 232)
            self.lightDefinitionLabel.layer.position = CGPoint(x: 219, y: 301)
            self.redLight.backgroundColor = redLightOff
            self.amberLight.backgroundColor = amberLightOff
            self.greenLight.backgroundColor = greenLightOn
            self.lightDescriptionLabel.textColor = UIColor.white
            self.lightDescriptionLabel.text = "<-   GREEN"
            self.lightDescriptionLabel.textAlignment = .left
            self.lightDefinitionLabel.font = lightDefinitionLabel.font.withSize(14)
            self.lightDefinitionLabel.textColor = UIColor.white
            self.lightDefinitionLabel.text = "Green light means \"Go\" so you can proceed through the intersection carefully."
        case 2:
            self.lightDescriptionLabel.font = lightDescriptionLabel.font.withSize(22)
            self.lightDescriptionLabel.layer.position = CGPoint(x: 219, y: 158)
            self.lightDefinitionLabel.layer.position = CGPoint(x: 219, y: 230)
            self.redLight.backgroundColor = redLightOff
            self.amberLight.backgroundColor = amberLightOn
            self.greenLight.backgroundColor = greenLightOff
            self.lightDescriptionLabel.textColor = UIColor.white
            self.lightDescriptionLabel.text = "<-   AMBER"
            self.lightDescriptionLabel.textAlignment = .left
            self.lightDefinitionLabel.font = lightDefinitionLabel.font.withSize(14)
            self.lightDefinitionLabel.textColor = UIColor.white
            self.lightDefinitionLabel.text = "Amber light means \"CAUTION\" so you should slow down and get ready to stop."
        case 3:
            self.lightDescriptionLabel.font = lightDescriptionLabel.font.withSize(22)
            self.lightDescriptionLabel.layer.position = CGPoint(x: 219, y: 83)
            self.lightDefinitionLabel.layer.position = CGPoint(x: 219, y: 155)
            self.redLight.backgroundColor = redLightOn
            self.amberLight.backgroundColor = amberLightOff
            self.greenLight.backgroundColor = greenLightOff
            self.lightDescriptionLabel.textColor = UIColor.white
            self.lightDescriptionLabel.text = "<-    RED"
            self.lightDescriptionLabel.textAlignment = .left
            self.lightDefinitionLabel.font = lightDefinitionLabel.font.withSize(14)
            self.lightDefinitionLabel.textColor = UIColor.white
            self.lightDefinitionLabel.text = "Red light means \"STOP\" so you must not go through the intersection and wait behind the stop line."
        default:
            self.lightDescriptionLabel.layer.position = CGPoint(x: 219, y: 100)
            self.lightDefinitionLabel.layer.position = CGPoint(x: 219, y: 190)
            self.lightDescriptionLabel.textColor = UIColor.white
            self.lightDescriptionLabel.text = "CONGRATULATION!"
            self.lightDescriptionLabel.textAlignment = .center
            self.lightDescriptionLabel.font = lightDescriptionLabel.font.withSize(18)
            self.lightDefinitionLabel.textColor = UIColor.white
            self.lightDefinitionLabel.text = "You have learned\nabout the traffic lights.\n\nPress \"START\"\nto begin."
            self.lightDefinitionLabel.font = lightDefinitionLabel.font.withSize(15)
            self.redLight.backgroundColor = redLightOff
            self.amberLight.backgroundColor = amberLightOff
            self.greenLight.backgroundColor = greenLightOff
            nextButtonCounter = 0
            self.sequenceButtonLabel.setTitle("START", for: .normal)
            
        }
        
    }

}

