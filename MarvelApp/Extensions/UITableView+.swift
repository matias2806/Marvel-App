//
//  UITableView+.swift
//  MarvelApp
//
//  Created by Matias Palmieri on 17/09/2022.
//

import Foundation
import UIKit

public protocol NibLoadableView: AnyObject {
    static var nibName: String { get }
}

public extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

public protocol ReusableView: AnyObject {}

public extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

public extension UITableView {
    
    func register<T: UITableViewCell>(_: T.Type) {
        
        let nib = UINib(nibName: T.nibName, bundle: Bundle(for: T.self))
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}

public extension UITableView {
    func reloadTableView() {
        self.reloadData()
        self.setContentOffset(.zero, animated: true)
    }
    
    func addRefreshController(refresh: UIRefreshControl) {
        if #available(iOS 10.0, *) {
            self.refreshControl = refresh
        } else {
            self.addSubview(refresh)
        }
    }
    
    func layoutTableHeaderView(headerViewHeight: CGFloat) {
        guard let headerView = self.tableHeaderView else { return }
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        let headerWidth = headerView.bounds.size.width
        let temporaryWidthConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "[headerView(width)]",
            options: [],
            metrics: ["width": headerWidth],
            views: ["headerView": headerView])
        
        headerView.addConstraints(temporaryWidthConstraints)
        
        headerView.setNeedsLayout()
        headerView.layoutIfNeeded()
        
        let height = headerViewHeight
        var frame = headerView.frame
        
        frame.size.height = height
        headerView.frame = frame
        
        self.tableHeaderView = headerView
        
        headerView.removeConstraints(temporaryWidthConstraints)
        headerView.translatesAutoresizingMaskIntoConstraints = true
    }
}

extension UITableViewCell: NibLoadableView { }

extension UITableViewCell: ReusableView { }
