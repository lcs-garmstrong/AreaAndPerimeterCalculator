//
//  ResultView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-30.
//

import SwiftUI

struct ResultView: View {
    
    let somePriorResult: CylinderResult
    
    var body: some View {
        
        VStack (spacing: 10) {
            HStack (spacing: 40){
                VStack {
                    Text("height: \(somePriorResult.height.formatted(.number.precision(.fractionLength(3))))")
                }
                
                VStack{
                    Text("radius: \(somePriorResult.radius.formatted(.number.precision(.fractionLength(3))))")
                }
                
            }
            
            HStack (spacing: 40){
                Text("SA: \(somePriorResult.roots.formatted(.number.precision(.fractionLength(3))))")
                
                Text("V: \(somePriorResult.roots2.formatted(.number.precision(.fractionLength(3))))")
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResult: resultForPreview)
    }
}
