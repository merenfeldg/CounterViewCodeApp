//
//  CounterViewModel.swift
//  CounterViewCodeApp
//
//  Created by Gabriel Merenfeld on 10/02/26.
//

struct CounterViewModel {
    
    var onCountValueChange: ((Int) -> Void)?
    
    private let minimumValue: Int = 0
    private var counterModel = CounterModel()
    
    mutating func incrementValue() {
        counterModel.value += 1
        onCountValueChange?(counterModel.value)
    }
    
    mutating func decrementValue() {
        if counterModel.value > minimumValue {
            counterModel.value -= 1
            onCountValueChange?(counterModel.value)
        }
    }
}
