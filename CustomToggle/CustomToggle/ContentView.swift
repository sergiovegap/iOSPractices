//
//  ContentView.swift
//  CustomToggle
//
//  Created by Sergio Vega on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleOn = false
    
    var body: some View {
        ZStack {
            Color(toggleOn ? #colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1) : #colorLiteral(red: 0.2235294118, green: 0.2392156863, blue: 0.2784313725, alpha: 1))
            VStack(spacing: 4){
                ZStack{
                    Image("illustrationDark")
                        .opacity(toggleOn ? 0 : 1)
                        .rotation3DEffect(.degrees(toggleOn ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                    Image("illustrationLight")
                        .opacity(toggleOn ? 1 : 0)
                        .rotation3DEffect(Angle.degrees(toggleOn ? 0 : -180), axis: (x: 0, y: 1, z:0))
                }
                Text("Costumize")
                    .foregroundColor(Color(toggleOn ? #colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.1411764706, alpha: 1) : #colorLiteral(red: 0.8470588235, green: 0.8549019608, blue: 0.8745098039, alpha: 1)))
                    .font(Font.title2)
                    .fontWeight(.bold)
                Text("Choose your default appeareance.")
                    .foregroundColor(Color(toggleOn ? #colorLiteral(red: 0.2196078431, green: 0.2274509804, blue: 0.2549019608, alpha: 1) : #colorLiteral(red: 0.6196078431, green: 0.6470588235, blue: 0.7019607843, alpha: 1)))
                    .font(.body)
                ZStack{
                    Capsule()
                        .frame(width: 80, height: 40)
                        .foregroundColor(Color(toggleOn ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1028798084) : #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6039008336)))
                    ZStack{
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color.white)
                        Image(systemName: toggleOn ? "sun.max.fill" : "moon.fill")
                    }
                    .shadow(color: .black.opacity(0.14), radius: 4, x: 0, y: 2)
                    .offset(x: toggleOn ? 18 : -18)
                    .padding(24)
                    .animation(Animation.spring())
                }
                .onTapGesture {
                    self.toggleOn.toggle()
                }
                Spacer().frame(height: 120)
                Button(action: {
                    print("You tapped continue...")
                }){
                    HStack{
                        Text("Continue")
                            .font(Font.body)
                            .fontWeight(Font.Weight.bold)
                        Image(systemName: "arrow.right")
                    }
                }
                .padding()
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(40)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.black.opacity(0.1), lineWidth: 2)
                )
            }
        }
        .ignoresSafeArea(.all)
        .animation(Animation.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
