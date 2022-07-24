//
//  TabBarViewInput.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit

protocol TabBarViewInput: AnyObject {
    func setupTabBarControllers(_ controllers: [TabItemType: UIViewController], defaultTabOrder: [TabItemType])

    func presentCharactersList()
    func presetnEpisodesList()
    func presentLocationsList()
}
