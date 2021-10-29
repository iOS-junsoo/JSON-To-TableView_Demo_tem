//
//  ViewController.swift
//  JSON To TableView_Demo_tem
//
//  Created by 준수김 on 2021/10/19.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - 인스턴스 생성
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Request().getData(self) //데이터 가져오기
        setUpTableView()
        
    }
    
    @IBAction func Btn(_ sender: UIButton) {
        tableView.reloadData()
    }
    
    //MARK: - 테이블뷰
    private func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "DemoTableViewCell", bundle: nil), forCellReuseIdentifier: "DemoTableViewCell")
    }
    
    //MARK: - 테이블뷰 레이아웃
    private func setUpLayout() {
    }
    
}

//MARK: - 테이뷰 datasource, delegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        return Glabal.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = Glabal.data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.textLabel?.text = cellData.RELAX_RSTRNT_NM
        return cell
    }
}

