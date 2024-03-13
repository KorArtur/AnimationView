//
//  DataStore.swift
//  ViewAnimation
//
//  Created by Карина Короткая on 12.03.2024.
//

import Foundation
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let preset: [AnimationPreset] = [.fadeIn, .fadeInDown, .fadeInLeft, .fadeInRight, .fadeInUp, .fadeOut, .fadeOutIn, .fall, .flash, .flipX]
    let curve: [AnimationCurve] = [.easeIn, .easeInOut, .linear, .easeIn, .easeInBack, .easeInCirc, .easeInCubic, .easeInExpo, .easeInQuad, .easeInQuart]
    let force = 1.0
    let duration = 1.0
    let delay = 0.0
    
    private init() {}
}
