//
//  PreImage.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 16/05/24.
//

import Foundation

struct PreImage : Identifiable{
    var id = UUID()
    var image : String
}

let preDataImage = [
    PreImage(image: "preimage1"),
    PreImage(image: "preimage2"),
    PreImage(image: "preimage3"),
    PreImage(image: "preimage4"),
]
