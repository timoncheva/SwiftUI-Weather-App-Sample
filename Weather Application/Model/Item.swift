//
//  Item.swift
//  Weather Application
//
//  Created by Ella on 17.11.2022.
//

import Foundation
import UIKit

struct Item: Hashable {
    let id = UUID()
    let index: Int
    let tagline: String
    let title: String
    let subtitle: String
    let titleColor: UIColor
    let subtitleColor: UIColor
    let dividerColor: UIColor
    
    init(index: Int = 0, tagline: String = "", title: String = "", subtitle: String = "", titleColor:UIColor = .white, subtitleColor: UIColor = .white, dividerColor: UIColor = .white) {
        self.index = index
        self.tagline = tagline
        self.title = title
        self.subtitle = subtitle
        self.titleColor = titleColor
        self.subtitleColor = subtitleColor
        self.dividerColor = dividerColor
    }
}
