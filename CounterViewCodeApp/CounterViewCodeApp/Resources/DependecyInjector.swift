//
//  DependecyInjector.swift
//  CounterViewCodeApp
//
//  Created by Gabriel Merenfeld on 10/02/26.
//

class DependecyInjector {
    static var madeCounterViewControllerDependecy = CounterViewController(
        viewModel: CounterViewModel(),
        view: CounterScreen()
    )
}
