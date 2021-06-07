//
//  StocksWidget.swift
//  StocksWidget
//
//  Created by florian schweizer on 17.05.21.
//

import WidgetKit
import SwiftUI
import Intents

@main
struct StocksWidgetBundle: WidgetBundle {
    
    @WidgetBundleBuilder
    var body: some Widget {
        StocksWidget()
    }
}

struct StocksWidget: Widget {
    let kind: String = "StocksWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            StocksWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

struct StocksWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StocksWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), stockData: nil))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            
            StocksWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), stockData: nil))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
        }
    }
}
