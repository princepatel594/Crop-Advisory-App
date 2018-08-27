//
//  ImageRecognitionViewController.swift
//  Agrarian
//
//  Created by Bhushan Joshi on 2018-03-24.
//  Copyright © 2018 Bhushan Joshi. All rights reserved.
//

import UIKit
import VisualRecognitionV3
import SVProgressHUD

class ImageRecognitionViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var photoImageView2: UIImageView!
    let imagePicker = UIImagePickerController()
    let apiKey = "fdddcac2fd721d077a3345f39418b9d646394a2e"
    let version = "2018-03-24"
    var classificationArray : [String] = []
    var classificationDictionary : [String:Double] = [:]
    var photoImage : UIImageView!
    var score : Double?
    var diseaseName :String?
    var flag : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker.delegate = self
        
    }
    
   
    
    
    
    
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        cameraButton.isEnabled = false
        
        SVProgressHUD.show()
        
        if let userPickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            
           //regarding image on view
                print("Contains a value!")
                photoImageView2.image = userPickedImage
            
                print("Doesn’t contain a value.")
            
            
            
            
            imagePicker.dismiss(animated: true, completion: nil)
            let watsonVisualRecognition = VisualRecognition(apiKey:apiKey, version: version)
            
            
            watsonVisualRecognition.classify(image: userPickedImage, threshold: 0.5, owners: ["IBM","me"], classifierIDs: ["PlantDiseases102_575284444"], acceptLanguage: "en", failure: { (error) in
            }, success: { (classifiedImage) in
                
                let classes = classifiedImage.images.first!.classifiers.first!.classes
                
                self.classificationArray = []
                for index in 0..<classes.count{
                    self.classificationArray.append(classes[index].className)
                    print("Classes : ",classes)
                    self.score = classes[0].score!
                    print("Score : ",self.score!)
                }
                self.detect()
                print("Array of Images :",self.classificationArray)
                
                DispatchQueue.main.async {
                    self.cameraButton.isEnabled = true
                    SVProgressHUD.dismiss()
                }
            })
            
            
            
        }
        
        else{
            print("error loading image")
        }
    }
    
    
    
    
    func detect(){
        
        if (classificationArray.contains("Black Knot") && score! >= 0.7){
            DispatchQueue.main.async {
                self.diseaseName = "Black Knot"
            }
        }
        else if (classificationArray.contains("Apple Scab") && score! >= 0.7){
            DispatchQueue.main.async {
                self.diseaseName = "Black Knot"
            }
        }
        
        else if (classificationArray.contains("Bacterial Canker") && score! >= 0.7){
            DispatchQueue.main.async {
                self.diseaseName = "Bacterial Canker"
            }
        }
        else if (classificationArray.contains("Apple Cedar Rust") && score! >= 0.7){
            DispatchQueue.main.async {
                self.diseaseName = "Apple Cedar Rust"
            }
        }
        else if (classificationArray.contains("Blossom End Root") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Blossom End Root"
            }
        }
        else if (classificationArray.contains("Club Root") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Club Root"
            }
        }
        else if (classificationArray.contains("Corn Cercospora") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Corn Cercospora"
            }
        }
        else if (classificationArray.contains("Corn Common Rust") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Corn Common Rust"
            }
        }
        else if (classificationArray.contains("Corn Northern Leaf Blight") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Corn Northern Leaf Blight"
            }
        }
        else if (classificationArray.contains("Grape Black Measles") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Grape Black Measles"
            }
        }
            
        else if (classificationArray.contains("Grape Leaf Blight") && score! >= 0.5){
            DispatchQueue.main.async {
            self.diseaseName = "Grape Leaf Blight"
            }
        }
            
        else if (classificationArray.contains("Grey Mould") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Grey Mould"
            }
        }
            
        else if (classificationArray.contains("Potato Late Blight") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Potato Late Blight"
            }
        }
       /* else if (classificationArray.contains("Potato Late Blight") && score! >= 0.7){
            DispatchQueue.main.async {
                self.diseaseName = "Potato Late Blight"
            }
        }*/
        else if (classificationArray.contains("Squash Powdery Mildew") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Squash Powdery Mildew"
            }
        }
        else if (classificationArray.contains("Strawberry Leaf Scorch") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "Strawberry Leaf Scorch"
            }
        }
            
        else if (classificationArray.contains("WILTS") && score! >= 0.5){
            DispatchQueue.main.async {
                self.diseaseName = "WILTS"
            }
        }
            
        else{
            DispatchQueue.main.async {
                self.navigationItem.title = "Sorry Value Incorrect / we are not confident"
                self.navigationController?.navigationBar.barTintColor = UIColor.red
                self.navigationController?.navigationBar.isTranslucent = false
                self.flag = 1
            }
        }
    }
    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
        if flag == 1 {
            self.navigationItem.title = nil
            self.navigationController?.navigationBar.barTintColor = nil
            self.navigationController?.navigationBar.isTranslucent = true
            self.flag = 1
        }
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "nextPage" && photoImageView2.image != nil) {
            print(diseaseName!)
            let destination = segue.destination as? ImageInformationViewController
            destination?.diseaseName = diseaseName!
            destination?.getImage = photoImageView2.image
        }
        else{
            print("error sending data to next Page")
        }
    }
 
    
    
    
    
    
    
}
