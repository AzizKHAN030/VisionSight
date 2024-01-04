//
//  Area.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 04/01/24.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable
{
    case astronauts, mission, equipment
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var title: String {
        switch self {
        case.astronauts:
            "Vision Sight crew members"
        case.mission:
            "Vision Sight mission"
        case.equipment:
            "Vision Sight's equipment"
        }
    }
}
