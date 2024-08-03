//
//  PlayerViewModel.swift
//  SleepSounds
//
//  Created by Sergio Vega on 24/04/23.
//

import SwiftUI

class PlayerViewModel: ObservableObject{
    @Published var showPlayer = false
    @Published var offset: CGFloat = 0
    @Published var expandPlayer = true
    @Published var tabHeight: CGFloat = 60
}
