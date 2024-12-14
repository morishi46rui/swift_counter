//
//  ContentView.swift
//  morishi
//
//  Created by USER on 2024/12/13.
//

import SwiftUI

struct CounterApp: View {
    @State private var count: Int = 0

    var body: some View {
        VStack {
            Text("カウンターアプリ")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("\(count)")
                .font(.system(size: 80, weight: .bold, design: .rounded))
                .foregroundColor(.blue)
                .padding()

            HStack {
                Button(action: {
                    count += 1
                }) {
                    Text("増加")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: {
                    count = 0
                }) {
                    Text("リセット")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    CounterApp()
}
