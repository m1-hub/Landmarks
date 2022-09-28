//
//  LandmarkList.swift
//  Landmarks
//
//  Created by etl-13inch-2 on 2022/08/30.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly=false
    var body: some View {
        NavigationView{
        List(landmarks){landmark in
            NavigationLink{
                LandmarkDetail(landmark:landmark)
            }label:{
                LandmarkRow(landmark:landmark)
            }
            }
        .navigationTitle("Landmarks")
        }
    
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
