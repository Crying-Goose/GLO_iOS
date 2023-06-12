//
//  MainReducer.swift
//  Glo
//
//  Created by 라주영 on 2023/05/19.
//

import ComposableArchitecture
import SwiftUI

struct MainReducer: ReducerProtocol {
    
    struct State: Equatable {
        var currentTab: TabSubject
    }
    
    enum Action: Equatable {
        case tabTouch
        case tabMove(TabSubject)
        case refresh
    }
    
    enum TabSubject: Int {
        case article = 0
        case search = 1
        case write = 2
        case notification = 3
        case profile = 4
    }
    
    func reduce(into state: inout State, action: Action) -> ComposableArchitecture.EffectTask<Action> {
        //
        return .none
    }
}
