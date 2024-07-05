//
//  ContentView.swift
//  KodecoSwiftUICookBooktvOSApp
//
//  Created by Tatsuya Moriguchi on 7/5/24.
//

import SwiftUI

struct ContentView: View {
    let items = ["item1","item2", "item3"]
    @State private var selection: Int? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            Text("My List")
            
            ForEach(0..<items.count, id: \.self) { index in
                Button(action: {
                    self.selection = index
                }) {
                    HStack {
                        Text(self.items[index])
                        Spacer()
                        if selection == index {
                            Image(systemName: "checkmark")
                        }
                    }
                }
                .padding()
            }
            if let selection = selection {
                Text("Selected Item: \(items[selection])")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
