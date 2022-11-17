//
//  Section.swift
//  Weather Application
//
//  Created by Ella on 17.11.2022.
//

import Foundation

struct Section: Hashable {
    let id = UUID()
    let kind: Kind
    let title: String
    let subtitle: String
    let items: [Item]
    
    init(kind: Kind, title: String = "", subtitle: String = "", items: [Item] = []) {
        self.kind = kind
        self.title = title
        self.subtitle = subtitle
        self.items = items
    }
    
    enum App: String {
        case bihourly
        case header
        case table
        case tomorrow
        case tenday
    }
}
