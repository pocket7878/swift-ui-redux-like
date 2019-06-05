//
//  AppState.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/05.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import Foundation

struct AppState: ReduxState {
    private(set) var userState: UserState = UserState()
    private(set) var counterState: CounterState = CounterState(count: 0)
}
