//
//  ContentView.swift
//  Prodify
//
//  Created by Dongha Ryu on 8/20/24.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var timerVM: TimerViewModel
    @State var isPaused = false
    @State private var rotation = 0
    
    init(seconds: TimeInterval = 0) {
        timerVM = TimerViewModel(seconds: seconds, goalTime: 5)
    }
    
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                //Background Color
                Color(
                    red: 63/255, green: 68/255, blue: 3/255
                )
                .ignoresSafeArea()
                
                //Progress Bar Ring
                ProgressBarView(progress: $timerVM.seconds, goal: $timerVM.goalTime)
                
                VStack{
                    Text(timerVM.progress >= 1 ? "Done" : timerVM.displayTime)
                        .font(.system(size: 56, weight: .bold))
                    
                    Text("\(timerVM.goalTime.asString(style: .short))")
                }
                .foregroundColor(.white)
            
                VStack{
                    Spacer()
                    
                    //Button view
                    ButtonView()
                }
            }
            .navigationTitle("Pomodoro Timer")
            .toolbarColorScheme(.dark)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    TimerView()
}


extension TimerView{
    
    private func ButtonView() -> some View{
        HStack{
            
            //Reset Button
            Button{
                reset()
            }label: {
                HStack(spacing: 0, content: {
                    Label("Reset", systemImage: "arrow.clockwise")
                        .rotationEffect(.degrees(Double(rotation)))
                })
                .padding()
                .tint(.black)
                .frame(maxWidth: .infinity)
                .font(.system(size: 18, weight: .bold))
            }
            .background(.white)
            .cornerRadius(20)
            
            //Start & Pause Button
            Button{
                if(timerVM.progress < 1){
                    isPaused.toggle()
                    isPaused ? timerVM.pauseSession() : timerVM.startSession()
                }
            }label: {
                HStack(spacing: 8, content: {
                    Label(isPaused ? "Start" : "Pause",
                          systemImage: isPaused ? "play.fill" : "pause.fill")
                    .rotationEffect(.degrees(Double(rotation)))
                })
                .padding()
                .tint(.black)
                .frame(maxWidth: .infinity)
                .font(.system(size: 18, weight: .bold))
            }
            .background(.white)
            .cornerRadius(20)
        }
        .padding(.bottom, 40)
        .padding([.leading, .trailing], 20)
    }
    
    private func reset(){
        withAnimation(.easeInOut(duration: 0.3)){
            rotation += 360
            
        }
        
        if timerVM.progress >= 1 {
            timerVM.reset()
            timerVM.startSession()
        }else{
            timerVM.reset()
            timerVM.displayTime = "00:00"
        }
    }
}
