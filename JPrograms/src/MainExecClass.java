import org.openqa.selenium.By;  
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

import java.util.concurrent.TimeUnit;
import java.util.Set;

public class MainExecClass {
    //public String User = "qtpdr";
	public static void main(String[] args) throws InterruptedException {
		//InputOutputStream IOS=new InputOutputStream();

		
		//test data

			String User = "qtpdr";
			String Pdate = "2019Qtp$";

		
		
		System.setProperty("webdriver.chrome.driver", "D:\\Selenium Web Driver Lib\\Chrome Driver\\chromedriver.exe");
		WebDriver Druglist01= new ChromeDriver();
		Druglist01.navigate().to("https://dr1-int.rxtransaction.com/rxnova/");
		Druglist01.manage().window().maximize();
		Druglist01.findElement(By.id("loginForm:principal")).sendKeys(User);
		Druglist01.findElement(By.id("loginForm:credentials")).sendKeys(Pdate);
		Druglist01.findElement(By.id("loginForm:loginButton")).click();
		Druglist01.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		

		Druglist01.findElement(By.xpath("//*[text()='apps']")).click();
		Druglist01.findElement(By.linkText("Drug List")).click();
		Thread.sleep(5000);
		
		Set<String> WindowHandles = Druglist01.getWindowHandles();
		//System.out.println("Windowhandles are "+ WindowHandles);
		for(String hand:WindowHandles) {
			Druglist01.switchTo().window(hand);
			String WindowTitle=Druglist01.getTitle();
			
			System.out.println(WindowTitle);

		}
		Druglist01.switchTo().frame(0);
		System.out.println(Druglist01.findElement(By.name("drugListSearch_tabView:drugListSearch_DrugListTab_form:customerSet")).isDisplayed());
		//Druglist01.findElement(By.id("drugListSearch_tabView:drugListSearch_DrugListTab_form:customerSet")).
		Druglist01.findElement(By.name("drugListSearch_tabView:drugListSearch_DrugListTab_form:customerSet")).click();
		WebElement BCSCustSet = Druglist01.findElement(By.name("drugListSearch_tabView:drugListSearch_DrugListTab_form:customerSet"));
		WebElement DLtype = Druglist01.findElement(By.id("drugListSearch_tabView:drugListSearch_DrugListTab_form:drugType"));		
		Select	dropdownBCS = new Select(BCSCustSet);
		Select dropdownDL = new Select(DLtype);
		dropdownBCS.selectByVisibleText("QTP_Benefits");
		dropdownDL.selectByIndex(2);
		Druglist01.findElement(By.id("drugListSearch_tabView:drugListSearch_DrugListTab_form:drugListName")).sendKeys("Flp1234");
		//Druglist01.findElement(By.id("drugListSearch_tabView:drugListSearch_DrugListTab_form:btnSearch")).click();
		//Druglist01.findElement(By.linkText("Logout")).click();
		//Druglist01.close();
		
	}
	
}
