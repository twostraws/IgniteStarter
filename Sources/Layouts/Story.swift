//
// Story.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

struct Story: ContentPage {
    func body(content: Content, context: PublishingContext) -> [any BlockElement] {
        Text(content.title)
            .font(.title1)

        Text("This is a subtitle.")

        if let image = content.image {
            Text {
                Image(image, description: content.imageDescription)
                    .resizable()
                    .cornerRadius(20)
                    .frame(maxHeight: 300)
            }
            .horizontalAlignment(.center)
        }

        if content.hasTags {
            Group {
                Text("Tagged with: \(content.tags.joined(separator: ", "))")

                Text("Date: \(content.date)")

                Text("Words: \(content.estimatedWordCount)")

                Text("Reading minutes: \(content.estimatedReadingMinutes)")
            }
        }

        Text(content.body)
    }
}
