//
//  ViewController.swift
//  AnimationApp
//
//  Created by Иван Гришин on 22.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var buttonLabel: UIButton!
    
    private let animation = AnimationView.getAnimation()
    private var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsName()
        
    }
 
    @IBAction func buttonAction(_ sender: UIButton) {
        
        currentAnimation = Int.random(in: 0..<animation.count)
        labelsName()
        animationAdd()
        
    }
    
    private func animationAdd() {
        animationView.animation = animation[currentAnimation].animation
        animationView.curve = animation[currentAnimation].curveLabel
        animationView.force = CGFloat(animation[currentAnimation].forceLabel)
        animationView.force = CGFloat(animation[currentAnimation].durationLabel)
        animationView.force = CGFloat(animation[currentAnimation].delayLabel)
        animationView.animate()
        
    }
    private func labelsName() {
        presetLabel.text = "Preset: \(animation[currentAnimation].presetLabel)"
        curveLabel.text = "Curve: \(animation[currentAnimation].curveLabel)"
        forceLabel.text = "Force: \(animation[currentAnimation].forceLabel)"
        durationLabel.text = "Duration: \(animation[currentAnimation].durationLabel)"
        delayLabel.text = "Delay: \(animation[currentAnimation].delayLabel)"
    
        buttonLabel.setTitle("Start \(animation[currentAnimation].presetLabel)", for: .normal)
    }
}

