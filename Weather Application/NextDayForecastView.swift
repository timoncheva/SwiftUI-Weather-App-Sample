//
//  NextDayForecastView.swift
//  Weather Application
//
//  Created by Ella on 14.11.2022.
//

import SwiftUI

struct NextDayForecastView: View {
    var body: some View {
        HStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Tomorrow")
                        .foregroundColor(.darkPurple)
                        .font(.system(size: 14, weight: .bold))
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("13 Nov")
                            .foregroundColor(.textGray)
                            .font(.system(size: 12, weight: .regular))
                        
                        Text("Wednesday")
                            .foregroundColor(.textGray)
                            .font(.system(size: 12, weight: .regular))
                    }
                }
                Spacer()
                Image("rainy")
                    .resizable()
                    .frame(width: 110, height: 110)
                Spacer()
                
                VStack {
                    HStack(alignment: .lastTextBaseline, spacing: 0) {
                        Text("4°")
                            .font(.system(size: 34, weight: .bold))
                        Text("2°")
                            .font(.system(size: 12, weight: .bold))
                    }
                    
                    Text("Cloudy")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.textGray)
                }
            }
            .padding(.horizontal, 32)
        }
    }
}


struct NextDayForecastView_Previews: PreviewProvider {
    static var previews: some View {
        NextDayForecastView()
    }
}
