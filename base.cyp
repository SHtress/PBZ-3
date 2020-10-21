create 
(beretta92:weapon{name:'Beretta 92'}),
(browningHIP:weapon{name:'Browning HI-Power'}),
(m1911:weapon{name:'Colt 1911'}),
(lr300:weapon{name:'Z-M LR-300'}),
(g36:weapon{name:'HK Gewehr 36'}),
(acr:weapon{name:'Adaptive Combat Rifle'}),
(scout:weapon{name:'Steyr Scout'}),

(mm9x19:ammo{name:'9x19mm Parabellum'}),
(mm762x51:ammo{name:'7.62x51mm NATO'}),
(mm762x21:ammo{name:'7.62x21mm Parabellum'}),
(ponit45:ammo{name:'.45 Automatic Colt Pistol 11.43x23mm'}),
(point40:ammo{name:'.40 S&W'}),
(mm556x45:ammo{name:'5.56x45mm NATO'}),

(year1975:year{name: '1975'}),
(year1935:year{name: '1935'}),
(year1911:year{name: '1911'}),
(year2000:year{name: '2000'}),
(year1999:year{name: '1999'}),
(year2010:year{name: '2010'}),
(year1996:year{name: '1996'}),

(zeroNineFivekg:mass{name:'0.95 kg'}),
(onekg:mass{name:'1 kg'}),
(oneOnekg:mass{name:'1.1 kg'}),
(threeOnekg:mass{name:'3.1 kg'}),
(threeThreeSixkg:mass{name:'3.36 kg'}),
(threeSixkg:mass{name:'3.6 kg'}),
(threekg:mass{name:'3 kg'}),

(steyrMannlicher:company{name:'Steyr Mannlicher'}),
(bushmaster:company{name:'Bushmaster Firearms International, LLC'}),
(berettaGardone:company{name:'Beretta Gardone'}),
(fnHestral:company{name:'Fabrique Nationale '}),
(coltManufacturing:company{name:'Colt Manufacturing Company'}),
(zmweapons:company{name:'Z-M Weapons'}),
(hecklerKoch:company{name:'Heckler & Koch'}),

(beretta92)-[:supammo{name:'supported ammo'}]->(mm9x19),
(browningHIP)-[:supammo{name:'supported ammo'}]->(mm9x19),
(m1911)-[:supammo{name:'supported ammo'}]->(point40),
(lr300)-[:supammo{name:'supported ammo'}]->(mm556x45),
(g36)-[:supammo{name:'supported ammo'}]->(mm556x45),
(acr)-[:supammo{name:'supported ammo'}]->(mm556x45),
(scout)-[:supammo{name:'supported ammo'}]->(mm762x51),

(beretta92)-[:producer{name:'producer'}]->(berettaGardone),
(browningHIP)-[:producer{name:'producer'}]->(fnHestral),
(m1911)-[:producer{name:'producer'}]->(coltManufacturing),
(lr300)-[:producer{name:'producer'}]->(zmweapons),
(g36)-[:producer{name:'producer'}]->(hecklerKoch),
(acr)-[:producer{name:'producer'}]->(bushmaster),
(scout)-[:producer{name:'producer'}]->(steyrMannlicher),

(beretta92)-[:yearOfProducing{name:'in service since'}]->(year1975),
(browningHIP)-[:yearOfProducing{name:'in service since'}]->(year1935),
(m1911)-[:yearOfProducing{name:'in service since'}]->(year1911),
(lr300)-[:yearOfProducing{name:'in service since'}]->(year2000),
(g36)-[:yearOfProducing{name:'in service since'}]->(year1996),
(acr)-[:yearOfProducing{name:'in service since'}]->(year2010),
(scout)-[:yearOfProducing{name:'in service since'}]->(year1999)
