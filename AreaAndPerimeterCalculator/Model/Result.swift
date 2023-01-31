//
//  Result.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-30.
//

import Foundation

struct CylinderResult: Identifiable {
    let id = UUID()
    let height: Double
    let radius: Double
    let roots: Double
    let roots2: Double
}

let resultForPreview = CylinderResult(height: 12, radius: 5, roots: 534.07, roots2: 942.48)
                                        //"SA = 534.07 and V = 942.48"
