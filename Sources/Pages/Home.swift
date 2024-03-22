//
// Home.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Welcome to ExampleSite!")
            .font(.title1)

        Text("This site is a demonstration of a wide variety of Ignite elements and components all in one place, so you can find code samples for your own sites.")
            .font(.lead)

        Text("Key concepts")
            .font(.title2)

        Text("Before you create sites yourself, you should review some key concepts that underpin how Ignite works:")

        List {
            Link("Grid Layout", target: GridExamples())
            Link("Navigation", target: NavigationExamples())
            Link("Content", target: ContentExamples())
            Link("Text", target: TextExamples())
            Link("Styling", target: StylingExamples())
        }
        .listStyle(.ordered(.default))


        Text("Examples")
            .font(.title2)
            .margin(.top, .large)

        List {
            Link("Accordions", target: AccordionExamples())
            Link("Alerts", target: AlertExamples())
            Link("Badges", target: BadgeExamples())
            Link("Buttons", target: ButtonExamples())
            Link("Cards", target: CardExamples())
            Link("Carousels", target: CarouselExamples())
            Link("Code", target: CodeExamples())
            Link("Dropdowns", target: DropdownExamples())
            Link("Embeds", target: EmbedExamples())
            Link("Images", target: ImageExamples())
            Link("Includes", target: IncludeExamples())
            Link("Links", target: LinkExamples())
            Link("Lists", target: ListExamples())
            Link("Quotes", target: QuoteExamples())
            Link("Tables", target: TableExamples())
        }
        .listStyle(.unordered(.default))

        Dropdown("Click Me") {
            Text("Header")
            Link("Clickedy 1", target: Home())
                .role(.dark)
            Divider()
            Link("Clickedy 2", target: Home())
            Link("Clickedy 3", target: Home())
        }
        .role(.danger)
        .class("sticky-top")

        ButtonGroup(accessibilityLabel: "Important buttons") {
            Button("Yay")
                .role(.primary)
            Button("Woo")
                .role(.primary)
            Button("Woot")
                .role(.primary)
        }


        Text(markdown: "This is a *very* important ***piece*** of text.")
            .foregroundStyle(Color(hex: "#ffe700"))
            .backgroundColor("#dcdcdc")
            .innerShadow(.black, radius: 5)

        Section {
            for content in context.allContent.sorted(by: \.date, order: .reverse).prefix(3) {
                ContentPreview(for: content)
            }
        }
        .columns(2)

//        NavigationBar {
//            Link("About", target: About.self)
//            Link("Articles", target: Articles.self)
//        }
//
//        Carousel {
//            Slide(background: "singapore.jpg") {
//                Text("Example headline.")
//                    .font(.title1)
//
//                Text("Some representative placeholder content for the first slide of the carousel.")
//                    .foregroundStyle(.secondary)
//
//                Text {
//                    Link("Sign up today", target: Self.self)
//                        .linkStyle(.button)
//                }
//            }
//
//            Slide(background: "dog.jpg") {
//                Text("Another example headline.")
//                    .font(.title1)
//
//                Text("Some representative placeholder content for the first slide of the carousel.")
//
//                Text {
//                    Link("Learn more", target: Self.self)
//                        .linkStyle(.button)
//                }
//            }
//        }
//
//        Image("singapore.jpg", description: "Singapore Changi airport")
//            .lazy()
//            .cornerRadius(.bottom, "20%")
//
//        Accordion {
//            Section("Section 1") {
//                Text {
//                    "This is some important text."
//                    Link("Click Me", target: About.self)
//                }
//            }
//
//            Section("Section 2") {
//                Text {
//                    "This is more important text."
//                    Link("Click Me", target: About.self)
//                }
//            }
//
//            Section("Section 3") {
//                Text {
//                    "This is even more important text."
//                    Link("Click Me", target: About.self)
//                }
//            }
//        }
//        .openMode(.all)
//
        Section {
            Quote {
                Text("This is an important quote.")
            }
            .width(3)

        }

        Text {
            "Big tooltip here"
            Link("Go home", target: Home())
//                .hint(text: "This is very important.")
        }


//        Alert {
//            "A simple primary alert—check it out!"
//        }
//        .role(.danger)
//

//
//        Row {
//            Embed(url: URL(string: "https://www.youtube.com/live/n4SCMC25BxY?feature=shared")!, title: "My Video")
//                .embedType(.youTube)
//                .width(12)
//        }
//
//        Include("important.html")
    }
}
