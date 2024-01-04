//
//  Crew.swift
//  VisionSight
//
//  Created by Azizbek  Rasulov on 04/01/24.
//

import Foundation

enum Crew : String, Identifiable, CaseIterable, Equatable
{
    case jared, haley, chris, sian
    var id: Self { self }
    
    var fullName : String {
        switch self {
        case.chris:
            "Chris Sembroski"
        case.haley:
            "Haley Arceneaux"
        case.jared:
            "Jared Isaacman"
        case.sian:
            "DR. Sian Proctor"
        }
    }
    
    var about : String {
        switch self {
        case.chris:
            "Chris Sembroski grew up with a natural curiosity about outer space. Stargazing late at night on the roof of his high school and launching high-powered model rockets in college cemented this passion. As a U.S. Space Camp counselor, he conducted simulated space shuttle missions and supported STEM-based education designed to inspire young minds to explore these areas and find their passions."
        case.haley:
            "When Hayley was 10 years old, one of her knees began to ache. Her doctor thought it was just a sprain, but a few months later, tests revealed Hayley suffered from osteosarcoma, a type of bone cancer."
        case.jared:
            "Jared Isaacman is the founder and CEO of Shift4 Payments (NYSE: FOUR), the leader in integrated payment processing solutions."
        case.sian:
            "Dr. Sian Proctor is a geoscientist, explorer, and science communication specialist with a lifelong passion for space exploration. She was born in Guam while her father was working at the NASA tracking station during the Apollo missions and has carried on his dedication and interest in space. "
        }
    }
}
