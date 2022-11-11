//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Juan Barba on 11/10/22.
//

import SwiftUI

struct LandmarkRow: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
//    var landmarkIndex: Int {
//        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
//    }
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
                
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
//            FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
//    static let modelData = ModelData()
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            
            LandmarkRow(landmark: landmarks[1])
            
//            LandmarkRow(landmark: modelData.landmarks[0])
//
//            LandmarkRow(landmark: modelData.landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
//        .environmentObject(modelData)

    }
}
