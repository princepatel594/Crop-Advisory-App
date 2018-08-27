//
//  ImageInformationViewController.swift
//  Agrarian
//
//  Created by Bhushan Joshi on 2018-03-24.
//  Copyright © 2018 Bhushan Joshi. All rights reserved.
//

import UIKit
import SVProgressHUD

class ImageInformationViewController: UIViewController {
    var diseaseName = String()
    var getImage : UIImage!
    
    @IBOutlet weak var diseaseNameLabel: UILabel!
    @IBOutlet weak var userCapturedImage: UIImageView!
    @IBOutlet weak var inANutshell: UILabel!
    @IBOutlet weak var descriptionTextField: UITextView!
    @IBOutlet weak var descriptionTextfield2: UILabel!

    @IBOutlet weak var brief: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("nextpage name dis = ",diseaseName)
        diseaseNameLabel.text = diseaseName
        userCapturedImage.image = getImage
        descriptionDummy()
        
    }
    
    @IBAction func thatsItButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: [self.userCapturedImage.image!], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
    }
    
    
    func descriptionDummy() {
        if diseaseName == "Black Knot"{
           descriptionTextField.text = "Black knot is caused by the fungus Apiosporina morbosa. The fungus overwinters in knots on twigs and branches"
            brief.text = "The black knot fungus mainly affects twigs, branches and fruit spurs. Occasionally, trunks may also become diseased. Usually, infections originate on the youngest growth. "
        }
        
        else if diseaseName == "Apple Scab"
            {
            descriptionTextField.text = "Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis"
            brief.text = "Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis. The disease manifests as dull black or grey-brown lesions on the surface of tree leaves,[1] buds or fruits."
        }
        
        else if diseaseName == "Corn Common Rust"
        {
            descriptionTextField.text = "Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis"
            brief.text = "Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis. The disease manifests as dull black or grey-brown lesions on the surface of tree leaves,[1] buds or fruits."
        }
        
        else if diseaseName == "Bacterial Canker"
        {
            descriptionTextField.text = "Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis"
            brief.text = "Apple scab is a disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis. The disease manifests as dull black or grey-brown lesions on the surface of tree leaves,[1] buds or fruits."
        }
        
        else if diseaseName == "Club Root"
        {
            descriptionTextField.text = "Clubroot is a common disease of cabbages, broccoli, cauliflower, Brussels sprouts, radishes, turnips, stocks, wallflowers and other plants belonging to the family Brassicaceae (Cruciferae). It is caused by Plasmodiophora brassicae. "
            brief.text = "A disease of Malus trees, such as apple trees, caused by the ascomycete fungus Venturia inaequalis. The disease manifests as dull black or grey-brown lesions on the surface of tree leaves,[1] buds or fruits."
        }
        
        else if diseaseName == "Apple Cedar Rust"
        {
            descriptionTextField.text = "Gymnosporangium juniperi-virginianae is a plant pathogen that causes cedar-apple rust."
            
            brief.text = "On the apple tree, the infections occur on leaves, fruit and young twigs.[2] The brightly colored spots produced on the leaves make it easy to identify. Small, pale yellow spots appear on the upper surfaces of the leaves, usually during late April or May on the eastern seaboard of the United States. These spots gradually enlarge and turn orange or red and may show concentric rings of color. Drops of orange liquid may be visible on the spots. Later in the season, black dots appear on the orange spots on the upper leaf surface. In late summer, tube-like structures develop on the undersurface of the apple leaf"
        }
        
        else if diseaseName == "Corn Northern Leaf Blight"
        {
            descriptionTextField.text = "Northern corn leaf blight (NCLB) is a foliar disease of corn (maize) caused by Exserohilum turcicum, the anamorph of the ascomycete Setosphaeria turcica. With its characteristic cigar-shaped lesions, this disease can cause significant yield loss in susceptible corn hybrids."
            brief.text = "Northern corn leaf blight lesions become pale gray to tan as they enlarge to 1 to 6 inches or longer.Distinct cigar-shaped lesions unrestricted by leaf veins make northern corn leaf blight (NCLB) one of the easiest diseases to identify.Under moist conditions, lesions produce dark gray spores, usually on the lower leaf surface, giving the lesions a dirty appearance."
        }
        
        
        else if diseaseName == "Grape Black Measles"
        {
            descriptionTextField.text = "Grape. Esca (Black Measles). Pathogens: Esca is caused by a complex of fungi that includes several species of Phaeoacremonium, primarily by P. aleophilum  but is more frequently a product of low transpiration"
            brief.text = "A water-soaked spot at the blossom end of tomato fruits is the classic symptom of blossom-end rot. This relatively common problem is preventable. Gardener's Supply. A Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
        }
        
        else if diseaseName == "Blossom End Root"
        {
            descriptionTextField.text = "Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
            brief.text = "Leaf symptoms are characterized by a ‘tiger stripe’ pattern (Fig 2-bottom leaf) when infections are severe from year to year. Mild infections can produce leaf symptoms that can be confused with other diseases or nutritional deficiencies.White cultivars will display areas of chlorosis followed by necrosis, while red cultivars are characterized by red areas followed by necrosis."
        }
        
        
        else if diseaseName == "Blossom End Root"
        {
            descriptionTextField.text = "Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
            brief.text = "A water-soaked spot at the blossom end of tomato fruits is the classic symptom of blossom-end rot. This relatively common problem is preventable. Gardener's Supply. A Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
        }
        
        else if diseaseName == "Grape Leaf Blight"
        {
            descriptionTextField.text = "Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
            brief.text = "A water-soaked spot at the blossom end of tomato fruits is the classic symptom of blossom-end rot. This relatively common problem is preventable. Gardener's Supply. A Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
        }
        
        else if diseaseName == "Grey Mould"
        {
            descriptionTextField.text = "Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
            brief.text = "A water-soaked spot at the blossom end of tomato fruits is the classic symptom of blossom-end rot. This relatively common problem is preventable. Gardener's Supply. A Calcium deficiency is a plant disorder that can be caused by insufficient level of available calcium in the growing medium, but is more frequently a product of low transpiration"
        }
        
    
        else if diseaseName == "Potato Late Blight"
        {
            descriptionTextField.text = "Late blight is the disease that triggered the Irish potato famine of the 1840s. It also was the first plant disease for which a microorganism was proved to be the causal agent, leading to the birth of plant pathology as a science."
            
            brief.text = "Late blight of potato is identified by black/brown lesions (Figures 2,3) on leaves and stems that may be small at first and appear water-soaked or have chlorotic borders, but soon expand rapidly and become necrotic. In humid conditions, Phytophthora infestans produces sporangia and sporangiophores on the surface of infected tissue. This sporulation results in a visible white growth at the leading edge of lesions on abaxial (lower) surfaces of leaves (Figures 4,5,6). As many lesions accumulate, the entire plant can be destroyed in only a few days after the first lesions"
        }
        
        else if diseaseName == "Potato Late Blight"
        {
            descriptionTextField.text = "Late blight is the disease that triggered the Irish potato famine of the 1840s. It also was the first plant disease for which a microorganism was proved to be the causal agent, leading to the birth of plant pathology as a science."
            
            brief.text = "Late blight of potato is identified by black/brown lesions (Figures 2,3) on leaves and stems that may be small at first and appear water-soaked or have chlorotic borders, but soon expand rapidly and become necrotic. In humid conditions, Phytophthora infestans produces sporangia and sporangiophores on the surface of infected tissue. This sporulation results in a visible white growth at the leading edge of lesions on abaxial (lower) surfaces of leaves (Figures 4,5,6). As many lesions accumulate, the entire plant can be destroyed in only a few days after the first lesions"
        }
        
        else if diseaseName == "WILTS"
        {
            descriptionTextField.text = "A wilt disease is any number of diseases that affect the vascular system of plants. Attacks by fungi, bacteria, and nematodes can cause rapid killing of plants, large tree branches or even entire trees."
            
            brief.text = "Late blight of potato is identified by black/brown lesions (Figures 2,3) on leaves and stems that may be small at first and appear water-soaked or have chlorotic borders, but soon expand rapidly and become necrotic. In humid conditions, Phytophthora infestans produces sporangia and sporangiophores on the surface of infected tissue. This sporulation results in a visible white growth at the leading edge of lesions on abaxial (lower) surfaces of leaves (Figures 4,5,6). As many lesions accumulate, the entire plant can be destroyed in only a few days after the first lesions"
        }
        else if diseaseName == "Strawberry Leaf Scorch"
        {
            descriptionTextField.text = "In addition to leaves, leaf scorch can infect petioles, runners, fruit stalks and berry caps. If unchecked, plants can be significantly weakened reducing the growth of all plant parts. Severely infected plants have little capacity to cope with other stresses and can die from drought or extreme temperatures."
            
            brief.text = "The leaf scorch fungus overwinters on infected leaves as well as on leaf debris within the patch. The fungus can remain dormant for long periods in dry leaves, but it produces spores quickly in the presence of moisture. Spores are spread by wind or by splashing water. Spores will germinate and new leaf spots will form if leaves remain wet for 12 hours or longer."
        }
        
        
        else{
           
            
        }
        
    }
    
    
    
}
