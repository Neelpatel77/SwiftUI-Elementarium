import SwiftUI

struct SelectedTabContentView: View {
    var tabName: String
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab 1 Content for \(tabName)")
                .tabItem {
                    Label("Tab 1", systemImage: "gear")
                }
                .tag(1)
            
            Text("Tab 2 Content for \(tabName)")
                .tabItem {
                    Label("Tab 2", systemImage: "envelope")
                }
                .tag(2)
                .badge(5)
        }
    }
}

#if DEBUG
struct SelectedTabContentView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedTabContentView(tabName: "SampleTabName")
    }
}
#endif
