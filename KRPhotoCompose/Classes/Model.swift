//
//  Model.swift
//  Pods
//
//  Created by Kyle Ryan on 11/14/16.
//
//

import Foundation

struct Model {
    
    /// Provides a singleton to the model
    static let sharedInstance = Model()
    
    /// Provides a height for the controller
    var height: Double!
    
    struct CellManager {
        var photoCells: [PhotoCollectionViewCell] = []
    }
    
    /**
     Manages the cells displayed in the main controller's collection view
     
     - Library: Handles the cell that shows an image from the library.
     - Camera: Handles the cell that shows the live camera
     - CameraButton: Handles the cell for the button that brings up the camera view
     - ImageButton: Handles the cell for the ImageButton
     */
    struct Cell {
        var width: CGFloat!
        var height: CGFloat!
        var image: UIImage!
        var type: CellType!
        
        enum CellType: String {
            case PhotoButton = "PhotoButtonCollectionViewCell"
            case LibraryButton = "LibraryButtonCollectionViewCell"
            case Photo = "PhotoCollectionViewCell"
            case Camera = "CameraCollectionViewCell"
        }
    }
}


