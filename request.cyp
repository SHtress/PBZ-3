match (n:weapon) return n

match (n:weapon) where (n)-[]->(:year{name:'1911') return n

match (m:weapon {name:'Beretta 92'})-[:supammo]->(n:ammo) return n

match (m:weapon {name:'Beretta 92'})-[:supammo]->(n:ammo)<-[:supammo]-(g:weapon) return g

match (m:company)<-[]-(n) return m,n

match (m:weapon)-[]->(:ammo{name:'5.56x45mm NATO'}) return m 

match (m:weapon{name:'Adaptive Combat Rifle'})-[]->(g:company) return g

match (m:weapon)-[:producer]->(n:company{name:'Heckler & Koch'}) return m,n

match (n1:weapon)-[:supammo]->(a:ammo{name:'5.56x45mm NATO'}), (n1:weapon)-[:yearOfProducing]->(y:year{name:'1996'}) return n1

match (n:year) return n order by n.name desc
