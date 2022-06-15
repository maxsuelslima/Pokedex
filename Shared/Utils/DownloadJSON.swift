//
//  DownloadJSON.swift
//  PokedexMVVM (iOS)
//
//  Created by Maxsuel on 13/06/22.
//

import Foundation

func downloadData(url:String) async throws ->Data{
    guard let JSONUrl = URL(string: url) else {
        throw JSONDownloadErrors.urlError
    }
    guard let (data, _) = try? await URLSession.shared.data(from: JSONUrl) else {
        throw JSONDownloadErrors.downloadError
    }
    return data
}
