

  Feature: US1008 Outline ile birden fazla data ile test calistirma

    Scenario Outline: TC13 Scenario Outline ile amazonda arama yapabilmeli

      # Amazon anasayfaya gidelim. Nutella, Java, Samsung ve Apple icin arama yapip


      Given kullanici "amazonUrl" anasayfaya gider
      Then amazon arama kutusuna "<arananUrun>" yazip aratir
      And arama sonuclarinin "<arananUrun>" icerdigini test eder
      Then sayfayi kapatir


      Examples:
      |arananUrun|
      |Nutella   |
      |Java      |
      |Samsung   |
      |Apple     |
