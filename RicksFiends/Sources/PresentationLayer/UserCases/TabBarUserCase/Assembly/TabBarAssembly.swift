//
//  TabBarAssembly.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit
import Swinject

final class TabBarAssembly: Assembly {
    func assemble(container: Container) {
        container.register(TabBarViewController.self) { _ in
            TabBarViewController()
        }.initCompleted { resolver, viewController in
            let router = TabBarRouterImpl()
            let interactor = TabBarInteractorImpl()
            let presenter = TabBarPresenter()

            router.viewController = viewController
            router.charactersListViewController = resolver.resolve(Provider<CharactersListViewController>.self)
            router.episodesListViewController = resolver.resolve(Provider<EpisodesListViewController>.self)
            router.locationsListViewController = resolver.resolve(Provider<LocationsListViewController>.self)

            presenter.view = viewController
            presenter.interactor = interactor
            presenter.router = router

            viewController.moduleInput = presenter
        }.inObjectScope(.container)
    }
}
