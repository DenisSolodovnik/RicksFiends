//
//  TabBarViewController.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit

enum TabItemType {
    case charactersList
    case episodesList
    case locationsList
}

final class TabBarViewController: UITabBarController, TabBarViewInput {
    var moduleInput: TabBarModuleInput!

    private var controllers: [TabItemType: UIViewController]!
    private var defaultTabOrder: [TabItemType]!

    init() {
        super.init(nibName: nil, bundle: nil)
        delegate = self

        tabBar.tintColor = .blue
        tabBar.unselectedItemTintColor = .gray
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public

    func viewController(for type: TabItemType) -> UIViewController? {
        controllers[type]
    }

    // MARK: - Input
    func setupTabBarControllers(_ controllers: [TabItemType: UIViewController], defaultTabOrder: [TabItemType]) {
        self.controllers = controllers
        self.defaultTabOrder = defaultTabOrder
        setupViewControllers()
    }

    func presentCharactersList() {
        selectTab(.charactersList)
    }

    func presetnEpisodesList() {
        selectTab(.episodesList)
    }

    func presentLocationsList() {
        selectTab(.locationsList)
    }

    // MARK: - Private

    private func setupViewControllers() {
        var array = [UINavigationController]()
        for tabItem in defaultTabOrder {
            if let vc = controllers[tabItem] {
                let nvc = UINavigationController(rootViewController: vc)
                array.append(nvc)
                controllers[tabItem] = nvc
            }
        }

        viewControllers = array
        selectedIndex = 0
    }

    private func selectTab(_ tabItem: TabItemType) {
        if let index = defaultTabOrder.firstIndex(of: tabItem) {
            let selectedVC = viewControllers![index]
            if tabBarController(self, shouldSelect: selectedVC) {
                selectedViewController = selectedVC
            }
        }
    }
}

extension TabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        var topViewController = viewController
        if let navigationController = topViewController as? UINavigationController,
           let vc = navigationController.topViewController {
            topViewController = vc
        }

        return true
    }
}

