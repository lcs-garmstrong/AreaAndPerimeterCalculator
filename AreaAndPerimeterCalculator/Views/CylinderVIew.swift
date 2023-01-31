//
//  CylinderVIew.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-22.
//

import SwiftUI

struct CylinderVIew: View {
    
    @State var priorResults: [CylinderResult] = []
    
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
            
            HStack{
                Group {
                    VStack {
                        // MARK: Length
                        Text("Height")
                            .bold()
                            .font(.title2)
                        
                        //slilder to control length
                        Slider(value: $height,
                               in: 0...100,
                               step: 1.0,
                               label: {Text("Height")})
                        
                        // string interpolation \() to display
                        Text("\(height.formatted(.number.precision(.fractionLength(1))))")
                        
                        Spacer()
                    }
                }
                
                Group {
                    VStack {
                        // MARK: Length
                        Text("Radius")
                            .bold()
                            .font(.title2)
                        
                        //slilder to control length
                        Slider(value: $radius,
                               in: 0...100,
                               step: 1.0,
                               label: {Text("Radius")})
                        
                        // string interpolation \() to display
                        Text("\(radius.formatted(.number.precision(.fractionLength(1))))")
                        
                        Spacer()
                    }
                }
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
            
            // Button
            Button(action: {
                let latestResult = CylinderResult(height: height,
                                                  radius: radius,
                                                  roots: volume,
                                                  roots2: surfaceArea)
                priorResults.append(latestResult)
            }, label: {
                Text("Save Results")
            })
            .buttonStyle(.bordered)
            .padding()
            
            // History
            Text("History:")
                .font(.largeTitle)
            
            List(priorResults.reversed()) { currentResult in
                HStack {
                    Spacer()
                    ResultView(somePriorResult: currentResult)
                }
            }
            Spacer()
            
        }
        .padding()
    }
}

struct CylinderVIew_Previews: PreviewProvider {
    static var previews: some View {
        CylinderVIew()
    }
}
