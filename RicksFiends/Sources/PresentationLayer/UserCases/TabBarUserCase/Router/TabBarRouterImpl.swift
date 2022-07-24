//
//  TabBarRouterImpl.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import Foundation
import Swinject

final class TabBarRouterImpl: TabBarRouter {
    weak var viewController: TabBarViewController?

    var charactersListViewController: Provider<CharactersListViewController>!
    var episodesListViewController: Provider<EpisodesListViewController>!
    var locationsListViewController: Provider<LocationsListViewController>!

    func tabBarControllers() -> [TabItemType: UIViewController] {
        [
            .charactersList: charactersListViewController.instance,
            .episodesList: episodesListViewController.instance,
            .locationsList: locationsListViewController.instance
        ]
    }
}
