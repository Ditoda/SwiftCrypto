//
//  PreviewProvider.swift
//  SwiftCrypto
//
//  Created by Сергей Герасимов on 02.05.2023.
//

import Foundation
import SwiftUI

extension PreviewProvider{
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview{

    static let instance = DeveloperPreview()
    private init() { }
    
    let homeVM = HomeViewModel()
    
    let stat1 = StatisticModel(title: "Market Cap", value: "12.5Bn", percentageChange: 25.34)
    let stat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    let stat3 = StatisticModel(title: "Portfolio Value", value: "$50.4k", percentageChange: -12.34)
    
    let coin = CoinModel(
            id: "bitcoin",
            symbol: "btc",
            name: "Bitcoin",
            image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
            currentPrice: 28592,
            marketCap: 552399626088,
            marketCapRank: 1,
            fullyDilutedValuation: 599121487652,
            totalVolume: 18639073094,
            high24H: 28679,
            low24H: 27722,
            priceChange24H: 290.49,
            priceChangePercentage24H: 1.02642,
            marketCapChange24H: 5388398459,
            marketCapChangePercentage24H: 0.98506,
            circulatingSupply: 19362337,
            totalSupply: 21000000,
            maxSupply: 21000000,
            ath: 69045,
            athChangePercentage: -58.6913,
            athDate: "2021-11-10T14:24:11.849Z",
            atl: 67.81,
            atlChangePercentage: 41961.51812,
            atlDate: "2013-07-06T00:00:00.000Z",
            lastUpdated: "2023-05-02T17:53:43.220Z",
            sparklineIn7D: SparklineIn7D(
                price: [
                    27381.15193627067,
                    27376.739889090284,
                    27339.719607992924,
                    27275.587743884887,
                    27346.48669340079,
                    27385.658439889994,
                    27446.727590809125,
                    27646.02023449623,
                    27646.365606623785,
                    28006.453437248976,
                    28263.523620165666,
                    28258.04092081205,
                    28351.218248373007,
                    28369.303308214945,
                    28345.514289822426,
                    28367.328885965442,
                    28338.41143005038,
                    28348.14862861835,
                    28384.289597147195,
                    28380.972595328985,
                    28349.742816277914,
                    28753.188236058297,
                    28869.232115040788,
                    29010.922475951553,
                    28969.84603265537,
                    29848.89802711087,
                    29837.684524249315,
                    29672.992700041676,
                    29813.783576006026,
                    29794.322659290916,
                    29777.229110814416,
                    29742.40482895269,
                    28071.527904561095,
                    28166.648429522516,
                    28234.42762220234,
                    28422.480539205288,
                    28352.19132059668,
                    29269.303485119195,
                    28734.395523081934,
                    29055.641767981484,
                    28988.83557843427,
                    29049.283878779977,
                    29193.675479701225,
                    28823.84795423543,
                    28916.57470658047,
                    28980.832450413975,
                    28961.451458613414,
                    28992.46315071663,
                    28922.023836218694,
                    28838.73502916958,
                    28955.147507023165,
                    29034.973306116324,
                    29118.987691016737,
                    29076.840184072465,
                    29345.927424569327,
                    29869.4615452521,
                    29696.49213875522,
                    29598.679469268507,
                    29622.671579618996,
                    29488.310592148166,
                    29487.59227790039,
                    29463.889901593513,
                    29483.586506344855,
                    29450.849665973852,
                    29419.18812724747,
                    29480.155818276773,
                    29508.37551546861,
                    29450.81160984585,
                    29506.689812840963,
                    29256.560057633316,
                    29232.646939725095,
                    29305.82150765377,
                    29289.44786652117,
                    29284.816012011655,
                    28969.263939434662,
                    29207.560583349023,
                    29171.602642264108,
                    29290.86788395912,
                    29246.749875094854,
                    29208.510305463293,
                    29345.13311408781,
                    29345.54585317659,
                    29363.233844384402,
                    29396.302476790697,
                    29339.99499754935,
                    29260.123514292834,
                    29310.491387944214,
                    29404.055829728204,
                    29390.198031038413,
                    29393.75800481026,
                    29386.12248542495,
                    29345.952886572566,
                    29383.371083384794,
                    29337.840575697162,
                    29330.034944071744,
                    29301.619369859196,
                    29334.745935160332,
                    29323.53259391908,
                    29423.37034458687,
                    29369.652127997677,
                    29334.58475389978,
                    29310.669698767924,
                    29156.37098057197,
                    29199.192018079702,
                    29275.819489132315,
                    29246.92581242874,
                    29217.797612735347,
                    29240.17736925129,
                    29217.944046809913,
                    29191.506657997266,
                    29164.700764165646,
                    29188.891960689303,
                    29196.62882040389,
                    29223.310973883225,
                    29276.108913477685,
                    29297.557760171887,
                    29304.936378904236,
                    29283.490347075323,
                    29281.867356125804,
                    29235.08720835631,
                    29220.379573384813,
                    29269.01110839384,
                    29303.604571274605,
                    29440.282586791018,
                    29809.777245111778,
                    29738.619547451064,
                    29739.909871176587,
                    29656.712525700674,
                    29358.65872538205,
                    29348.7423117686,
                    29441.591555817897,
                    29400.03166363632,
                    29362.056213625394,
                    29305.597130735507,
                    28842.654479443805,
                    28595.976831538992,
                    28580.88076874382,
                    28552.261450541097,
                    28431.23932123237,
                    28598.795164199157,
                    28642.326585104187,
                    28616.77340607422,
                    28580.081949322015,
                    28560.37211812579,
                    28561.586978241772,
                    28620.46425358391,
                    28529.56502313481,
                    28472.791278383647,
                    28167.747949221648,
                    28385.38324568294,
                    28301.509742037444,
                    28171.60655909179,
                    27892.437319554825,
                    27740.332253000946,
                    28013.592969040943,
                    28007.360195708872,
                    28125.501155636823,
                    28099.747789189736,
                    28011.58808678877,
                    27999.89784922244,
                    28029.23641973025,
                    27974.18817870787,
                    28000.6177745973,
                    28002.239483655878,
                    28030.141380509038,
                    28043.644977077103,
                    27996.19326596321,
                    28024.76710826783
                ]),
            priceChangePercentage24HInCurrency: 1.0264153544549854,
            currentHoldings: 1.5)
}
