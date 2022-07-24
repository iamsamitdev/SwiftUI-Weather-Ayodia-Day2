//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Samit Koyom on 23/7/2565 BE.
//

import SwiftUI
    
struct ContentView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .teal, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            // เรียงรายการทั้งหมดแนวตั้ง
            VStack {
                
                Spacer()
                
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(.white)
                
                VStack (spacing: 5) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                // จัดเรียงรายการอุณหภูมิแต่ละวันเป็นแนวนอน
                HStack (spacing: 20.0) {
                    
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.sun.fill",
                        temperature: 74)
                    
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "sun.max.fill",
                        temperature: 70)
                    
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "wind",
                        temperature: 66)
                    
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "sunset.fill",
                        temperature: 60)
                    
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "moon.fill",
                        temperature: 55)
                    
                }
                .padding()
                
                // กันพื้นที่ด้านล่างทั้งหมดด้วย Spacer()
                Spacer()
                
                Button{
                    print("tabbed")
                } label: {
                    Text("Change Time of Day")
                        .frame(width: 250, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(10)
                }
                
                // กันพื้นที่ด้านล่างทั้งหมดด้วย Spacer()
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    // สร้าง properties ไว้สำหรับ pass ค่าต่างใน sub view
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
