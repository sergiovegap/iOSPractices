//
//  CheckoutView.swift
//  iDine
//
//  Created by Sergio Vega on 31/03/23.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    @State private var showingPaymentAlert = false
    @State private var pickUpTime = "Now"
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    let tipAmounts = [10, 15, 20, 5, 0]
    let pickupTime = ["Now", "Tonight", "Tomorrow Morning"] //Propio
    
    var totalPrice: String{
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }
    
    
    var body: some View {
        Form{
            
            Section{
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
            if addLoyaltyDetails{
                TextField("Enter your iDine ID", text: $loyaltyNumber)
            }
            
            Section("Add a tip?"){
                Picker("Percentage:", selection: $tipAmount){
                    ForEach(tipAmounts, id: \.self){
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            //Propio
            Section("Pickup Time"){
                Picker("When will you pick it up?", selection: $pickUpTime){
                    ForEach(pickupTime, id: \.self){
                        Text($0)
                    }
                }
            }
            
            Section("Total: \(totalPrice)"){
                Button("Confirm order"){
                    showingPaymentAlert.toggle()
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Order Confirmed", isPresented: $showingPaymentAlert){
            // no buttons needed
        } message: {
            Text("Your total was \(totalPrice) - thank you!")
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order())
    }
}
