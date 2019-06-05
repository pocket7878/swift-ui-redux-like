//
//  AppState.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/04.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class AppData: BindableObject {
    var didChange = PassthroughSubject<AppData, Never>()
    
    var userState = UserState()
    var counterState = CounterState()
    
    func dispatch(a: Action) {
        debugPrint(a)
        self.userState = UserStateReducer().reduce(s: self.userState, a: a)
        self.counterState = CounterStateReducer().reduce(s: self.counterState, a: a)
        didChange.send(self)
    }
}
