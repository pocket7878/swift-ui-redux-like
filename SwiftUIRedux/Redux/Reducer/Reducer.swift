//
//  Reducer.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/04.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import Foundation

protocol Reducer {
    associatedtype StateType: ReduxState
    func reduce(s: StateType, a: Action) -> StateType
}
