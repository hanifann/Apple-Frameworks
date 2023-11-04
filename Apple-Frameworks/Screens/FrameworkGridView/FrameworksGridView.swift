//
//  FrameworksGridView.swift
//  Apple-Frameworks
//
//  Created by hanifan nurul haq on 03/11/23.
//

import SwiftUI

struct FrameworksGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView,
                   content: {
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
    }
}

#Preview {
    FrameworksGridView()
}
