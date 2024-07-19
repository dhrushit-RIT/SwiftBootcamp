//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/18/24.
//

import SwiftUI

struct TextBootcamp: View {
    let text = "The Text() component is the easiest way to add text to a screen in SwiftUI applications. In this video we will discuss how to implement and customize a text. You will learn how to add text to a SwiftUI app and how to format the text to make it look professional by changing text font, color, sizing, spacing, and more!"
    var body: some View {
        Text(text)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(-50)
//            .kerning(20)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .center)
            .multilineTextAlignment(.leading)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextBootcamp()
}
