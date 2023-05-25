import SwiftUI
import LiveViewNative

@MainActor
struct ContentView: View {
    @StateObject private var session: LiveSessionCoordinator<EmptyRegistry> = {
        var config = LiveSessionConfiguration()
        config.navigationMode = .enabled
        return LiveSessionCoordinator(URL(string: "http://localhost:4000/cats")!, config: config)
    }()

    var body: some View {
        LiveView(session: session)
    }
}
