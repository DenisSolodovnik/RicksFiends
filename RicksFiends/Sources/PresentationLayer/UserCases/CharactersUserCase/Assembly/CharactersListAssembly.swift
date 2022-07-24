//
//  CharactersListAssembly.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit
import Swinject

final class CharacterListAssembly: Assembly {
    func assemble(container: Container) {
        container.register(CharactersListViewController.self) { _ in
            CharactersListViewController()
        }.initCompleted { resolver, viewController in
        }.inObjectScope(.container)
    }
}
