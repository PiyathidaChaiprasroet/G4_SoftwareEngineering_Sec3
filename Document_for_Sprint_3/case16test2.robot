*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost:8080/th/
${BROWSER}  Chrome
*** Test Cases ***
Open browser
    Open Browser  ${URL}  ${BROWSER}
Try changing languages (home-eng)
    Click Link  http://localhost:8080/gb/
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Contact us
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  CLOTHES
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  ACCESSORIES
    ${result}  GET Text  //*[@id="content"]/section[1]/h2
    Should Be Equal  ${result}  POPULAR PRODUCTS
    ${result}  GET Text  //*[@id="content"]/section[1]/div/div[1]/article/div/div[2]/h3/a
    Should Be Equal  ${result}  COLLEGE OF COMPUTING PRINTED HOODIE
    Mouse Over  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/a/picture/img
    Wait Until Element Is Visible  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/div/a
    ${result}  GET Text  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/div/a
    Should Be Equal  ${result}   Quick view
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Delivery
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Contact us
Try changing languages (home-th)
    Click Link  http://localhost:8080/th/
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  ติดต่อเรา
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  เสื้อผ้า
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  อุปกรณ์เสริม
    ${result}  GET Text  //*[@id="content"]/section[1]/h2
    Should Be Equal  ${result}  สินค้ายอดนิยม
    ${result}  GET Text  //*[@id="content"]/section[1]/div/div[1]/article/div/div[2]/h3/a
    Should Be Equal  ${result}  เสื้อฮู้ดพิมพ์ลาย วิทยาลัยการคอมพิวเตอร์
    Mouse Over  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/a/picture/img
    Wait Until Element Is Visible  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/div/a
    ${result}  GET Text  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/div/a
    Should Be Equal  ${result}   เปิดหน้าต่างย่อ
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  การจัดส่ง
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  ติดต่อเรา
Try changing languages (home-indo)
    Click Link  http://localhost:8080/id/
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Hubungi kami
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  PAKAIAN
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  AKSESORIS
    ${result}  GET Text  //*[@id="content"]/section[1]/h2
    Should Be Equal  ${result}  POPULER
    ${result}  GET Text  //*[@id="content"]/section[1]/div/div[1]/article/div/div[2]/h3/a
    Should Be Equal  ${result}  HOODIE CETAK COLLEGE OF COMPUTING
    Mouse Over  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/a/picture/img
    Wait Until Element Is Visible  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/div/a
    ${result}  GET Text  //*[@id="content"]/section[1]/div/div[1]/article/div/div[1]/div/a
    Should Be Equal  ${result}   Lihat sekilas
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Pengiriman
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Hubungi kami
Change page to Clothes while in indonesia
    Click Element  id:category-3
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Hubungi kami
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  PAKAIAN
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  AKSESORIS
    ${result}  GET Text  //*[@id="js-product-list-header"]/div/h1
    Should Be Equal  ${result}  PAKAIAN
    ${result}  GET Text  //*[@id="subcategories"]/h2
    Should Be Equal  ${result}  Sub kategori
    ${result}  GET Text  //*[@id="search_filters"]/p
    Should Be Equal  ${result}  FILTER BERDASARKAN
    ${result}  GET Text  //*[@id="search_filters"]/section[5]/p
    Should Be Equal  ${result}  Ukuran
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Pengiriman
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Hubungi kami
Change to english in clothe page
    Click Link  http://localhost:8080/gb/3-clothes
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Contact us
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  CLOTHES
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  ACCESSORIES
    ${result}  GET Text  //*[@id="js-product-list-header"]/div/h1
    Should Be Equal  ${result}  CLOTHES
    ${result}  GET Text  //*[@id="subcategories"]/h2
    Should Be Equal  ${result}  Subcategories
    ${result}  GET Text  //*[@id="search_filters"]/p
    Should Be Equal  ${result}  FILTER BY
    ${result}  GET Text  //*[@id="search_filters"]/section[5]/p
    Should Be Equal  ${result}  Size
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Delivery
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Contact us
Change to thai in clothe page
    Click Link  http://localhost:8080/th/3-clothes
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  ติดต่อเรา
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  เสื้อผ้า
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  อุปกรณ์เสริม
    ${result}  GET Text  //*[@id="js-product-list-header"]/div/h1
    Should Be Equal  ${result}  เสื้อผ้า
    ${result}  GET Text  //*[@id="subcategories"]/h2
    Should Be Equal  ${result}  หมวดย่อย
    ${result}  GET Text  //*[@id="search_filters"]/p
    Should Be Equal  ${result}  กรองตาม
    ${result}  GET Text  //*[@id="search_filters"]/section[5]/p
    Should Be Equal  ${result}  ขนาด
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  การจัดส่ง
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  ติดต่อเรา
Change page to Accessories while in thai
    Click Element  id:category-6
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  ติดต่อเรา
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  เสื้อผ้า
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  อุปกรณ์เสริม
    ${result}  GET Text  //*[@id="js-product-list-header"]/div/h1
    Should Be Equal  ${result}  อุปกรณ์เสริม
    ${result}  GET Text  //*[@id="subcategories"]/h2
    Should Be Equal  ${result}  หมวดย่อย
    ${result}  GET Text  //*[@id="search_filters"]/p
    Should Be Equal  ${result}  กรองตาม
    ${result}  GET Text  //*[@id="search_filters"]/section[3]/p
    Should Be Equal  ${result}  ราคา
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  การจัดส่ง
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  ติดต่อเรา
Change to indo in Accessories
    Click Link  http://localhost:8080/id/6-accessories
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Hubungi kami
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  PAKAIAN
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  AKSESORIS
    ${result}  GET Text  //*[@id="js-product-list-header"]/div/h1
    Should Be Equal  ${result}  PAKAIAN
    ${result}  GET Text  //*[@id="subcategories"]/h2
    Should Be Equal  ${result}  Sub kategori
    ${result}  GET Text  //*[@id="search_filters"]/p
    Should Be Equal  ${result}  FILTER BERDASARKAN
    ${result}  GET Text  //*[@id="search_filters"]/section[3]/p
    Should Be Equal  ${result}  Harga
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Pengiriman
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Hubungi kami
Change to English in Accessories
    Click Link  http://localhost:8080/gb/6-accessories
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Contact us
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  CLOTHES
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  ACCESSORIES
    ${result}  GET Text  //*[@id="js-product-list-header"]/div/h1
    Should Be Equal  ${result}  CLOTHES
    ${result}  GET Text  //*[@id="subcategories"]/h2
    Should Be Equal  ${result}  Subcategories
    ${result}  GET Text  //*[@id="search_filters"]/p
    Should Be Equal  ${result}  FILTER BY
    ${result}  GET Text  //*[@id="search_filters"]/section[3]/p
    Should Be Equal  ${result}  Prize
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Delivery
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Contact us
Go back to first page while in english
    Click Element  id:_desktop_logo
    Click image  http://localhost:8080/1-home_default/COLLEGE-OF-COMPUTING-PRINTED-HOODIE.jpg
Chainging languages in item desc page
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Contact us
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  CLOTHES
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  ACCESSORIES
    ${result}  GET Text  //*[@id="main"]/div[1]/div[2]/h1
    Should Be Equal  ${result}  COLLEGE OF COMPUTING PRINTED HOODIE
    ${result}  GET Text  //*[@id="add-to-cart-or-refresh"]/div[2]/div/div[2]/button
    Should Be Equal  ${result}  ADD TO CART
    ${result}  GET Text  //*[@id="main"]/div[1]/div[2]/div[2]/div[4]/ul/li[1]/a
    Should Be Equal  ${result}  Description
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Delivery
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Contact us
Chainging languages to th in item desc page
    Click Link  http://localhost:8080/th/men/1-COLLEGE-OF-COMPUTING-PRINTED-HOODIE.html
   ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  ติดต่อเรา
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  เสื้อผ้า
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  อุปกรณ์เสริม
    ${result}  GET Text  //*[@id="main"]/div[1]/div[2]/h1
    Should Be Equal  ${result}  เสื้อฮู้ดพิมพ์ลาย วิทยาลัยการคอมพิวเตอร์
    ${result}  GET Text  //*[@id="add-to-cart-or-refresh"]/div[2]/div/div[2]/button
    Should Be Equal  ${result}  หยิบใส่ในตะกร้า
    ${result}  GET Text  //*[@id="main"]/div[1]/div[2]/div[2]/div[4]/ul/li[1]/a
    Should Be Equal  ${result}  รายละเอียด
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  การจัดส่ง
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  ติดต่อเรา
Chainging languages to indo in item desc page
    Click Link  http://localhost:8080/id/men/1-COLLEGE-OF-COMPUTING-PRINTED-HOODIE.html
    ${result}  GET Text  //*[@id="contact-link"]/a
    Should Be Equal  ${result}  Hubungi kami
    ${result}  GET Text  //*[@id="category-3"]/a
    Should Be Equal  ${result}  PAKAIAN
    ${result}  GET Text  //*[@id="category-6"]/a
    Should Be Equal  ${result}  AKSESORIS
    ${result}  GET Text  //*[@id="main"]/div[1]/div[2]/h1
    Should Be Equal  ${result}  HOODIE CETAK COLLEGE OF COMPUTING
    ${result}  GET Text  //*[@id="add-to-cart-or-refresh"]/div[2]/div/div[2]/button
    Should Be Equal  ${result}  BELI
    ${result}  GET Text  //*[@id="main"]/div[1]/div[2]/div[2]/div[4]/ul/li[1]/a
    Should Be Equal  ${result}  Keterangan
    ${result}  GET Text  //*[@id="link-cms-page-1-2"]
    Should Be Equal  ${result}  Pengiriman
    ${result}  GET Text  //*[@id="link-static-page-contact-2"]
    Should Be Equal  ${result}  Hubungi kami