//
//  CounterScreen.swift
//  CounterViewCodeApp
//
//  Created by Gabriel Merenfeld on 10/02/26.
//

import UIKit

class CounterScreen: UIView {
    
    private let defaultValue: String = "0"
        
    private lazy var counterValueLabel: UILabel = {
        let label = UILabel()
        
        label.text = defaultValue
        label.font = .boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    private let incrementButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("INCREMENT +", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
        button.backgroundColor = .green
        button.layer.cornerRadius = 16
        
        return button
    }()
    
    private let decrementButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("DECREMENT -", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
        button.backgroundColor = .red
        button.layer.cornerRadius = 16
        
        return button
    }()
}
