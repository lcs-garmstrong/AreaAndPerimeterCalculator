//
//  ShapesListView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Graeme Armstrong on 2023-01-22.
//

import SwiftUI

struct ShapesListView: View {
    var body: some View {
        List{
            NavigationLink(destination: {
                RectangleView()
            },label: {
                Text("Rectangle")
            })
            
            
            NavigationLink(destination: {
                CylinderVIew()
            },label: {
                Text("Cylinder")
            })
            
            NavigationLink(destination: {
                SquareBasedPyramidView()
            },label: {
                Text("Square Based Pyramid")
            })
        }
        .navigationTitle("Shapes")
        .foregroundColor(.black)
    }
}

struct ShapesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShapesListView()
        }
    }
}
