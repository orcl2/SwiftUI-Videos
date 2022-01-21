//
//  VideoDatasource.swift
//  SwiftUI-Videos
//
//  Created by William Daniel da Silva Kuhs on 10/01/22.
//

import Foundation

struct Video: Identifiable{
    let id: UUID    
    let title: String
    let dateUploaded: String
    let thumbnailSrc: String
    
    init(title: String, dateUploaded: String, thumbnailSrc: String) {
        self.thumbnailSrc = thumbnailSrc
        self.title = title
        self.dateUploaded = dateUploaded
        self.id = UUID()
    }
}

