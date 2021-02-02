//
//  Extension-HideKeyboard.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 02/02/2021.
//

import UIKit

extension UIViewController {
    
    //MARK: - Hide Keyboard
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
