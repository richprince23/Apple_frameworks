//
//  FrameworkGridView.swift
//  Apple_frameworks
//
//  Created by Richard Kweku Aikins  on 01/04/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    let cols: [GridItem] = [GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
    ];
    var frameworkList : [Framework] = MockData.frameworks;
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: cols) {
    //            MyGridItem(title: "AR Kit", icon: "arkit")
    //            MyGridItem(title: "App Clips", icon: "app-clip")
    //            MyGridItem(title: "App Clips", icon: "app-clip")
    //            MyGridItem(title: "App Clips", icon: "app-clip")
                ForEach(frameworkList, id: \.id){data in
                    MyGridItem(data: data)
                    
                }
                    
    //        
                
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct MyGridItem : View{
    var data : Framework;
    
    var body : some View{
        VStack(spacing: 10){
            Image("\(data.imageName)")
                .resizable()
                .frame(width: 64, height: 64)
            
            Text(data.name)
                .font(.system(size: 18, weight: .medium))
                .scaledToFit()
                .minimumScaleFactor(0.65)
        }
    }
}
