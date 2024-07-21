//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/19/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("NYC")
//            .renderingMode(.template) // to add tint to the logo by trating it as a template
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300, height: 200)
//            .cornerRadius(30)
            .clipShape(
//                Circle()
                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
            )
    }
}

#Preview {
    ImageBootcamp()
}
