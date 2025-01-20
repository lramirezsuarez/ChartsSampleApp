//
//  ContentView.swift
//  ChartsSampleApp
//
//  Created by Luis Alejandro Ramirez Suarez on 20/01/25.
//

import SwiftUI
import Charts

struct ContentView: View {
    // Sample data for the chart
    struct SalesData: Identifiable {
        let id = UUID()
        let month: String
        let sales: Int
    }
    
    let salesData = [
        SalesData(month: "Jan", sales: 500),
        SalesData(month: "Feb", sales: 700),
        SalesData(month: "Mar", sales: 800),
        SalesData(month: "Apr", sales: 650),
        SalesData(month: "May", sales: 900)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Monthly Sales")
                    .font(.title)
                    .padding()
                
                Chart(salesData) {
                    BarMark(
                        x: .value("Month", $0.month),
                        y: .value("Sales", $0.sales)
                    )
                    .foregroundStyle(.blue)
                }
                .frame(height: 300)
                .padding()
            }
            .navigationTitle("Sales Chart")
        }
    }
}


#Preview {
    ContentView()
}
