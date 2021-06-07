//
//  TimelineEntry.swift
//  StocksWidgetExtension
//
//  Created by florian schweizer on 18.05.21.
//

import WidgetKit

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let stockData: StockData?
}
