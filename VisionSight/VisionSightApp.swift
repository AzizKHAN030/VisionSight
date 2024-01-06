//
//  VisionSightApp.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 04/01/24.
//

import SwiftUI

@main
struct VisionSightApp: App {
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            Areas()
                .environment(model)
        }
        
        WindowGroup(id: "CapsuleRealityArea"){
            CapsuleRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width:0.6, height: 0.6, depth: 0.5, in: .meters)
        
        
        ImmersiveSpace(id:"FullRocketRealityArea"){
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
