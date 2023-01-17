//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // mark: stored properties
    
    // mark: computed properties
    
    // shows our user interface
    var body: some View {
        VStack{
            
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                
                Spacer()
            }
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
