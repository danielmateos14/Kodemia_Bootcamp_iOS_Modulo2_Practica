//
//  GridViewController.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 07/07/23.
//

import UIKit

class GridViewController: UIViewController {

    let movieData = MoviesData()
    var moviesCollection: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
        movieData.getImage()
        
        setConstraints()
    }
    
    
    func initUI(){
        view.backgroundColor = .white
        moviesCollection = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = Constants.width/15
            layout.minimumInteritemSpacing = Constants.width/10
            
            let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collection.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            collection.isPagingEnabled = true
            collection.translatesAutoresizingMaskIntoConstraints = false
            collection.backgroundColor = .clear
            collection.showsHorizontalScrollIndicator = true
            collection.showsHorizontalScrollIndicator = true
            return collection
        }()
    }
    
    @objc func goToGrid(){
        let goToGrid = GridViewController()
        goToGrid.modalPresentationStyle = .popover
        present(goToGrid, animated: true)
    }
    
    func setConstraints(){
        
        guard let moviesCollectionView = moviesCollection else {return}
        
        moviesCollectionView.delegate = self
        moviesCollectionView.dataSource = self
        view.addSubview(moviesCollectionView)
        
        NSLayoutConstraint.activate([
            moviesCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            moviesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            moviesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            moviesCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
//            moviesCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.20),
//            moviesCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1)
        ])

    }
    

}


//MARK: - Extensiones CollectionView
extension GridViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieData.imageSource?.movieCategory?[section].moviesImage.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = moviesCollection?.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MovieCollectionViewCell
        let moviesImage = movieData.imageSource?.movieCategory?[indexPath.section].moviesImage[indexPath.item]
        cell.setData(movieImage: moviesImage!)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.width/2.6 - 10, height: Constants.height/3.5 - 30)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    
}

