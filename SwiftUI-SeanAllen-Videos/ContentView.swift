//
//  ContentView.swift
//  SwiftUI-SeanAllen-Videos
//
//  Created by Caner Çağrı on 29.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = []
    
    var body: some View {
        NavigationView {
            List(videos) { video in
                
                HStack(spacing: 2) {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(10)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        Spacer().frame(height: 5)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.bottom)
                
            }.navigationTitle(Text("Sean Allen Youtube"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videos: VideoList.topTwelve)
    }
}
