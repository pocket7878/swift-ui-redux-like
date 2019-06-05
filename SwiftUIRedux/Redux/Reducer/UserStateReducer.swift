//
//  UserStateReducer.swift
//  SwiftUIRedux
//
//  Created by 十亀眞怜 on 2019/06/04.
//  Copyright © 2019 Pocket7878. All rights reserved.
//

import Foundation

final class UserStateReducer: Reducer {
    typealias StateType = UserState
    
    func reduce(s: UserState, a: Action) -> UserState {
        switch(a) {
        case UserStateAction.SetFirstName(let newFirstName):
            return UserState(firstName: newFirstName, lastName: s.lastName)
        default:
            return s
        }
    }
}
