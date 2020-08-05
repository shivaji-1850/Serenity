

	import java.util.ArrayList;
	import java.util.List;
    import java.util.Set;
    import java.util.concurrent.TimeUnit;
    import javax.swing.plaf.synth.SynthOptionPaneUI;
    import org.openqa.selenium.By;
    import org.openqa.selenium.Dimension;
    import org.openqa.selenium.WebDriver;
    import org.openqa.selenium.WebElement;
    import org.openqa.selenium.chrome.ChromeDriver;
    import org.openqa.selenium.support.ui.Select;

    public class Condition01 {
           public static WebDriver Condition01 = null;
           public static ArrayList<String> MemberList=new ArrayList<String>();
                  public static void main(String[] args) throws InterruptedException {
                        //InputOutputStream IOS=new InputOutputStream();                     
                        //test data
                               String User = "qtpdr";
                               String Pdate = "2020Qtp!";
                               String ListBox[]= new String[3];
                               //Data
                               ListBox[0] = "condition_form:condition_masterCustormerSet";
                               ListBox[1] = "condition_form:condition_id";
                               ListBox[2] = "condition_form:condition_name";
                                //int ListData[]= new int[3];   /select  /td
                               String ListData[] = {"79","320","9047"};
 //                       
                        System.setProperty("webdriver.chrome.driver", "D:\\Eclipse\\chromedriver_win32\\chromedriver.exe");
                        Condition01= new ChromeDriver();
                        Condition01.navigate().to("https://dr1-int.rxtransaction.com/rxnova/");
                        Condition01.manage().window().maximize();
                        Condition01.findElement(By.id("loginForm:principal")).sendKeys(User);
                        Condition01.findElement(By.id("loginForm:credentials")).sendKeys(Pdate);
                        Condition01.findElement(By.id("loginForm:loginButton")).click();
                        Condition01.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
  //
                        Condition01.findElement(By.xpath("//*[text()='apps']")).click();
                        Thread.sleep(1000);
                        Condition01.findElement(By.linkText("Conditions")).click();
                        //Condition01.findElement(By.linkText("Member")).click();
                        Thread.sleep(4000);                        
                        Set<String> WindowHandles = Condition01.getWindowHandles();
 //
                        for(String hand:WindowHandles) {
                               Condition01.switchTo().window(hand);
                               String WindowTitle=Condition01.getTitle();                             
                               System.out.println(WindowTitle);
                        }
                        Condition01.switchTo().frame(0);
                        
                       //Thread.sleep(2000);
                        //Condition01.findElement(By.xpath("//*[@id='condition_form:condition_id']/ancestor::table//parent::div//child::table[1]//following-sibling::table[2]//td[3]")).sendKeys("abc");;
                        for (int i=0;i<3;i++) {
//                        WebElement MCS=Condition01.findElement(By.id(ListBox[i]));
//                        Select MCSList = new Select(MCS);
//                        MCSList.selectByValue(ListData[i]);
                        	ShowElementsText(ListBox[i]);
                        Thread.sleep(3000);
                        }      
                        
                        
                  }
                  private static void ShowElementsText(String ElementID){
                	  List<WebElement> Elements=Condition01.findElements(By.xpath("//*[@id='"+ElementID+"']/parent::td//parent::tr//following-sibling::td"));
                	  List<WebElement> ElementsFollow=Condition01.findElements(By.xpath("//*[@id='"+ElementID+"']/parent::td//following-sibling::Select"));
                	  List<WebElement> ElementsAncestor=Condition01.findElements(By.xpath("//*[@id='"+ElementID+"']/ancestor::table//following-sibling::table"));
                	  List<WebElement> ElementsSibling=Condition01.findElements(By.xpath("//*[@id='"+ElementID+"']/ancestor::tr//following-sibling::td"));
                	  for (WebElement i: Elements) {
                		  System.out.println("Parent Elements");
                		  System.out.println();
                		System.out.println(i.getText());
                	  }
                	  
                	  for (WebElement i: ElementsFollow) {
                		  System.out.println("Parent sibling Elements");
                		  System.out.println();
                  		System.out.println(i.getText());
                  	  }
                	  
                	  for (WebElement i: ElementsAncestor) {
                		  System.out.println("Ancestor Elements");
                		  System.out.println();
                    		System.out.println(i.getText());
                    	  }
                  	  
                	  for (WebElement i: ElementsSibling) {
                		  System.out.println("Sibling Elements");
                		  System.out.println();
                    		System.out.println(i.getText());
                    	  }
                  	  
                	  
                	  
                  }
                  
    }
                  