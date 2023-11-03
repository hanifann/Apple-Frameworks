//
//  FrameworksGridView.swift
//  Apple-Frameworks
//
//  Created by hanifan nurul haq on 03/11/23.
//

import SwiftUI

struct FrameworksGridView: View {
    var body: some View {
        FrameworkTitleView(name: "App Clips", imageName: "app-clip")
    }
}

#Preview {
    FrameworksGridView()
}

struct FrameworkTitleView: View{
    
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}
