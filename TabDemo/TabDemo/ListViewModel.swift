import Foundation

class ListViewModel: ObservableObject {
    @Published var components: [Component] = [
        Component(name: "Text", description: "Display and edit text", symbol: "textformat"),
        Component(name: "Label", description: "Display a static text", symbol: "label"),
        Component(name: "TextField", description: "Allow user input", symbol: "textbox"),
        Component(name: "SecureField", description: "Secure text input", symbol: "textbox.password"),
        Component(name: "TextArea", description: "Multiline text input", symbol: "text.justify"),
        // Add more text components with their names, descriptions, and symbols
    ]

    @Published private(set) var controlComponents: [Component] = [
        Component(name: "Button", description: "Create interactive buttons", symbol: "capsule"),
        Component(name: "Menu", description: "Show a menu of options", symbol: "list.dash"),
        Component(name: "Link", description: "Create a hyperlink", symbol: "link"),
    ]

    @Published private(set) var elements: [Component] = [
        Component(name: "Element1", description: "Description of Element1", symbol: "element1.symbol"),
        Component(name: "Element2", description: "Description of Element2", symbol: "element2.symbol"),
        // Add more elements with their names, descriptions, and symbols
    ]

    func filterComponents(for searchText: String, in components: [Component]) -> [Component] {
        if searchText.isEmpty {
            return components
        } else {
            return components.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
}
