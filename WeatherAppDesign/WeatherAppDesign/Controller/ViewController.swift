//
//  ViewController.swift
//  WeatherAppDesign
//
//  Created by Md Hosne Mobarok on 1/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cvBackgroundView: UIView!
    @IBOutlet weak var tvBackgroundView: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var cellOneBgView: UIView!
    @IBOutlet weak var cellTwoBgView: UIView!
    @IBOutlet weak var cellThreeBgView: UIView!
    @IBOutlet weak var cellFourBgView: UIView!
    @IBOutlet weak var cellFiveBgView: UIView!
    @IBOutlet weak var cellSixBgView: UIView!
    @IBOutlet weak var cellSevenBgView: UIView!
    @IBOutlet weak var cellEightBgView: UIView!
    @IBOutlet weak var cellNineBgView: UIView!
    @IBOutlet weak var cellTenBgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stupUI()
        setupCollectionView()
        setupTableView()
    }
    
    // MARK: - Private Methods.
    func stupUI(){
        cvBackgroundView.layer.cornerRadius = 10
        tvBackgroundView.layer.cornerRadius = 10
        cellOneBgView.layer.cornerRadius = 10
        cellTwoBgView.layer.cornerRadius = 10
        cellThreeBgView.layer.cornerRadius = 10
        cellFourBgView.layer.cornerRadius = 10
        cellFiveBgView.layer.cornerRadius = 10
        cellSixBgView.layer.cornerRadius = 10
        cellSevenBgView.layer.cornerRadius = 10
        cellEightBgView.layer.cornerRadius = 10
        cellNineBgView.layer.cornerRadius = 10
        cellTenBgView.layer.cornerRadius = 10
    }
    
    func setupCollectionView(){
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
    }
    
    func setupTableView(){
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
    }

}

// MARK: - CollectionView DataSource Methods.
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        return cell
    }
    
}

// MARK: - TableView DataSource Methods.
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        return cell
    }
   
}

