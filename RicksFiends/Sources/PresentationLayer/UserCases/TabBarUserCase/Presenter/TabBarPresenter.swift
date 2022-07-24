//
//  TabBarPresenter.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import Foundation

final class TabBarPresenter: TabBarModuleInput {
    var interactor: TabBarInteractor!
    var router: TabBarRouter!

    weak var view: TabBarViewInput?

    // MARK: - ModuleInput

    func setupTabBarControllers() {
        let tabBarControllers = router.tabBarControllers()
        let defaultTabOrder: [TabItemType] = [.charactersList, .episodesList, .locationsList]

        view?.setupTabBarControllers(tabBarControllers, defaultTabOrder: defaultTabOrder)
    }

    func presentCharactersList() {
    }

    func presetnEpisodesList() {
    }

    func presentLocationsList() {
    }
}
