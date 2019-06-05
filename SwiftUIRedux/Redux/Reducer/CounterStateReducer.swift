//
//  CountStateReducer.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/05.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import Foundation

final class CounterStateReducer: Reducer {
    typealias StateType = CounterState
    
    func reduce(s: CounterState, a: Action) -> CounterState {
        switch(a) {
        case CounterAction.CountDown:
            return CounterState(count: s.count - 1)
        case CounterAction.CountUp:
            return CounterState(count: s.count + 1)
        default:
            return s
        }
    }
}
