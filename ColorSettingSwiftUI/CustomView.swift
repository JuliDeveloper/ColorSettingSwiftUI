//
//  CustomView.swift
//  ColorSettingSwiftUI
//
//  Created by Julia Romanenko on 05.08.2022.
//

import SwiftUI

struct CustomView: View {
    
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(height: 250)
            .foregroundColor(color)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 6))
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView(color: .red)
    }
}
