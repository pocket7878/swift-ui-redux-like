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
    var didChange = PassthroughSubject<AppState, Never>()
    
    private (set) var appState = AppState()
    
    func dispatch(a: Action) {
        self.appState = AppStateReducer().reduce(s: appState, a: a)
        didChange.send(self.appState)
    }
}
