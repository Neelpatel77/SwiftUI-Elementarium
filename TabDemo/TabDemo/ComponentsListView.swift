import SwiftUI

struct ComponentsListView: View {
    @State private var searchText = ""
    @ObservedObject private var viewModel = ListViewModel()

    var body: some View {
        NavigationView {
            List {
                // Section 1: Text Input/Output
                Section(header: headerView(systemName: "textformat", title: "Text Input/Output")) {
                    ForEach(viewModel.components) { component in
                        ComponentRow(component: component)
                    }
                }
                
                // Section 2: Controls
                Section(header: headerView(systemName: "gearshape", title: "Controls")) {
                    NavigationLink(destination: EmptyView()) {
                        HStack {
                            Image(systemName: "capsule")
                                .foregroundColor(.blue)
                                .imageScale(.large)
                                .frame(width: 30)
                            Text("Buttons")
                                .font(.headline)
                        }
                    }
                    // Add other NavigationLinks similarly
                }
            }
            .searchable(text: $searchText)
            .navigationBarTitle("Components")
        }
    }
    
    func headerView(systemName: String, title: String) -> some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.blue)
                .imageScale(.large)
                .frame(width: 30)
            Text(title)
                .font(.headline)
        }
    }
}

struct ComponentRow: View {
    var component: Component

    var body: some View {
        NavigationLink(destination: ComponentDetailView(component: component)) {
            HStack {
                Image(systemName: component.symbol)
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .frame(width: 30)

                Text(component.name)
                    .font(.headline)
                    .padding(.leading, 10)
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 8)
        }
    }
}
