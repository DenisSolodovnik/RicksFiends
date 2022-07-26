//
//  EpisodesListViewController.swift
//  RicksFiends
//
//  Created by Денис Солодовник on 24.07.2022.
//

import UIKit

class EpisodesListViewController: UIViewController {
    init() {
        super.init(nibName: nil, bundle: nil)

        title = "l.Episodes.title".l10n()
        tabBarItem.image = UIImage(named: "characters_tab_icon")
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
