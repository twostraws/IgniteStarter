import Foundation
import Ignite

struct Home: StaticLayout {
    var title = "Home"

    var body: some HTML {
        Text("Hello world!")
            .font(.title1)
    }
}
