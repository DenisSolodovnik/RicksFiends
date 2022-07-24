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
        TabBarAssembly()
    ])

    func setupAppDelegate() {
        appDelegate.rootViewController = assembler.resolver.resolve(TabBarViewController.self)!
    }
}
