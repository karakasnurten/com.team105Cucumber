

  Feature: US1010 kullanici Scenario Outline ile Editor sayfasinda kayit olusturur
@smoke

    Scenario Outline: TC15 Editor sayfasinda birden fazla kayit olusturabilmeli

      When kullanici "editorUrl" anasayfaya gider
      Then new butonuna basar
      And First name kutusuna "<firstName>" yazar
      And Last name kutusuna "<lastName>" yazar
      And position kutusuna "<position>" yazar
      And Office kutusuna "<office>" yazar
      And Extension kutusuna "<Extension>" yazar
      And Start date kutusuna "<startDate>" yazar
      And Salary kutusuna "salary" yazar
      And Create tusuna basar
      When kullanici "<firstname>" ile arama yapar
      Then isim bolumunde "<firstName>" oldugunu dogrular
      And 3 saniye bekler
      Then sayfayi kapatir

      Examples:
      |firstName |lastName |position |office |Extension |starDate  |salary |
      |Ilker     |Bulut    |QA       |Istanbul|levent   |2021-01-01|20000  |
      |Ramazan   |Can      |QA  lead |Ankara  |Kizilay  |2021-05-01|25000  |
      |Sule      |Saglam   |Test Lead|Izmir   |Konak    |2021-04-01|23000  |
      |Yasar     |u        |QA       |Istanbul|Kadikoy  |2021-03-01|25000  |
      |Meryem    |Toprak   |QA  Lead |Istanbul|levent   |2021-11-1 |25000  |