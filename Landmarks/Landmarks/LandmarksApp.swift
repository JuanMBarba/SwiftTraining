//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Juan Barba on 11/9/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
