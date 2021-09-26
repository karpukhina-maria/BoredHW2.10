//
//  NetworkManager.swift
//  BoredHW2.10
//
//  Created by Mary Jane on 26.09.2021.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchData(urlAddress: String, with complition: @escaping(Activity) -> Void ) {
        
        guard let url = URL(string: urlAddress) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No data description")
                return
            }
            
            do {
                let activity = try JSONDecoder().decode(Activity.self, from: data)
                DispatchQueue.main.async {
                    complition(activity)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
