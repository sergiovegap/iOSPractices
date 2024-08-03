//
//  LoginView.swift
//  SleepSounds
//
//  Created by Sergio Vega on 14/04/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(red: 20/255, green: 25/255, blue: 39/255)
                .ignoresSafeArea(.all)
            VStack(spacing: 15){
                TabView{
                    VStack(spacing: 30){
                        Image("sounds-stp1")
                        VStack(spacing: 15){
                            Text("Exclusive sounds")
                                .foregroundColor(Color.white)
                                .font(Font.largeTitle)
                                .fontWeight(.bold)
                                .fontDesign(Font.Design.rounded)
                            Text("We have an author's library of sounds that you will not find anywhere else")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(TextAlignment.center)
                        }
                    }
                    VStack(spacing: 30){
                        Image("sounds-stp2")
                        VStack(spacing: 15){
                            Text("Relax sleep sounds")
                                .foregroundColor(Color.white)
                                .font(Font.largeTitle)
                                .fontWeight(.bold)
                            Text("Our sounds will help to relax and improve your sleep health")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(TextAlignment.center)
                        }
                    }
                    VStack(spacing: 30){
                        Image("sounds-stp3")
                        VStack(spacing: 15){
                            Text("Story for kids")
                                .foregroundColor(Color.white)
                                .font(Font.largeTitle)
                                .fontWeight(.bold)
                            Text("Famous fairy tales with soothing sounds will help your children fall asleep faster")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(TextAlignment.center)
                        }
                    }
                }
                .padding()
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
                
                Button("Next") {
                    //action
                }
                    .padding(15)
                    .frame(width: 300)
                    .background(Color(red: 33/255, green: 40/255, blue: 63/255))
                    .foregroundColor(Color.white)
                    .font(Font.headline)
                    .background()
                    .cornerRadius(25)
                Spacer().frame(height: 10)
                Label("Login With Apple", systemImage: "apple.logo")
                    .foregroundColor(Color.white)
                    .font(Font.title3)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
