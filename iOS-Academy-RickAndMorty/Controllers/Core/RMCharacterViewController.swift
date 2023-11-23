//
//  RMCharacterViewController.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 17/11/23.
//

import UIKit

/// Controller to show and search characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
    }

}
