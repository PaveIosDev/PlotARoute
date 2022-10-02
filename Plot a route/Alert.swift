//
//  Alert.swift
//  Plot a route
//
//  Created by Павел Яковенко on 02.10.2022.
//

import UIKit

extension UIViewController {
    func alertAddAdress(title: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        let alertContriller = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let tfText = alertContriller.textFields?.first
            guard let text = tfText?.text else { return }
            completionHandler(text)

        }
        
        alertContriller.addTextField { tf in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default) { (_) in
        }
        
        alertContriller.addAction(alertOK)
        alertContriller.addAction(alertCancel)
        
        present(alertContriller, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(alertOK)
        present(alertController, animated: true, completion: nil)
    }
    
}
