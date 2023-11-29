//
//  Extensions.swift
//  iOS-Academy-RickAndMorty
//
//  Created by Alief Ahmad Azies on 29/11/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
