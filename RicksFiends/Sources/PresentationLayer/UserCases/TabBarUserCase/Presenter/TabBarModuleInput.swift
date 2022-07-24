//
//  TabBarModuleInput.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit

protocol TabBarModuleInput: AnyObject {
    func setupTabBarControllers()

    func presentCharactersList()
    func presetnEpisodesList()
    func presentLocationsList()
}
