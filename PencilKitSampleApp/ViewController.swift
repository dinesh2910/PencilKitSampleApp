//
//  ViewController.swift
//  PencilKitSampleApp
//
//  Created by Dinesh Danda on 6/14/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import UIKit
import PencilKit

class ViewController: UIViewController, PKCanvasViewDelegate, PKToolPickerObserver {

    
    @IBOutlet weak var pencilFingerToggleBtn: UIBarButtonItem!
    @IBOutlet weak var canvesView: PKCanvasView!
    
    let canvesWidth: CGFloat = 768
    let canvesScrollHeight: CGFloat = 500
    
    var drawing = PKDrawing()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvesView.delegate = self
        canvesView.drawing = drawing
        canvesView.alwaysBounceVertical = true
        canvesView.allowsFingerDrawing = true
        
        if let window = parent?.view.window,
            let toolPicker = PKToolPicker.shared(for: window) {
            toolPicker.setVisible(true, forFirstResponder: canvesView)
            toolPicker.addObserver(canvesView)
            canvesView.becomeFirstResponder()
        }
    }
    

    @IBAction func didPressSaveToAlbumButton(_ sender: UIBarButtonItem) {
        
    }
    
}

