//
//  MoviesViewController.swift
//  ModuloUIKit
//
//  Created by Daniel Mateos on 30/06/23.
//

import UIKit

class MoviesViewController: UIViewController {
    
    let movieData = MoviesData()
    
    var tableView: UITableView?
    var moviesCollection: UICollectionView?
    var buttonShow: UIButton?
    var titleLabel: UILabel?
    var buttonBack: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
        movieData.getData()
        movieData.getImage()
        
        setConstraints()
    }
    
    
    func initUI(){
        view.backgroundColor = Extras().myViewBackgroundColor
        
        //buttonBack
        buttonBack = UIButton()
//        buttonBack?.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        buttonBack?.setTitle("Logout", for: .normal)
        buttonBack?.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        buttonBack?.addTarget(self, action: #selector(backToMain), for: .touchUpInside)
        view.addSubview(buttonBack!)
        buttonBack?.translatesAutoresizingMaskIntoConstraints = false
        buttonBack?.heightAnchor.constraint(equalToConstant: 30).isActive = true
        buttonBack?.widthAnchor.constraint(equalToConstant: 50).isActive = true
        buttonBack?.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 2.5).isActive = true
        buttonBack?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        titleLabel = UILabel()
        titleLabel?.textAlignment = .center
        titleLabel?.textColor = Extras().titleColor
        titleLabel?.textAlignment = .center
        titleLabel?.font = UIFont(name: "American Typewriter Bold", size: 20)
        titleLabel?.text = "Peliculas Piratas Fireplay"
        view.addSubview(titleLabel!)
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.topAnchor.constraint(equalTo: view.topAnchor, constant:20).isActive = true
        titleLabel?.leadingAnchor.constraint(equalTo: buttonBack!.trailingAnchor, constant:0).isActive = true
        titleLabel?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:0).isActive = true
        
        
        //        tableView = UITableView(frame: CGRect(x: 10, y: 40, width: 350, height: 400))
        tableView = UITableView()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.backgroundColor = Extras().myViewBackgroundColor
        view.addSubview(tableView!)
        tableView?.translatesAutoresizingMaskIntoConstraints = false
        tableView?.widthAnchor.constraint(equalToConstant: 100).isActive = true
        tableView?.heightAnchor.constraint(equalToConstant: 450).isActive = true
        tableView?.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 8).isActive = true
        tableView?.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        tableView?.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        moviesCollection = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
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
        
        let buttonShow = UIButton()
        buttonShow.setTitleColor(UIColor.white, for: .normal)
        buttonShow.setTitle("Ver mas", for: .normal)
        buttonShow.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonShow.backgroundColor = Extras().titleColor
        buttonShow.layer.cornerRadius = 10
        buttonShow.addTarget(self, action: #selector(goToGrid), for: .touchUpInside)
        buttonShow.translatesAutoresizingMaskIntoConstraints = false
        self.buttonShow = buttonShow
        view.addSubview(buttonShow)
    }
    
    @objc func goToGrid(){
        let goToGrid = GridViewController()
        goToGrid.modalPresentationStyle = .popover
        present(goToGrid, animated: true)
    }
    
    @objc func backToMain(){
        let goToMain = ViewController()
        goToMain.modalPresentationStyle = .fullScreen
        present(goToMain, animated: true)
    }
    
    func setConstraints(){
        
        guard let moviesCollectionView = moviesCollection, let buttonShow = buttonShow else {return}
        
        moviesCollectionView.delegate = self
        moviesCollectionView.dataSource = self
        view.addSubview(moviesCollectionView)
        
        NSLayoutConstraint.activate([
            moviesCollectionView.topAnchor.constraint(equalTo: titleLabel!.topAnchor, constant: 30),
            moviesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            moviesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            moviesCollectionView.bottomAnchor.constraint(equalTo: buttonShow.topAnchor, constant: -30),
            moviesCollectionView.heightAnchor.constraint(equalToConstant: 200),
//            moviesCollectionView.widthAnchor.constraint(equalToConstant: 350),
//            moviesCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.20),
//            moviesCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1)
        ])
        
        NSLayoutConstraint.activate([
            buttonShow.topAnchor.constraint(equalTo: moviesCollectionView.bottomAnchor, constant: 0),
            buttonShow.bottomAnchor.constraint(equalTo: tableView!.topAnchor, constant: -30),
            buttonShow.leadingAnchor.constraint(equalTo: view!.leadingAnchor, constant: 120),
            buttonShow.trailingAnchor.constraint(equalTo: view!.trailingAnchor, constant: -120),
//            buttonShow.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            buttonShow.widthAnchor.constraint(equalToConstant: 2),
            buttonShow.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    

}

//MARK: - Extensiones TablrView
extension MoviesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.objetoMovie?.category?[section].movies.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movieData.objetoMovie?.category?[indexPath.section].movies[indexPath.row]
        let cell = MoviesTableViewCell(movie: movie!)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return movieData.objetoMovie?.category?.count ?? 0
    }
//
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return movieData.objetoMovie?.category?[section].name
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.section) **** \(indexPath.row)")
        
        let movie = movieData.objetoMovie?.category?[indexPath.section].movies[indexPath.row]
        let detalleVC = DetalleViewController(movie: movie)
        detalleVC.modalPresentationStyle = .popover
        present(detalleVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        Constants.height/7
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        
        view.backgroundColor = Extras().butonTitleBackgroundColor
        let image = UIImageView(frame: CGRect(x: 5, y: 5, width: 30, height: 30))
        image.image = UIImage(named: "movIcon")
        image.tintColor = .backgroundBrownColor
        view.addSubview(image)
        
        let label = UILabel(frame: CGRect(x: 40, y: 5, width: 130, height: 20))
        label.textColor = .backgroundBrownColor
        label.text = movieData.objetoMovie?.category?[section].name ?? ""
        label.font = .boldSystemFont(ofSize: 25)
        view.addSubview(label)
        
        return view
    }
    
}

//MARK: - Extensiones CollectionView
extension MoviesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
        return CGSize(width: Constants.width/2.5 - 10, height: Constants.height/3.5 - 30)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    
}
