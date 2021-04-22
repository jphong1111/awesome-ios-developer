//
//  AlertProtocol.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/21/21.
//

import UIKit

enum AlertButton: String {
    case ok
    case cancel
    case delete
    case settings
}

protocol AlertProtocol: UIViewController {
    func showAlert(title: String, message: String, buttons: [AlertButton], completion: @escaping (UIAlertController, AlertButton) -> Void)
}

extension AlertProtocol {
    
    func showAlert(title: String, message: String, buttons: [AlertButton] = [.ok], completion: @escaping (UIAlertController, AlertButton) -> Void) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        buttons.forEach { button in
            let action = UIAlertAction(title: button.rawValue.capitalized, style: button == .delete ? .destructive : .default) { [alert, button] _ in
                completion(alert, button)
            }
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
}

protocol CellReusable {
    static var identifier: String { get }
}

extension CellReusable {
    static var identifier: String {
        String(describing: self)
    }
}
