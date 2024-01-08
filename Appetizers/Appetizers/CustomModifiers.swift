//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Prateek Kumar on 07/01/24.
//

import SwiftUI

struct StandardButtonStyle : ViewModifier{
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
