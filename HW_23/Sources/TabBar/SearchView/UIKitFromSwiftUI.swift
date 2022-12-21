//
//  UIKitFromSwiftUI.swift
//  HW_23
//
//  Created by Виктор Басиев on 21.12.2022.
//

import SwiftUI
import UIKit

struct UIKitFromSwiftUI: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UINavigationController {
        let viewController = MainViewUIKit()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationItem.title = "Поиск"
        navigationController.navigationItem.searchController = UISearchController(searchResultsController: nil)
        navigationController.navigationItem.searchController?.searchBar.placeholder = "search"
        navigationController.navigationItem.hidesSearchBarWhenScrolling = false
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct UIKitFromSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        UIKitFromSwiftUI()
    }
}
