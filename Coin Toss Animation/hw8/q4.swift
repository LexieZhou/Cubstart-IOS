//
//  q4.swift
//  hw8
//
//  Created by Andy Huang on 3/31/23.
//

import SwiftUI

struct q4: View {
    @State var toggle_wifi = false
    @State var scale_y: CGFloat = 6.0
    var body: some View {
        HStack {
            // TODO: YOUR CODE HERE
            ForEach(1..<5){ i in
                Rectangle()
                    .fill(Color.indigo)
                    .frame(width: 30, height: 5)
                    .scaleEffect(x: 1, y: toggle_wifi ? CGFloat(i) * scale_y : 1, anchor: .bottom)
                                        .animation(.easeOut.delay(Double(i) * 0.1), value: toggle_wifi)
            }
        }
        .animation(.default, value: scale_y)
        .onTapGesture {
            // TODO: YOUR CODE HERE
            toggle_wifi.toggle()
            
            Task {
                try await Task.sleep(nanoseconds: 1_500_000_000)
                withAnimation(.easeIn) {
                    toggle_wifi.toggle()
                }
            }
        }
    }
}

struct q4_Previews: PreviewProvider {
    static var previews: some View {
        q4()
    }
}
