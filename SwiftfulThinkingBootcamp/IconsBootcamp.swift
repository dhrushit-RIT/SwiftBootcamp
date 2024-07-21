//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Dhrushit Raval on 7/18/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        /// https://developer.apple.com/sf-symbols/
        Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .font(.caption)
            .font(.system(size: 200))
            .foregroundColor(.green)
            .frame(width: 300, height: 300)
            .clipped()
            
    }
}

#Preview {
    IconsBootcamp()
}
