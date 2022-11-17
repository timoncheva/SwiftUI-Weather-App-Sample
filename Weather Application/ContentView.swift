//
//  ContentView.swift
//  Weather Application
//
//  Created by Ella on 12.11.2022.
//

import SwiftUI

struct ContentView: View {
//    Color.blue.ignoreSafeArea()
    let gradient = Gradient(stops: [
        .init(color: .blue, location: 0.15),
        .init(color: .white, location: 0.4),
        .init(color: .white, location: 0.95)
    ])
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle().fill(Color.blue)
                .frame(height: 500)
                .edgesIgnoringSafeArea(.top)
            
            ScrollView {
                VStack {
                    HeaderView()
                    WeatherTableView(titleColor: .white, dataColor: .darkPurple, dividerColor: .lightGray)
                        .padding(.horizontal, 20)
                    BihourlyView()
                    NextDayForecastView()
                        .padding(.vertical, 10)
                    WeatherTableView(titleColor: .textGray, dataColor: .darkPurple, dividerColor: .lightGray)
                        .padding(.horizontal, 20)
                    TenDayForecastView()
                        .padding(.vertical, 30)
                }
                .background(background)
            }
        }
    }
    
    var background: some View {
        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
