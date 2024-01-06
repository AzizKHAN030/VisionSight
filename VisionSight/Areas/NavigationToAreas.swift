//
//  NavigationToAreas.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 06/01/24.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            Text("Welcome to Vision Sight App")
                .font(.system(size: 40, weight: .bold))
            
            HStack(spacing: 25){
                ForEach(Area.allCases) {
                    area in NavigationLink {
                        Text (area.title.capitalized)
                            .font(.system(size: 40, weight: .bold))
                        
                        if area == Area.astronauts {
                            CrewArea()
                        }
                        else if area == Area.equipment {
                            EquipmentArea()
                        }
                        else if area == Area.mission {
                            MissionArea()
                        }
                        
                        Spacer()
                    } label: {
                        Label(area.name.capitalized, systemImage: "chevron.right")
                            .font(.title)
                    }
                }
            }
            .padding(.top,200)
        }
        .background(){
            Image("Inspiration4")
        }
    }
}

#Preview {
    NavigationToAreas()
        .environment(ViewModel())
}
