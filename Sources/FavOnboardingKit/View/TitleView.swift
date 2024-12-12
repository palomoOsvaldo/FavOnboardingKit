//
//  TitleView.swift
//
//
//  Created by Osvaldo Salas Palomo on 22/11/24.
//

import UIKit

class TitleView: UIView {
    
    private let themeFont: UIFont
    
    private lazy var titleLabel: UILabel = {
       let lbl = UILabel()
        lbl.font = themeFont
        lbl.adjustsFontSizeToFitWidth = true
        lbl.minimumScaleFactor = 0.5
        lbl.numberOfLines = 2
        lbl.textAlignment = .center
        return lbl
    }()
    
    init(themeFont: UIFont) {
        self.themeFont = themeFont
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(text: String?) {
        titleLabel.text = text
    }
    
    func layout() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(24)
            make.bottom.equalTo(snp.bottom).offset(-36)
            make.leading.equalTo(snp.leading).offset(36)
            make.trailing.equalTo(snp.trailing).offset(-36)
        }
    }
}
