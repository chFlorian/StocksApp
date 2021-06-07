//
//  IntentHandler.swift
//  StocksAppIntents
//
//  Created by florian schweizer on 30.05.21.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    
    func provideCustomSymbolOptionsCollection(for intent: ConfigurationIntent, with completion: @escaping (INObjectCollection<CustomSymbol>?, Error?) -> Void) {

        let symbols: [CustomSymbol] = [
            CustomSymbol(identifier: "AAPL", display: "Apple"),
            CustomSymbol(identifier: "TSLA", display: "Tesla")
        ]

        // Create a collection with the array of symbols.
        let collection = INObjectCollection(items: symbols)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
}
