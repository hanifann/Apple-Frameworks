//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by hanifan nurul haq on 03/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack() {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label: {
                AFButton(title: "Learn more")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[2],
                        isShowingDetailView: .constant(false))
}
