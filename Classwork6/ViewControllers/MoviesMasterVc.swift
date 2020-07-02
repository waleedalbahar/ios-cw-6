//
//  MoviesMasterVc.swift
//  Classwork6
//
//  Created by Waleed Albahar on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
var selectedMovie = Movie(movieName: "NOTHING", movieReleaseDate: 2000, actors: [], rating:0.0 , pgRating: "PG 13")
class MoviesMasterVc: UIViewController {


 
    
    @IBOutlet weak var marvelBtn0: UIButton!
     @IBOutlet weak var marvelBtn1: UIButton!
     @IBOutlet weak var marvelBtn2: UIButton!
     @IBOutlet weak var marvelBtn3: UIButton!
     @IBOutlet weak var marvelBtn4: UIButton!
     @IBOutlet weak var marvelBtn5: UIButton!
    
     @IBOutlet weak var dcBtn0: UIButton!
     @IBOutlet weak var dcBtn1: UIButton!
     @IBOutlet weak var dcBtn2: UIButton!
     @IBOutlet weak var dcBtn3: UIButton!
     @IBOutlet weak var dcBtn4: UIButton!
     @IBOutlet weak var dcBtn5: UIButton!

       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
        // Do any additional setup after loading the view.
    }
    
    func setMarvelImages(){
    marvelBtn0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName),for: .normal)
    marvelBtn1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName),for: .normal)
    marvelBtn2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName),for: .normal)
    marvelBtn3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName),for: .normal)
    marvelBtn4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName),for: .normal)
    marvelBtn5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName),for: .normal)
    }
        
  
    

    func setDCImages(){
      dcBtn0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName),for: .normal)
       dcBtn1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName),for: .normal)
       dcBtn2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName),for: .normal)
       dcBtn3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName),for: .normal)
       dcBtn4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName),for: .normal)
       dcBtn5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName),for: .normal)
    }
    @IBAction func marvelBtns(_ sender: UIButton){
           let index = sender.tag
           selectedMovie = MarvelMovieData[index]
           print(selectedMovie)
        performSegue(withIdentifier: "details", sender: nil)
       }
    @IBAction func dcBtns(_ sender: UIButton)
    {
        let index = sender.tag
        selectedMovie = DCMovieData[index]
        print(selectedMovie)
        performSegue(withIdentifier: "details", sender: nil)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
