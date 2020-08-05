import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import com.sun.org.apache.bcel.internal.generic.Select;

public class MemberPage {

	public static WebDriver Member01 = null;
		public static void main(String[] args) throws InterruptedException {
			//InputOutputStream IOS=new InputOutputStream();			
			//test data
				String User = "qtpdr";
				String Pdate = "2019Qtp$";
				String ListBox[]= new String[3];
				//Data
				ListBox[0] = "memberTabView:memberSearchForm:customerSetSelection";
				ListBox[1] = "memberTabView:memberSearchForm:customerNumber";
				ListBox[2] = "memberTabView:memberSearchForm:clientId";
				//int ListData[]= new int[3];
				String ListData[] = {"314","1427","1"};
			
			System.setProperty("webdriver.chrome.driver", "D:\\Selenium Web Driver Lib\\Chrome Driver\\chromedriver.exe");
			Member01= new ChromeDriver();
			Member01.navigate().to("https://dr1-int.rxtransaction.com/rxnova/");
			Member01.manage().window().maximize();
			Member01.findElement(By.id("loginForm:principal")).sendKeys(User);
			Member01.findElement(By.id("loginForm:credentials")).sendKeys(Pdate);
			Member01.findElement(By.id("loginForm:loginButton")).click();
			Member01.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
			

			Member01.findElement(By.xpath("//*[text()='apps']")).click();
			Member01.findElement(By.linkText("Member")).click();
			Thread.sleep(5000);
			
			Set<String> WindowHandles = Member01.getWindowHandles();
			//System.out.println("Windowhandles are "+ WindowHandles);
			for(String hand:WindowHandles) {
				Member01.switchTo().window(hand);
				String WindowTitle=Member01.getTitle();
				
				System.out.println(WindowTitle);

			}
			Member01.switchTo().frame(0);

			for (int i=0;i<3;i++) {
			WebElement MCS=Member01.findElement(By.id(ListBox[i]));
			Select MCSList = new Select(MCS);
			MCSList.selectByValue(ListData[i]);
			Thread.sleep(5000);
			}	
			Member01.findElement(By.id("memberTabView:memberSearchForm:memberName")).sendKeys("A");
			//System.out.println(Member01.findElement(By.id("memberTabView:memberSearchForm:exactMatchForMemberId_input")).isSelected());
			//Member01.findElement(By.xpath("//*[text()='Exact Match']")).click();
			//System.out.println(Member01.findElement(By.id("memberTabView:memberSearchForm:exactMatchForMemberId_input")).isSelected());
			Member01.findElement(By.xpath("//*[text()='Search']")).click();
			Thread.sleep(3000);
			//*[@id="memberTabView:memberSearchResultForm:memberSearchResultTable_data"]/tr[1]/td[2]
			//*[@id="memberTabView:memberSearchResultForm:memberSearchResultTable:j_idt212"]
//			String MmeberID =Member01.findElement(By.xpath("//*[@id=\"memberTabView:memberSearchResultForm:memberSearchResultTable_data\"]/tr[1]/td[2]")).getText();
//			List <WebElement> cols = Member01.findElements(By.xpath("//*[@id=\"memberTabView:memberSearchResultForm:memberSearchResultTable_data\"]/tr"));
//			List <WebElement> rows = Member01.findElements(By.xpath("//*[@id=\"memberTabView:memberSearchResultForm:memberSearchResultTable_data\"]/tr[1]/td"));
//			System.out.println(MmeberID +" "+cols.size() +" " + rows.size());
//			Dimension colsd = Member01.findElement(By.xpath("//*[@id=\"memberTabView:memberSearchResultForm:memberSearchResultTable_data\"]/tr")).getSize();
//			Dimension rowsd =Member01.findElement(By.xpath("//*[@id=\"memberTabView:memberSearchResultForm:memberSearchResultTable_data\"]/tr[1]/td")).getSize();
//			System.out.println(MmeberID +" "+colsd +" " + rowsd);
			Member01.findElement(By.xpath("//*[@id=\"memberTabView:memberSearchResultForm:memberSearchResultTable_data\"]/tr[1]/td[2]")).click();
			Thread.sleep(8000);
//			ExpandPanel("partDProgram",true);
//			ExpandPanel("addressInfo",true);
//			radioButtonValidation("memberViewUpdateForm:memberView:viewAddressRadioButton:1",true);
//			radioButtonValidation("memberViewUpdateForm:memberView:viewAddressRadioButton:1",true);	
//			radioButtonValidation("memberViewUpdateForm:memberView:partDProgramRadioViewForRibbon:2",true);	
//			ExpandPanel("partDProgram",false);	
//			ExpandPanel("addressInfo",true);
			
			
//			List <WebElement> Buttons= Member01.findElements(By.tagName("button"));
//			List <WebElement> tabs= Member01.findElements(By.xpath("//*[@role='tab']"));
//			List <WebElement> Panels= Member01.findElements(By.xpath("//*[@class='ui-panel-title']"));
//			List <WebElement> Links= Member01.findElements(By.tagName("span"));
//			PrintElements(Buttons);
//			PrintElements(tabs);
//			PrintElements(Panels);
//			PrintElements(Links);
			
//			System.out.println(Member01.findElements(By.xpath("//*/*/*/*/*/*/*/*/*/*")).size());
//			System.out.println(Member01.findElements(By.xpath("//*/*/*/*")).size());
//			System.out.println(Member01.findElements(By.xpath("//*")).size());
//			System.out.println(Member01.findElements(By.xpath("//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*")).size());
			
			StringBuffer xpath = new StringBuffer("//*");  
			for (int c=0;c<20;c++) {
				List <WebElement> All= Member01.findElements(By.xpath(xpath.toString()));
				System.out.println(All.size());
				for (WebElement i:All) {
					System.out.println(i.getText());
					if ((i.getText() == "Copy")&&(i.getTagName()=="button")) {
						i.click();
						break;
					}
					
				}	
				xpath.append("/*");
			}
			//PrintElements(All);
			
		}

		public static void ExpandPanel(String panelID1 ,boolean expand) throws InterruptedException {
			// TODO Auto-generated method stub
			String panelID=("memberViewUpdateForm:memberView:" +panelID1+"Panel_toggler");
			
			WebElement PanelName= Member01.findElement(By.id(panelID));
			if (expand &&(PanelName.findElement(By.xpath("//*[@class='ui-icon ui-icon-plusthick']")).isDisplayed())) {
				PanelName.click();	
				Thread.sleep(10000);
				System.out.println("panel is expanded " + expand);
			}
			else {
				System.out.println("panel is already expanded " + expand);
			}
			}	

		public static void radioButtonValidation(String ID,boolean on ) throws InterruptedException {
			
			
			
			WebElement PanelName= Member01.findElement(By.id(ID));
			System.out.println(PanelName.isDisplayed());
			System.out.println(PanelName.isEnabled());
			System.out.println(PanelName.isSelected());
			if (on==(!PanelName.isSelected())){
				PanelName.click();
				Thread.sleep(10000);
				System.out.println("Radio buttion is changed " + on);
			}
			else {
				System.out.println("Radio buttion is already " + on);
			}
		}
		
		public static void PrintElements(List<WebElement> elements) { 
		for (WebElement i:elements) {
			System.out.println(i.getText());
			if ((i.getText() == "Copy")&&(i.getTagName()=="button")) {
				i.click();
				break;
			}
		}
		}
		

}

