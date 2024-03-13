//
//  AnimationView.swift
//  ViewAnimation
//
//  Created by Карина Короткая on 12.03.2024.
//

import Foundation
import SpringAnimation

struct AnimationInfo {
    
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getNextAnimation() -> AnimationInfo {
        let currentPreset = AnimationStore.shared.getRandomPreset()
        let currentCurve = AnimationStore.shared.getRandomCurve()
        let currentForce = AnimationStore.shared.getRandomForce()
        let currentDuration = AnimationStore.shared.getRandomDuration()
        let currentDelay = AnimationStore.shared.getRandomDelay()
        
        return AnimationInfo(
            preset: currentPreset,
            curve: currentCurve,
            force: currentForce,
            duration: currentDuration,
            delay: currentDelay
        )
    }
}
