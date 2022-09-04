//
//  ViewController.swift
//  SpringApp
//
//  Created by Lera Savchenko on 2.09.22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationLabel: UILabel! {
        didSet {
            springAnimationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    // MARK: - IB Actions
    @IBAction func runAnimation(_ sender: SpringButton) {
        springAnimationLabel.text = animation.description
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    } 
}

