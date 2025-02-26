import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some HTML {
//        HTML { } // Required only if you need to add extra functionality, like analytics
        Body {
            content
            IgniteFooter()
        }
    }
}
