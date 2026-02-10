//
//  CounterScreen.swift
//  CounterViewCodeApp
//
//  Created by Gabriel Merenfeld on 10/02/26.
//

import UIKit

class CounterScreen: UIView {
    
    var value: String?
    weak var delegate: CounterScreenDelegateProtocol?
    
    private let defaultValue: String = "0"
    
    private lazy var counterValueLabel: UILabel = {
        let label = UILabel()
        
        label.text = value != nil ? value : defaultValue
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
        button.addTarget(CounterScreen.self, action: #selector(incrementCounterValueButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    private let decrementButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("DECREMENT -", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
        button.backgroundColor = .red
        button.layer.cornerRadius = 16
        button.addTarget(CounterScreen.self, action: #selector(decrementCounterValueButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func incrementCounterValueButtonAction() {
        delegate?.tappedIncrementButton()
    }
    @objc private func decrementCounterValueButtonAction() {
        delegate?.tappedDecrementButton()
    }
}

//MARK: - Configuration Screen
extension CounterScreen {
    
    private func setupView() {
        addSubviews()
        disableTranslatesAutoreszingMaskInAllElements()
        setupConstraints()
    }
    
    private func addSubviews() {
        addSubview(counterValueLabel)
        addSubview(incrementButton)
        addSubview(decrementButton)
    }
    
    private func disableTranslatesAutoreszingMaskInAllElements() {
        subviews.forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            counterValueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            counterValueLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            incrementButton.topAnchor.constraint(equalTo: counterValueLabel.bottomAnchor, constant: 16),
            incrementButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            incrementButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            decrementButton.topAnchor.constraint(equalTo: incrementButton.bottomAnchor, constant: 16),
            decrementButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            decrementButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
        ])
    }
}
