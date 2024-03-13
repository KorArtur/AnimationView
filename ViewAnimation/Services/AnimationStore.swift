//
//  AnimationStore.swift
//  ViewAnimation
//
//  Created by Карина Короткая on 12.03.2024.
//

import Foundation
import SpringAnimation

final class AnimationStore {
    
    static let shared = AnimationStore()
    
    private let presets = AnimationPreset.allCases
    private let curves = AnimationCurve.allCases
    private let forces: [CGFloat] = [1.0, 2.0, 3.0]
    private let durations: [CGFloat] = [1.0, 2.0, 3.0]
    private let delays: [CGFloat] = [0.5, 0.7, 1.0]
    
    private var currentPresetIndex = 0
    private var currentCurveIndex = 0
    private var currentForceIndex = 0
    private var currentDurationIndex = 0
    private var currentDelayIndex = 0
    
    func getRandomPreset() -> AnimationPreset {
        let preset = presets[currentPresetIndex]
        currentPresetIndex = (currentPresetIndex + 1) % presets.count
        return preset
    }
    
    func getRandomCurve() -> AnimationCurve {
        let curve = curves[currentCurveIndex]
        currentCurveIndex = (currentCurveIndex + 1) % curves.count
        return curve
    }
    
    func getRandomForce() -> CGFloat {
        let force = forces[currentForceIndex]
        currentForceIndex = (currentForceIndex + 1) % forces.count
        return force
    }
    
    func getRandomDuration() -> CGFloat {
        let duration = durations[currentDurationIndex]
        currentDurationIndex = (currentDurationIndex + 1) % durations.count
        return duration
    }
    
    func getRandomDelay() -> CGFloat {
        let delay = delays[currentDelayIndex]
        currentDelayIndex = (currentDelayIndex + 1) % delays.count
        return delay
    }
    
    func getNextPreset() -> AnimationPreset {
        let preset = presets[(currentPresetIndex + 1) % presets.count]
        return preset
    }
    
    private init() {}
}
