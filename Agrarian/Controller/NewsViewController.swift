//
//  NewsViewController.swift
//  Agrarian
//
//  Created by Bhushan Joshi on 2018-04-01.
//  Copyright © 2018 Bhushan Joshi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NewsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   

    @IBOutlet weak var newsTableView: UITableView!
    let url : String = "https://newsapi.org/v2/everything?q=bitcoin&apiKey=9fc6f4f98e0740b3a4e4ed5d67b11745"
    
    var articles : [Article]? = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchArticles()
        // Do any additional setup after loading the view.
    }
    
    func fetchArticles() {
        Alamofire.request(url, method: .get).responseJSON {
            response in
            if response.result.isSuccess{
                print("Success, got the weather data")
                let newsJSON : JSON = JSON(response.result.value!)
                //here the value is of type any so we will have to typecast it to JSON and the response can be a nil, as we are already checking the data in if statement we can say that "the value wont be a nil " thus adding a !
                print(newsJSON)
                self.updateNewsData(json : newsJSON)
            }
            else{
                print("Error : \(String(describing: response.result.error))")
                
            }
            
            
        }
    }
    
    
    
    
    func updateNewsData(json : JSON) {
         let articlesFromJson = json["articles"].arrayValue
        
    
        for articlesFromJson in articlesFromJson {
            let article = Article()
            if let title = articlesFromJson["title"].string , let description = articlesFromJson["description"].string, let author = articlesFromJson["author"].string,let url = articlesFromJson["url"].string , let urlToImage = articlesFromJson["urlToImage"].string {
                
                article.author = author
                article.desc = description
                article.headLine = title
                article.URL = url
                article.imageURL = urlToImage
            }
            self.articles?.append(article)
        }
        DispatchQueue.main.async {
            self.newsTableView.reloadData()
        }
}
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as! ArticleCell
        
        
        cell.newsTitle.text = self.articles?[indexPath.item].headLine
        cell.newsAuthor.text = self.articles?[indexPath.item].author
        cell.newsDescription.text = self.articles?[indexPath.item].desc
        return cell
    }
    
}
