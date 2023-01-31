//
//  SquareBasedPyramidView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-22.
//

import SwiftUI

struct SquareBasedPyramidView: View {
    
    @State var base: Double = 5
    @State var height: Double = 5
    @State var side: Double = 5
    
    var surfaceArea: Double {
        return (base * base) + (2 * base * side)
    }
    
    var volume: Double {
        return (base * base * height) / 3
    }
    
    var body: some View {
        VStack{
            
            Group {
                Image("Pyramid")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                
                Spacer()
            }
            
            Group {
                // MARK: Length
                Text("Base")
                    .bold()
                    .font(.title2)
                
                //slilder to control length
                Slider(value: $base,
                       in: 0...100,
                       step: 1.0,
                       label: {Text("Base")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // string interpolation \() to display
                Text("\(base)")
                
                Spacer()
            }
            
            Group {
                // MARK: Length
                Text("Height")
                    .bold()
                    .font(.title2)
                
                //slilder to control length
                Slider(value: $height,
                       in: 0...100,
                       step: 1.0,
                       label: {Text("Height")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // string interpolation \() to display
                Text("\(height)")
                
                Spacer()
            }
            
            Group {
                // MARK: Length
                Text("Side")
                    .bold()
                    .font(.title2)
                
                //slilder to control length
                Slider(value: $side,
                       in: 0...100,
                       step: 1.0,
                       label: {Text("Side")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // string interpolation \() to display
                Text("\(side)")
                
                Spacer()
            }
            
            Group{
                // MARK: Area
                Text("Surface Area")
                    .bold()
                    .font(.title2)
                
                // string interpolation \() to display
                Text("\(surfaceArea)")
                
                Spacer()
            }
        
            Group{
                // MARK: Area
                Text("Volume")
                    .bold()
                    .font(.title2)
                
                // string interpolation \() to display
                Text("\(volume)")
            }
            
        }
        .padding()
    }
}

struct SquareBasedPyramidView_Previews: PreviewProvider {
    static var previews: some View {
        SquareBasedPyramidView()
    }
}
