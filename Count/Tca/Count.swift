//
//  Count.swift
//  Count
//
//  Created by July universe on 2023/01/10.
//
import ComposableArchitecture

struct Count: ReducerProtocol {
    struct State: Equatable {
        var count = 0
    }
    
    enum Action: Equatable {
        case decrement
        case increment
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .decrement:
            state.count -= 1
            return .none
            
        case .increment:
            state.count += 1
            return .none
        }
    }
}
