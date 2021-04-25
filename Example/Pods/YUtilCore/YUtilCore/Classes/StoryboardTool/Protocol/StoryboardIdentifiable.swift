//
//  StoryboardIdentifier.swift
//  AHStoryboard
//
//  Created by bruceyao on 2021/4/25.
//

import UIKit

public protocol StoryboardIdentifiable {
   static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: Base_Vc {
  public  static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
