//
//  ApplicationAssembly.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import Foundation
import Swinject

final class ApplicationAssembly {
    private let appDelegate = AppDelegate()

    private let assembler = Assembler([
        TabBarAssembly(),
        CharacterListAssembly(),
        EpisodesListAssembly(),
        LocationsListAssembly()
    ])

    var appDelegates: [AppDelegateHandler] {
        [appDelegate]
    }

    init() {
        handleAppDelegate()
    }

    private func handleAppDelegate() {
        appDelegate.didFinishLaunchingHandler = {
            self.setupAppDelegate()
        }
    }

    private func setupAppDelegate() {
        appDelegate.rootViewController = assembler.resolver.resolve(TabBarViewController.self)!
    }
}
