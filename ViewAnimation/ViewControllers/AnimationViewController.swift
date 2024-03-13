//
//  ViewController.swift
//  ViewAnimation
//
//  Created by Карина Короткая on 12.03.2024.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    private var currentAnimation = AnimationInfo.getNextAnimation()
    private var nextAnimation = AnimationInfo.getNextAnimation()
    
    @IBOutlet private var animationView: SpringView!
    @IBOutlet private var presetLabel: SpringLabel!
    @IBOutlet private var curveLabel: SpringLabel!
    @IBOutlet private var forceLabel: SpringLabel!
    @IBOutlet private var durationLabel: SpringLabel!
    @IBOutlet private var delayLabel: SpringLabel!
    @IBOutlet private var runButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    @IBAction private func runAnimation() {
        animationView.animation = currentAnimation.preset.rawValue
        animationView.curve = currentAnimation.curve.rawValue
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.delay = currentAnimation.delay
        animationView.animate()
        
        updateLabels()
        currentAnimation = nextAnimation
        runButton.setTitle("Run \(nextAnimation.preset.rawValue)", for: .normal)
        nextAnimation = AnimationInfo.getNextAnimation()
    }
    
    private func updateLabels() {
        presetLabel.text = "Preset: \(currentAnimation.preset.rawValue)"
        curveLabel.text = "Curve: \(currentAnimation.curve.rawValue)"
        forceLabel.text = "Force: \(currentAnimation.force)"
        durationLabel.text = "Duration: \(currentAnimation.duration)"
        delayLabel.text = "Delay: \(currentAnimation.delay)"
    }
}


