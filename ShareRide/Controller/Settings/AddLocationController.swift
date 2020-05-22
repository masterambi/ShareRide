//
//  AddLocationController.swift
//  ShareRide
//
//  Created by Ramzy Rashaun Arief on 22/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit
import MapKit

private let reuseIdentifier = "Cell"

class AddLocationController: UITableViewController {
    
    // MARK: - Properties
    
    private let searchBar = UISearchBar()
    private let searchCompleter = MKLocalSearchCompleter()
    private var searchResults = [MKLocalSearchCompletion]()
    private let type: LocationType
    private let location: CLLocation
    
    // MARK: - Lifecycle
    
    init(type: LocationType, location: CLLocation) {
        self.type = type
        self.location = location
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        configureTableView()
        configureSearchBar()
        configureSearchCompleter()
    }
    // MARK: - Helper Functions
    
    func configureTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = 60
        
        tableView.addShadow()
    }
    
    func configureSearchBar() {
        searchBar.sizeToFit()
        searchBar.delegate = self
        navigationItem.titleView = searchBar
    }
    
    func configureSearchCompleter() {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        
        searchCompleter.region = region
        searchCompleter.delegate = self
    }
    
}

extension AddLocationController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
        return cell
    }
}

extension AddLocationController: UISearchBarDelegate {
    
}

extension AddLocationController: MKLocalSearchCompleterDelegate {
    
}