//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: stored properties
    // @State is a property wrapper
    // Telling Switft UI to watch these properties for changes
    // Update the user interface when they do
    @State var length: Double = 70
    @State var width: Double = 25
    
    // MARK: computed properties
    var area: Double {
        return length * width
    }
    
    var perimeter: Double {
        return (2 * length) + (2 * width)
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
            
            Group {
                // MARK: Length
                Text("Length")
                    .bold()
                    .font(.title2)
                
                //slilder to control length
                Slider(value: $length,
                       in: 0...100,
                       label: {Text("Length")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // string interpolation \() to display
                Text("\(length)")
            }

            Group {
                // MARK: Witdth
                Text("Width")
                    .bold()
                    .font(.title2)
                
                //slilder to control width
                Slider(value: $width,
                       in: 0...100,
                       label: {Text("Width")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // string interpolation \() to display
                Text("\(width)")
            }
            
            Group{
                // MARK: Area
                Text("Area")
                    .bold()
                    .font(.title2)
                
                // string interpolation \() to display
                Text("\(area)")
            }

            Group {
                // MARK: perimeter
                Text("Perimeter")
                    .bold()
                    .font(.title2)
                
                // string interpolation \() to display
                Text("\(perimeter)")
            }
            Spacer()
        }
        .padding()
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
