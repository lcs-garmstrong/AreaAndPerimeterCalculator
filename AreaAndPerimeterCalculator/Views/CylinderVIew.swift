//
//  CylinderVIew.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-22.
//

import SwiftUI

struct CylinderVIew: View {
    
    @State var radius: Double = 5
    @State var height: Double = 5
    
    var volume: Double {
        return Double.pi * radius * radius * height
    }
    
    var surfaceArea: Double {
        return (2 * Double.pi * radius * radius) + (2 * Double.pi * radius * height)
    }
    
    var body: some View {
        VStack{
            
            Group {
                Image("Cylinder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400)
                
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
                Text("Radius")
                    .bold()
                    .font(.title2)
                
                //slilder to control length
                Slider(value: $radius,
                       in: 0...100,
                       step: 1.0,
                       label: {Text("Radius")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // string interpolation \() to display
                Text("\(radius)")
                
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

struct CylinderVIew_Previews: PreviewProvider {
    static var previews: some View {
        CylinderVIew()
    }
}
