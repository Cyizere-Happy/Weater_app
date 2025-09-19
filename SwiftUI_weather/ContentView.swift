//
//  ContentView.swift
//  SwiftUI_weather
//
//  Created by Cyzere Happy on 9/18/25.
//

import SwiftUI

struct ContentView: View {
    

    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Kigali, Rwanda")
                MainWeatherStatusView(imageName: isNight ? "moon.zzz.fill" :"cloud.sun.fill", temperature: 26)
                HStack(spacing: 20){
                    WeatherDayView(dayOfweek: "TUE", imageName: "cloud.sun.fill" , temperature: 26)
                    WeatherDayView(dayOfweek: "WED", imageName: "sun.max.fill" , temperature: 30)
                    WeatherDayView(dayOfweek: "THU", imageName: "cloud.bolt.rain.fill" , temperature: 21)
                    WeatherDayView(dayOfweek: "FRI", imageName: "wind" , temperature: 24)
                    WeatherDayView(dayOfweek: "SAT", imageName: "moon.stars.fill" , temperature: 25)
                
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer();
            }
        }

    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfweek: String
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack{
            Text(dayOfweek)
                .font(.system(size: 16, weight: .medium, design:  .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.mint, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height:40)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


struct BackgroundView: View {
                
    var topColor: Color;
    var bottomColor: Color;
                
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),                startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)

    }
}

struct CityTextView: View{
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design:  .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View{
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height:180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        
        .padding(.bottom, 40)
    }
}


