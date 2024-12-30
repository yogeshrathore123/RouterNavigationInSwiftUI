//
//  Router+FirstModule.swift
//  RouterNavigationInSwiftUI
//
//  Created by Yogesh Rathore on 30/12/24.
//

import SwiftUI

extension Router {
    
    @ViewBuilder
    func destination(for flow: Destination) -> some View {
        switch flow {
        case .a:
            AView()
        case .b:
            BView()
        case .c:
            CView()
        case .d:
            DView()
        }
    }
}
