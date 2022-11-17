//
//  TodayForecastCellView.swift
//  Weather Application
//
//  Created by Ella on 17.11.2022.
//

import UIKit

class TodayForecastCellView: UICollectionViewCell, SelfConfiguringCell {
    static let kind = String(describing: TodayForecastCellView.self)
    static let reuseIdentifier = String(describing: TodayForecastCellView.self)
    static let nib = UINib(nibName: String(describing: TodayForecastCellView.self), bundle: nil)
    
    func configure(with item: Item) {}
}
