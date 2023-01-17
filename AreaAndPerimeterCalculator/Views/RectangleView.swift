//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: stored properties
    
    let length: Double = 7
    
    let width: Double = 5
    
    
    // MARK: computed properties
    var area: Double {
        return length * width
    }
    
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
            
            // Length
            Text("Length")
                .bold()
                .font(.title2)
            
            // string interpolation \() to display
            Text("\(length)")
            
            // Witdth
            Text("Width")
                .bold()
                .font(.title2)
            
            // string interpolation \() to display
            Text("\(width)")
            
            // Area
            Text("Area")
                .bold()
                .font(.title2)
            
            // string interpolation \() to display
            Text("\(area)")

            Spacer()
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
