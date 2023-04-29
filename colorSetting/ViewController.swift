//
//  ViewController.swift
//  colorSetting
//
//  Created by Liaisan on 4/29/23.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    
    @IBOutlet var color: UIView!
    
    
    @IBOutlet var redLabelCounter: UILabel!
    @IBOutlet var GreenLabelCounter: UILabel!
    @IBOutlet var blueLabelCounter: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        color.backgroundColor = .white
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redLabelCounter.text = redSlider.value.formatted()
        GreenLabelCounter.text = greenSlider.value.formatted()
        blueLabelCounter.text = blueSlider.value.formatted()
    }
    
    
    @IBAction func redSliderAction() {
        redLabelCounter.text = redSlider.value.formatted()
        color.backgroundColor = .red
        color.backgroundColor = color.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        
    }
    @IBAction func greenSliderAction() {
        GreenLabelCounter.text = greenSlider.value.formatted()
        color.backgroundColor = .green
        color.backgroundColor = color.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
    }
                                                                          
    @IBAction func blueSliderAction() {
        blueLabelCounter.text = blueSlider.value.formatted()
    }
}



