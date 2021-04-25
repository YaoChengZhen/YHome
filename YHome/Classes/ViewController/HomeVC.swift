//
//  Home_vc.swift
//  Jacob
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import RxSwift
import YUtilCore
import YEmptyDataView
import MJRefresh
import SwiftyJSON

class HomeVC: Empty_TVc  {
    
    /****************************Storyboard UI设置区域****************************/
    fileprivate lazy var home_tv: UITableView = {
        let table = UITableView.init();
        return table
    }()
    
    // 顶部刷新
//    let header = MJRefreshGifHeader()
////    // 底部刷新
//    let footer = MJRefreshAutoNormalFooter()
     
    /****************************Storyboard 绑定方法区域****************************/
//    var manageVm:Home_vm?
     
    var home_list = [HomeModel]() {
        didSet {
            self.home_tv.reloadData()
        }
    }
     
    /**************************** 以下是方法区域 ****************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        for index in 0...10 {
            let model = HomeModel.init(json: JSON.init(rawValue: ["desc": "Hello" + index.description, "pdname": "uuuuu" + index.description, "uri": index % 2 == 0 ? "productvc" : "https://www.baidu.com"])!)
            home_list.append(model!)
        }
        home_tv.reloadData()
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    /**
     界面基础设置
     */
    override func setupUI() {
        view.addSubview(home_tv)
        home_tv.snp.makeConstraints { (make) in
            make.leading.trailing.top.bottom.equalToSuperview().offset(0)
        }
        home_tv.register(HomeCell.self, forCellReuseIdentifier: "HomeCell")
        // 下拉刷新
//        header.setRefreshingTarget(self, refreshingAction: #selector(HomeVC.headerRefresh))
//        self.home_tv.mj_header = header
        // 上拉刷新
//        footer.setRefreshingTarget(self, refreshingAction: #selector(HomeVC.footerRefresh))
//        self.home_tv.mj_footer = footer
        self.home_tv.dzn_tv_emptyDataSource = self
        self.home_tv.dzn_tv_emptyDelegate = self
        self.home_tv.tableFooterView = UIView()
        home_tv.dataSource = self
        home_tv.delegate = self
        self.home_tv.estimatedRowHeight = 44  //  随便设个不那么离谱的值
        self.home_tv.rowHeight = UITableView.automaticDimension
        ///隐藏滑动条
        self.home_tv.showsVerticalScrollIndicator = false
         
    }

    /**
     app 主题 设置
     */
    override func setViewTheme() {
        
    }

    /**
     绑定到viewmodel 设置
     */
    override func bindToViewModel() {
        
    }
}

// MARK: - 自定义方法
extension  HomeVC {

    // 顶部刷新
    @objc func headerRefresh() {
        
    }
    
    @objc func footerRefresh() {
        
    }
}

// MARK: UITableViewDelegate
extension  HomeVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.home_list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.home_list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        cell.item = item
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
// MARK: UITableViewDelegate
extension  HomeVC: UITableViewDelegate {

    /// 点击行事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = self.home_list[indexPath.row]
        _ = model.uri.openURL()
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}

/// 空数据数据代理
extension  HomeVC :EmptyDataSource {

    func verticalOffset(emptyView scrollView: UIScrollView) -> CGFloat {
        return 0
    }

    func description(emptyView scrollView: UIScrollView) -> NSAttributedString? {
        var attributes: [NSAttributedString.Key:Any] = [:]
        attributes[NSAttributedString.Key.font] = UIFont.systemFont(ofSize: 17)
        attributes[NSAttributedString.Key.foregroundColor] = UIColor.red
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        attributes[NSAttributedString.Key.paragraphStyle] = paragraph
        let attributedString =  NSMutableAttributedString(string: "商品列表数据为空啊", attributes: nil)
        let range = (attributedString.string as NSString).range(of: "列表数据")
        attributedString.addAttributes([NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0.6784313725, blue: 0.9450980392, alpha: 1)], range: range)
        return attributedString
    }
}

