//
//  PreCampGuitar.swift
//  SleepSounds
//
//  Created by Sergio Vega on 17/04/23.
//

import SwiftUI

struct PreCampGuitar: View {
    
    @State var isPresented: Bool = true
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
            Image("guitar-camp-bg")
                .resizable()
            HStack(spacing: 20){
                VStack{
                    Image("mood-icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Mood")
                    Text("Lighthearted")
                        .font(.title2)
                        .fontWeight(.bold)
                }.foregroundColor(Color.white)
                VStack{
                    Image("zzz-icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Dreams")
                    Text("Daydreams")
                        .font(.title2)
                        .fontWeight(.bold)
                }.foregroundColor(Color.white)
            }
            .sheet(isPresented: $isPresented){
                 VStack{
                     Spacer(minLength: 10)
                     GuitarCamp()
                         .presentationDetents([.fraction(.minimum(0.20, 1))])
                         .presentationDetents([.fraction(0.20), .fraction(0.40), .fraction(0.60), .fraction(0.80), .fraction(0.95)])
                         .presentationDragIndicator(.visible)
                         //.interactiveDismissDisabled()
                 }.background(ColorBg)
             }
        }
        .ignoresSafeArea(.all)
         .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack{
                        Image(systemName: "chevron.backward")
                        Text("Sleep")
                    }
                }.disabled(false)
            }
        }
    }
}

struct PreCampGuitar_Previews: PreviewProvider {
    static var previews: some View {
        PreCampGuitar()
    }
}
