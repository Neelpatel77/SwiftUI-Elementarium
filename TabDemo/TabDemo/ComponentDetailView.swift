//
//  ComponentDetailView.swift
//  TabDemo
//
//  Created by Neel on 2023-10-30.
//

import SwiftUI

struct ComponentDetailView: View {
    var component: Component
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Component: \(component.name)")
                    .font(.largeTitle)
                
                // Description of the selected component
                Text(component.description)
                    .font(.body)
                
                // Additional details about the selected component
                Text("Usage: Provide usage examples or additional details for the \(component.name) component.")
                    .font(.body)
                
                // Add more Text views or other SwiftUI components to display details
                // For example, you can add images, additional descriptions, or usage examples.
            }
            .padding()
        }
        .navigationTitle("Component Details")
    }
}

