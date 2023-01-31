@smoke
  Feature: US1009 Yanlis kullanici adi ve password ile negatif login testi

    Scenario Outline: TC14 Yanlis kullanici listesi ile giris yapilmamali

      Given kullanici "qdUrl" anasayfaya gider
      Then ilk sayfa login linkine click yapar
      And cookies kabul eder
      And kullanici kutusuna manuel olarak "<yanlisUsername>" yazar
      And password kutusuna manuel olarak "<yanlisPassword>" yazar
      And 3 saniye bekler
      And login butonuna basar
      And giris yapilamadigini test eder
      Then sayfayi kapatir

      Examples:
      |yanlisUsername   |yanlisPassword|
      |ilker            |ilker@a.com   |
      |mehmet           |mehmet@.com   |
      |yasar            |yasar@c.com   |
      |Adem             |adem@d.com    |
      |ozgur            |ozgur@.com    |