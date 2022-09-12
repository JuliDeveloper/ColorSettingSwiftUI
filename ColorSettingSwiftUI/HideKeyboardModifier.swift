//
//  HideKeyboardModifier.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct HideKeyboardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                endEditing()
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                        Divider()
                        Button("Done", action: endEditing)
                }
            }
    }
    
    private func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension View {
    func hideKeyboard() -> some View {
        ModifiedContent(content: self,
                        modifier: HideKeyboardModifier())
    }
}
