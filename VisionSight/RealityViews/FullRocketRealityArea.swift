//
//  FullRocketRealityArea.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 06/01/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    
    @State private var audioController: AudioPlaybackController?
    
    var body: some View {
        RealityView{ content in
            guard let entity = try? await Entity(named:"Immersive", in:
                realityKitContentBundle) else {
                fatalError("Unable ti load scene model")
            }
            let ambientAudionEntity = entity.findEntity(named: "SpatialAudio")
            
            guard let resource = try? await AudioFileResource(named:
                "/Root/Space_wav", from: "Immersive.usda", in:
                realityKitContentBundle) else {
                fatalError("Unable to find space.wav")
            }
            
            audioController = ambientAudionEntity?.prepareAudio(resource)
            audioController?.play()
            
            content.add(entity)
        }
        .onDisappear(perform: {
            audioController?.stop()
        })
    }
}

#Preview {
    FullRocketRealityArea()
        .environment(ViewModel())
}
