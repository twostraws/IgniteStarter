import Foundation
import Ignite

struct Home: Page {
    var title = "Home"

    var body: some HTML {
        Text("Hello world!")
            .font(.title1)
    }
}
