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
    
    /**
     Manages the cells displayed in the main controller's collection view
     
     - Library: Handles the cell that shows an image from the library.
     - Camera: Handles the cell that shows the live camera
     - CameraButton: Handles the cell for the button that brings up the camera view
     - ImageButton: Handles the cell for the ImageButton
     */
    struct Cell {
        /**
         Manages library cell which shows photos from user's library
         
         - width: Handles the width of the cell
         - height: Handles the width of the cell
         - image: For the image that this cell will show in its image view.
         - reuseID: Handles the collection view cell's reuseID
         */
        struct Library {
            var width: CGFloat!
            var height: CGFloat!
            var image: UIImage!
            let reuseID = "Cell-Library-ID"
        }
        
        /**
         Manages canera cell which shows live camera preview
         
         - width: Handles the width of the cell
         - height: Handles the width of the cell
         - image: For the image that this cell will show in its image view.
         - reuseID: Handles the collection view cell's reuseID
         */
        struct Camera {
            var width: CGFloat!
            var height: CGFloat!
            var image: UIImage!
            let reuseID = "Cell-Camera-ID"
        }
        
        /**
         Manages camera button cell that launches a full screen camera
         
         - width: Handles the width of the cell
         - height: Handles the width of the cell
         - image: For the image that this cell will show in its button.
         - reuseID: Handles the collection view cell's reuseID
         */
        struct CameraButton {
            var width: CGFloat!
            var height: CGFloat!
            var image: UIImage!
            let reuseID = "Cell-CameraButton-ID"
        }
        
        /**
         Manages image button cell which brings up a model controller of the user's photo library.
         
         - width: Handles the width of the cell
         - height: Handles the width of the cell
         - image: For the image that this cell will show in its button.
         - reuseID: Handles the collection view cell's reuseID
         */
        struct ImageButton {
            var width: CGFloat!
            var height: CGFloat!
            var image: UIImage!
            let reuseID = "Cell-ImageButton-ID"
        }
    }
    
}


