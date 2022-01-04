//
//  DailyView.swift
//  Remy
//
//  Created by Jia Chun Xie on 12/30/21.
//

import SwiftUI

struct DailyView: View {
    
    @State private var date = Date()
    @Binding var sleepSession: SleepSession
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    DatePicker("Date", selection: $sleepSession.sessionDate, in: ...Date(), displayedComponents: .date)
                        .padding(.vertical, 5.0)
                    SleepSummaryPanel()
                        .padding(.bottom, 5.0)
                    HypnogramView(hypnogram: sleepSession.hypnogram)
                        .padding(.bottom, 5.0)
                    HStack {
                        HeartRatePanel(avgHeartRate: sleepSession.avgHeartRate)
                        Spacer()
                        O2Panel(avgO2Sat: sleepSession.avgO2Sat)
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Sleep Summary")
                .toolbar {
                    BottomToolbar()
                }
            }
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView(sleepSession: .constant(SleepSession.sampleData[0]))
    }
}
