//
//  NetworkingManager.swift
//  CustomElementsAndLayers
//
//  Created by Денис on 04.02.2021.
//

import Foundation

protocol Networking {
    
    // replace "Response" on your model type
    func fetchData(from url: String, completion: @escaping (Result<Response, Error>) -> Void)
}

final class NetworkingManager: Networking {
            
    private let networkDataFetcher: DataFetcherProtocol = NetworkDataFetcher()
        
    // replace "Response" on your model type
    func fetchData(from url: String, completion: @escaping (Result<Response, Error>) -> Void) {
        networkDataFetcher.fetchGenericJSONData(fromUrl: url, completion: completion)
    }
}
