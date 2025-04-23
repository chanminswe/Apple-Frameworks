//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Chan Min Swe on 4/23/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible()) , GridItem(.flexible())]
    
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns : columns){
                    ForEach(MockData.frameworks , id : \.id){
                            framework in
                        FrameworkTitleView(framework: framework)
                            .preferredColorScheme(.dark)
                    }
                }
                .navigationTitle("Apple Frameworks")
            }
            

            
        }
        

         

    }
}

#Preview {
    FrameworkGridView()
}
 
struct FrameworkTitleView : View {

    let framework : Framework
    
    var body : some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width : 90 , height : 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
