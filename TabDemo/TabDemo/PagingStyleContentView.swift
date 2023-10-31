// PagingStyleContentView.swift
// TabDemo

import SwiftUI

struct PagingStyleContentView: View {
    var body: some View {
        TabView {
            Text("First Content")
            Text("Second Content")
            Text("Third Content")
        }
        .font(.largeTitle)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    PagingStyleContentView()
}
