//
//  LocationsListAssembly.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit
import Swinject

final class LocationsListAssembly: Assembly {
    func assemble(container: Container) {
        container.register(LocationsListViewController.self) { _ in
            LocationsListViewController()
        }.initCompleted { resolver, viewController in
        }.inObjectScope(.container)
    }
}
