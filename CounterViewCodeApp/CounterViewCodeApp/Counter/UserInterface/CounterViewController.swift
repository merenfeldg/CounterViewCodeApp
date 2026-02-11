//
//  ViewController.swift
//  CounterViewCodeApp
//
//  Created by Gabriel Merenfeld on 10/02/26.
//

import UIKit

class CounterViewController: UIViewController {
    
    private var viewModel: CounterViewModel
    private var contentView: CounterScreen
    
    init(viewModel: CounterViewModel, view: CounterScreen) {
        self.viewModel = viewModel
        contentView = view
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.delegate = self
        updateCounterWhenClickTheButtons()
        view.backgroundColor = .white
    }
    
    private func updateCounterWhenClickTheButtons() {
        viewModel.onCountValueChange = { [weak self] newValue in
            self?.contentView.counterValue = String(newValue)
        }
    }
}

extension CounterViewController: CounterScreenDelegateProtocol {
    
    func tappedIncrementButton() {
        viewModel.incrementValue()
    }
    
    func tappedDecrementButton() {
        viewModel.decrementValue()
    }
}
