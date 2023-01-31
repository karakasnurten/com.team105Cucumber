
  Feature: US1004 Kullanici bastaki ortak adimlar icin Background kullanir


  Background: Tum scenerio'lar icin ortak ilk adim
    Given kullanici amazon anasayfaya gider
    Scenario: TC04 Kullanici Parametreli method ile Java aratir

  Then amazon arama kutusuna "Nutella" yazip aratir
  And arama sonuclarinin "Nutella" icerdigini test eder
  And sayfayi kapatir



      Given kullanici amazon anasayfaya gider
      Then amazon arama kutusuna "Java" yazip aratir
      And arama sonuclarinin "Java" icerdigini test eder
      And 3 saniye bekler
      And sayfayi kapatir

    Scenario: TC05 Kullanici Parametreli method ile Samsung  aratir

      Given kullanici amazon anasayfaya gider
      Then amazon arama kutusuna "Samsung" yazip aratir
      And arama sonuclarinin "Samsung" icerdigini test eder
      And sayfayi kapatir