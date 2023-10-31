import SwiftUI

struct StaticTabListView: View {
    @ObservedObject private var viewModel = ListViewModel()

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Tab Examples")) {
                    NavigationLink(destination: PagingStyleContentView()) {
                        Text("Paging Style")
                    }
                    NavigationLink(destination: MainTabView()) {
                        Text("Main Tab View")
                    }
                    NavigationLink(destination: SelectedTabContentView(tabName: "Example Tab")) {
                        Text("Selected Tab View")
                    }
                }
                
                // Section 2: Controls
                Section(header: Text("Controls")) {
                    ForEach(viewModel.controlComponents) { component in
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
                
                // Section 3: Elements
                Section(header: Text("Elements")) {
                    ForEach(viewModel.elements) { element in
                        NavigationLink(destination: ComponentDetailView(component: element)) {
                            HStack {
                                Image(systemName: element.symbol)
                                    .foregroundColor(.blue)
                                    .imageScale(.large)
                                    .frame(width: 30)
                                
                                Text(element.name)
                                    .font(.headline)
                                    .padding(.leading, 10)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationTitle("Tab Views")
        }
    }
}

struct StaticTabListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticTabListView()
    }
}
