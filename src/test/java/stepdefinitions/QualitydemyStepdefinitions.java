package stepdefinitions;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import pages.QualitydemyPage;
import utilities.ConfigReader;
import utilities.Driver;


public class QualitydemyStepdefinitions {

    QualitydemyPage qualitydemyPage= new QualitydemyPage();

    @Then("ilk sayfa login linkine click yapar")
    public void ilk_sayfa_login_linkine_click_yapar() {
        qualitydemyPage.ilkLoginLinki.click();
    }

    @Then("password kutusuna {string} yazar")
    public void password_kutusuna_yazar(String istenenPassword) {

        qualitydemyPage.passwordKutusu.sendKeys(ConfigReader.getProperty(istenenPassword));
    }
    @Then("login butonuna basar")
    public void login_butonuna_basar() {

        qualitydemyPage.loginButonu.click();
    }
    @Then("basarili giris yapildigini test eder")
    public void basarili_giris_yapildigini_test_eder() {

        Assert.assertTrue(qualitydemyPage.basariliGirisCoursesLinki.isDisplayed());
    }

    @And("giris yapilamadigini test eder")
    public void girisYapilamadiginiTestEder() {

        Assert.assertTrue(qualitydemyPage.kullaniciEmailKutusu.isDisplayed());
    }

    @And("kullanici kutusuna manuel olarak {string} yazar")
    public void kullaniciKutusunaManuelOlarakYazar(String username) {

        qualitydemyPage.kullaniciEmailKutusu.sendKeys(username);

    }

    @And("password kutusuna manuel olarak {string} yazar")
    public void passwordKutusunaManuelOlarakYazar(String password) {
        qualitydemyPage.passwordKutusu.sendKeys(password);
    }

    @And("cookies kabul eder")
    public void cookiesKabulEder() {
        qualitydemyPage.cookiesKabul.click();
    }

    @Then("kullanici accept kabul eder")
    public void kullaniciAcceptKabulEder() {
        qualitydemyPage.cookiesKabul.click();
    }

    @And("kullanici kutusuna  {string} yazar")
    public void kullaniciKutusunaYazar(String istenenUsername) {
        qualitydemyPage.kullaniciEmailKutusu.sendKeys(ConfigReader.getProperty(istenenUsername));
    }
}
