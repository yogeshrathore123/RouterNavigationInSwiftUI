//
//  Router.swift
//  RouterNavigationInSwiftUI
//
//  Created by Yogesh Rathore on 30/12/24.
//

import SwiftUI

final class Router: ObservableObject {
    
    @Published var navPath = NavigationPath()
    @Published var stack: [Destination] = []
    @Published var rootFlow: RootFlow = .a
    
    enum Destination: Codable, Hashable {
        case a
        case b
        case c
        case d
    }
    
    enum RootFlow {
        case a //module
        case e //module
        
    }
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
        stack.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
        stack.removeLast()
    }
    
    func navigateToRoot() {
        //Remove
        navPath.removeLast(navPath.count)
        stack.removeAll()
    }
    
    func navigateBack(to target: Destination) {
        guard !stack.isEmpty else { return }
        
        while let last = stack.last, last != target {
            navPath.removeLast()
            stack.removeLast()
        }
    }
    
    
    func setRoot(_ root : RootFlow) {
        self.rootFlow = root
        navigateToRoot()
    }
    
    
}
