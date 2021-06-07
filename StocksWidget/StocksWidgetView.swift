//
//  StocksWidgetView.swift
//  StocksWidgetExtension
//
//  Created by florian schweizer on 18.05.21.
//

import Combine
import SwiftUI
import WidgetKit

struct StocksWidgetEntryView : View {
    @Environment(\.widgetFamily) var family
    var entry: Provider.Entry

    var body: some View {
        switch family {
            case .systemSmall:
                Text("Small size")
            case .systemMedium:
                VStack {
                    Text(entry.configuration.customSymbol?.identifier ?? "IBM")
                    
                    LineChart(values: entry.stockData?.closeValues ?? [])
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green.opacity(0.7), .green.opacity(0.2), .green.opacity(0)]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .frame(width: 150, height: 50)
                }
            default:
                Text("Not implemented")
        }
    }
}
