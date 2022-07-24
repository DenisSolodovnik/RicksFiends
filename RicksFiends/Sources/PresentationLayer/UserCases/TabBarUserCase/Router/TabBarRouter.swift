//
//  TabBarRouter.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit

protocol TabBarRouter: AnyObject {
    func tabBarControllers() -> [TabItemType: UIViewController]
}
