import SwiftUI

@main
struct harlanholdenkioskApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStackManager()
                .environmentObject(SheetManager())
                .environmentObject(CartManager())
        }
    }
}
