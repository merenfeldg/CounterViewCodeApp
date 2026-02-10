//
//  ViewController.swift
//  CounterViewCodeApp
//
//  Created by Gabriel Merenfeld on 10/02/26.
//

import UIKit

class CounterViewController: UIViewController {
    
    private let viewModel: CounterViewModel
    private let contentView: CounterScreen
    
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
    }
}

