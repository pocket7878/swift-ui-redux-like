//
//  AppStateReducer.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/05.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import Foundation

final class AppStateReducer: Reducer {
    typealias StateType = AppState
    
    func reduce(s: AppState, a: Action) -> AppState {
        return AppState(
            userState: s.userState,
            counterState: CounterStateReducer().reduce(s: s.counterState, a: a)
        )
    }
}
