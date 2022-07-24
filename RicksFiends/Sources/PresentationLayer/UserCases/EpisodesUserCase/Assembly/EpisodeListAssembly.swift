//
//  EpisodeListAssembly.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit
import Swinject

final class EpisodeListAssembly: Assembly {
    func assemble(container: Container) {
        container.register(EpisodesListViewController.self) { _ in
            EpisodesListViewController()
        }.initCompleted { resolver, viewController in
        }.inObjectScope(.container)
    }
}
