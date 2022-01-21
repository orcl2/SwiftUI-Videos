//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by William Daniel da Silva Kuhs on 10/01/22.
//

import SwiftUI

struct ContentView: View {
    
    private var videos: [Video] = [
        Video(title: "37 Tips os coding", dateUploaded: "12-01-2020", thumbnailSrc: "37-tips"),
        Video(title: "Ninety-Ninety", dateUploaded: "10-05-2021", thumbnailSrc: "90-90"),
        Video(title: "My setup on 2018", dateUploaded: "05-11-2020", thumbnailSrc: "2018-setup"),
        Video(title: "Aluna - A new way to study", dateUploaded: "01-02-2020", thumbnailSrc: "aluna"),
        Video(title: "How to: Increase your experience!", dateUploaded: "30-03-2020", thumbnailSrc: "average-dev"),
        Video(title: "Child View Controller", dateUploaded: "15-05-2021", thumbnailSrc: "child-vc"),
        Video(title: "History in gate", dateUploaded: "19-2-2019", thumbnailSrc: "hig"),
        Video(title: "Hot to: br hired", dateUploaded: "28-01-2019", thumbnailSrc: "hired"),
        Video(title: "Why i'm so lazy!!!", dateUploaded: "01-09-2020", thumbnailSrc: "lazy"),
        Video(title: "The city of Macaw", dateUploaded: "11-04-2021", thumbnailSrc: "macaw"),
        Video(title: "How to: NavigationController", dateUploaded: "25-12-2021", thumbnailSrc: "nav-controller"),
        Video(title: "My portfolio", dateUploaded: "10-10-2020", thumbnailSrc: "portfolio")
    ]
    
    var body: some View {
        NavigationView {
            List(videos) {
                VideoView(title: $0.title,
                                dateUploaded: $0.dateUploaded,
                                thumbnailSrc: $0.thumbnailSrc)
            }
            .navigationBarTitle(Text("Videos"))
        }
    }
                                

}


                                
struct VideoView: View {
    
    let video: Video
    
    init(title: String, dateUploaded: String, thumbnailSrc: String) {
        self.video = Video(title: title, dateUploaded: dateUploaded, thumbnailSrc: thumbnailSrc)
    }
    
    var body: some View {
        HStack {
            
            Thumbnail(video.thumbnailSrc)
            
            Spacer().frame(width: 16)
            
            Description(title: video.title, date: video.dateUploaded)
        }
    }
}

struct Thumbnail: View {
    let imageName: String
    
    init(_ name: String) {
        imageName = name
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 90.0)
            .cornerRadius(8)
    }
}

struct Description: View {
    let title: String
    let date: String
    
    init(title: String, date: String) {
        self.title = title
        self.date = date
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Spacer().frame(height: 5)
            Text(date)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
