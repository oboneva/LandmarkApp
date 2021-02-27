//
//  LandmarkDetail.swift
//  LandmarkApp
//
//  Created by Ognyanka Boneva on 23.02.21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                
                CircleImage(image: landmark.image)
                    .offset(y: -180)
                    .padding(.bottom, -180)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .foregroundColor(.green)
                        .font(.title)
                    HStack {
                        Text(landmark.park)
                            .font((.subheadline))
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                    
                    
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
