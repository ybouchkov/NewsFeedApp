//
//  UITableView+.swift
//  NewsFeedApp
//
//  Created by Yani Buchkov on 28.03.18.
//  Copyright © 2018 Mr Bouchkov. All rights reserved.
//

import UIKit

extension UITableView {
    func registerCell<T:UITableViewCell>(_ cellType: T.Type) {
        let name = String(describing: cellType)
        let nib = UINib(nibName: name, bundle: nil)
        self.register(nib, forCellReuseIdentifier: name)
    }
    func registerCells<T:UITableViewCell>(_ cellTypes: [T.Type]) {
        for cellType in cellTypes {
            let name = String(describing: cellType)
            let nib = UINib(nibName: name, bundle: nil)
            self.register(nib, forCellReuseIdentifier: name)
        }
    }
    func registerHeader<T:UITableViewHeaderFooterView>(_ headerType: T.Type) {
        let name = String(describing: headerType)
        let nib = UINib(nibName: name, bundle: nil)
        self.register(nib, forHeaderFooterViewReuseIdentifier: name)
    }
    func dequeueCell<T:UITableViewCell>(_ cellType: T.Type) -> T {
        let name = String(describing: cellType)
        guard let cell = dequeueReusableCell(withIdentifier: name) as? T else {
            fatalError("Could not dequeue cell with identifier: \(name)")
        }
        return cell
    }
    func dequeueHeader<T:UITableViewHeaderFooterView>(_ headerType: T.Type) -> T {
        let name = String(describing: headerType)
        guard let cell = dequeueReusableHeaderFooterView(withIdentifier: name) as? T else {
            fatalError("Could not dequeue cell with identifier: \(name)")
        }
        return cell
    }
}
