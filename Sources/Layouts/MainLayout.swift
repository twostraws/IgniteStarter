import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some HTML {
        HTMLDocument {
            HTMLHead(for: page)
            HTMLBody(for: page)
        }
    }
}
