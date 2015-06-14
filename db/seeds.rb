Image.create!([
  {url: "https://celiackiddo.files.wordpress.com/2013/11/img_3072.jpg", product_id: 1},
  {url: "http://www.studentsoftheworld.info/sites/society/img/23400_purple%20hippo.jpg", product_id: 2},
  {url: "https://farm9.staticflickr.com/8603/16243656449_1f5c1534c6.jpg", product_id: 3},
  {url: "http://fc05.deviantart.net/fs70/f/2010/012/5/b/Unicorn_Horns_Made_Easy____by_Pirkleations.jpg", product_id: 4},
  {url: "http://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/614/offlinehbpl.hbpl.co.uk/news/ORP/sasquatch_69461.jpg", product_id: 5},
  {url: "https://classicallydiverted.files.wordpress.com/2013/08/fairy-dust.jpg", product_id: 6},
  {url: "http://oyster.ignimgs.com/wordpress/stg.ign.com/2015/04/90287-720x405.jpg", product_id: 7},
  {url: "http://fc04.deviantart.net/fs70/i/2014/036/7/1/cthulhu___guerra_de_mitos_by_hectorherrera-d756h7x.jpg", product_id: 8},
  {url: "http://theinspirationroom.com/daily/print/2008/11/angel-hair-little-valentina.jpg", product_id: 9},
  {url: "http://sewingnetwork.net/promo/images/samples/hippo.jpg", product_id: 2},
  {url: "http://i77.photobucket.com/albums/j79/sohopixie6/mar08/fin_cabin.jpg", product_id: 3},
  {url: "http://i77.photobucket.com/albums/j79/sohopixie6/mar08/cabinseam2.jpg", product_id: 3},
  {url: "http://mydisguises.com/wp-content/uploads/2010/12/il_570xN_193428290.jpg", product_id: 4},
  {url: "http://s4.thcdn.com/productimg/0/600/600/03/10864103-1386007068-258016.jpg", product_id: 4}
])
Order.create!([
  {user_id: 1, product_id: 2, quantity: 4, total_price: "109.0", subtotal_price: "100.0", tax: "9.0"},
  {user_id: 1, product_id: 4, quantity: 2, total_price: nil, subtotal_price: nil, tax: nil},
  {user_id: 1, product_id: 4, quantity: 2, total_price: nil, subtotal_price: nil, tax: nil},
  {user_id: 1, product_id: 4, quantity: 2, total_price: "5441.0", subtotal_price: "4991.0", tax: "449.0"},
  {user_id: 1, product_id: 3, quantity: 2, total_price: "93.63", subtotal_price: "85.9", tax: "7.73"}
])
Product.create!([
  {name: "Wyrm Food", price: "58.95", description: "This food will keep your wyrm happy, healthy, and growing, without the urge to devour any local sailors.", in_stock: true, supplier_id: 1},
  {name: "Purple Hippo Plushie", price: "25.0", description: "This plush mascot is cuddly and soft, perfect for a child or baby, unlike most of our dangerous, animal-oriented products.", in_stock: true, supplier_id: 3},
  {name: "Bandersnatch Quilt", price: "42.95", description: "Though they may be dark and fearsome, bandersnatches also get cold! This quilt will keep your personal demon warm in the winter.", in_stock: true, supplier_id: 2},
  {name: "Unicorn Horn", price: "2495.9", description: "Don't worry. This unicorn horn was sustainably harvested from a free-range magical equine. No unicorns were harmed in the making of this product.", in_stock: true, supplier_id: 1},
  {name: "Sasquatch Jerky", price: "5.99", description: "This jerky will soothe your save sasquatch. That's not a metaphor. It will make a savage sasquatch calm. It's for nothing else. Humans should not consume this.", in_stock: true, supplier_id: 1},
  {name: "Fairy Dust", price: "22.99", description: "If you've got the happy thoughts, we've got the dust! Just sprinkle a little over your head, remember Spring Break '03, and off you go. Warning: May cause metamorphosis into toad form for those not pure of heart.", in_stock: true, supplier_id: 1},
  {name: "THIS THING", price: "741.46", description: "IT'S A THING!", in_stock: true, supplier_id: 2},
  {name: "Man Body for Kraken", price: "2037.0", description: "Get your kraken up, out, and about, with this handy-dandy man body. Your kraken will look cool, strong, and beach-ready.", in_stock: true, supplier_id: 2},
  {name: "Angel Hair", price: "3.49", description: "Great for making pasta! Also for hair extensions or blessing your first born.", in_stock: true, supplier_id: 1}
])
Supplier.create!([
  {supplier_name: "Wizards of the Most", supplier_email: "info@wotm.com", supplier_phone_number: "(800)555-5555"},
  {supplier_name: "Magiccessories for It", supplier_email: "stephanne@magiccessories.com", supplier_phone_number: "(800)555-5556"},
  {supplier_name: "HippoCrates", supplier_email: "sales@hippocrates.com", supplier_phone_number: "(800)555-5557"},
  {supplier_name: "KrakenLikin'", supplier_email: "knlsale@krakenliken.com", supplier_phone_number: "(800)555-5558"},
  {supplier_name: "Angel Pieces Purveyors, LLC", supplier_email: "betsy@angelpiece.com", supplier_phone_number: "(800)555-5559"}
])
