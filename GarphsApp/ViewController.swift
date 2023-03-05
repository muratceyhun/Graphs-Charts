//
//  ViewController.swift
//  GarphsApp
//
//  Created by Murat Ceyhun Korpeoglu on 4.03.2023.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    var barChart = BarChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0,
                                y: 0,
                                width: view.frame.width,
                                height: view.frame.width)
        barChart.center = view.center
        view.addSubview(barChart)
        var entries = [BarChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(BarChartDataEntry(x: Double(x),
                                             y: Double(x)))
        }
        var set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        var data = BarChartData(dataSet: set)
        barChart.data = data
    }
}
extension ViewController: ChartViewDelegate {
}

