//
//  DataStore.swift
//  SpringApp
//
//  Created by Lera Savchenko on 4.09.22.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init () {}
}
