//
//  CapsuleRealityArea.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 06/01/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct CapsuleRealityArea: View {
    var body: some View {
        RealityView{ content in
            guard let entity = try? await Entity(named:"Scene", in:
                realityKitContentBundle) else {
                fatalError("Unable ti load scene model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    CapsuleRealityArea()
        .environment(ViewModel())
}
