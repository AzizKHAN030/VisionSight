//
//  CrewArea.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 06/01/24.
//

import SwiftUI

struct CrewArea: View {
    var body: some View {        
        ScrollView{
            HStack {
                ForEach(Crew.allCases) { crew in
                    VStack(alignment: .center){
                        Image("crew-\(crew.name)")
                            .resizable()
                            .frame(width: 180, height: 200)
                        Text(crew.fullName)
                            .font(.system(size: 22, weight: .bold))
                        Text(crew.about)
                            .font(.system(size: 14, weight: .light))
                            .padding(.top)
                        
                        Spacer()
                    }
                    .frame(minWidth:180, minHeight: 200)
                    .padding(20)
                    .glassBackgroundEffect()
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    CrewArea()
}

