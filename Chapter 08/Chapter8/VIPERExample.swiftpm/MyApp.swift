import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TaskListView(presenter: TaskListPresenter())
            }
           
        }
    }
}
