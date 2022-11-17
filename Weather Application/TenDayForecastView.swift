//
//  TenDayForecastView.swift
//  Weather Application
//
//  Created by Ella on 14.11.2022.
//

import SwiftUI

struct TenDayForecastView: View {
    var body: some View {
        VStack {
            Text("10 day forecast")
                .foregroundColor(.darkPurple)
                .font(.system(size: 24, weight: .bold))
            
            VStack {
                ForEach(0..<10) { item in
                    HStack {
                        HStack {
                            Text("14 Nov,")
                                .font(.system(size: 16, weight: .bold))
                            Text("Sun")
                                .foregroundColor(.textGray)
                                .font(.system(size: 16, weight: .regular))
                            
                            Spacer()
                            
                            Image("rainy")
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Spacer()
                            
                            HStack {
                                Text("6")
                                    .foregroundColor(.darkPurple)
                                    .font(.system(size: 24, weight: .bold))
                                Text("4°C")
                                    .foregroundColor(.textGray)
                                    .font(.system(size: 16, weight: .regular))
                            }
                            
                            Spacer()
                            Text("Rainy")
                                .foregroundColor(.darkPurple.opacity(0.8))
                                .font(.system(size: 16, weight: .regular))
                            
                        }
                    }
                }
            }
            .padding(.top, 10)
            .padding(.horizontal, 20)
        }
//        .padding(.bottom, 2)
    }
}

struct TenDayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        TenDayForecastView()
    }
}
