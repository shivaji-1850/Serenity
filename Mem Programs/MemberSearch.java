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

    public class MemberSearch {
           public static WebDriver Member01 = null;
           public static ArrayList<String> MemberList=new ArrayList<String>();
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
                               String ListData[] = {"79","320","9047"};
 //                       
                        System.setProperty("webdriver.chrome.driver", "D:\\Eclipse\\chromedriver_win32\\chromedriver.exe");
                        Member01= new ChromeDriver();
                        Member01.navigate().to("https://dr1-int.rxtransaction.com/rxnova/");
                        Member01.manage().window().maximize();
                        Member01.findElement(By.id("loginForm:principal")).sendKeys(User);
                        Member01.findElement(By.id("loginForm:credentials")).sendKeys(Pdate);
                        Member01.findElement(By.id("loginForm:loginButton")).click();
                        Member01.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
  //
                        Member01.findElement(By.xpath("//*[text()='apps']")).click();
                        Thread.sleep(1000);
                        //Member01.findElement(By.linkText("Condition")).click();
                        Member01.findElement(By.linkText("Member")).click();
                        Thread.sleep(4000);                        
                        Set<String> WindowHandles = Member01.getWindowHandles();
 //
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
                        Thread.sleep(3000);
                        }      
                         Member01.findElement(By.id("memberTabView:memberSearchForm:memberId")).sendKeys("A");
                        Member01.findElement(By.xpath("//*[text()='Search']")).click();
                        Thread.sleep(3000);
                        //SearchMember("99387717802");
                        SearchMembersbyText("01/01/1950");
                        Thread.sleep(2000);  
                        OpenMemberAndGetData(MemberList);
                  }
  //
                  public static void SearchMember(String MemberID) throws InterruptedException {
                        
                        while (Member01.findElement(By.xpath("//*[@id='memberTabView:memberSearchResultForm:memberSearchResultTable_data']/tr[1]/td[2]")).isDisplayed()) {

                       List <WebElement> Memebers = Member01.findElements(By.xpath("//*[@id='memberTabView:memberSearchResultForm:memberSearchResultTable_data']/tr/td[2]"));
                        for (WebElement ID : Memebers) {
                               //System.out.println(ID.getText());
                                if(MemberID.equalsIgnoreCase(ID.getText())) {
                                      ID.click();
                                      Thread.sleep(3000);      
                               break; 
                               }
                               
                                                                                                             }
                      WebElement NextLink = Member01.findElement(By.xpath("//*[text()='Next>']"));
                        if (NextLink.getAttribute("class").equalsIgnoreCase("ml10 claim-result-paging-link")) {
                  //Member01.findElement(By.xpath("//*[class='ml10 claim-result-paging-link']")).getText()) == "Next"
                               break;}
                        else
                               Member01.findElement(By.xpath("//*[text()='Next>']")).click();
                               Thread.sleep(4000);
                        }
    }
//
    public static void SearchMembersbyText(String DOB) throws InterruptedException {
        while (Member01.findElement(By.xpath("//*[@id='memberTabView:memberSearchResultForm:memberSearchResultTable_data']/tr[1]/td[1]")).isDisplayed()) {
       List <WebElement> Memebers = Member01.findElements(By.xpath("//*[@id='memberTabView:memberSearchResultForm:memberSearchResultTable_data']/tr"));
        for (WebElement ID1 : Memebers) {
               //System.out.println(ID1.getText());
                if((ID1.getText().contains(DOB))) {
                	//MemberList.add(ID1.findElement(By.xpath("//*/td[2]")).getText()); 
                	// System.out.println(ID1.findElement(By.xpath("//td[2]")).getText());                 	
                	List <WebElement> Rows = ID1.findElements(By.tagName("td"));
                	MemberList.add(Rows.get(1).getText());
                	/*for (WebElement ID2 : Rows) {
                		System.out.println(ID2.getText());
                	}*/
                	//ID1.findElement(By.tagName("td"))
               //break; 
               }      
         }
      WebElement NextLink = Member01.findElement(By.xpath("//*[text()='Next>']"));
        if (NextLink.getAttribute("class").equalsIgnoreCase("ml10 claim-result-paging-link")) {
               break;}
        else
               Member01.findElement(By.xpath("//*[text()='Next>']")).click();
               Thread.sleep(4000);
        }
    }
////xpath("//*[text()='Member Home']")).click();
    public static void OpenMemberAndGetData(ArrayList<String> DataList) throws InterruptedException {
    for(String MemberID1:DataList) {
    System.out.println(MemberID1);
    Member01.findElement(By.xpath("//*[text()='Search']")).click();
    Thread.sleep(3000);
    SearchMember(MemberID1);
    String Data1 = Member01.findElement(By.xpath("//*[@id='memberViewUpdateForm:memberHeaderSummaryPanel']/tbody/tr[2]")).getText() + Member01.findElement(By.xpath("//*[@id='memberViewUpdateForm:memberHeaderDatePanel']/tbody/tr[2]")).getText(); 
    //String Data2 = Member01.findElement(By.xpath("//*[@id='memberViewUpdateForm:memberHeaderDatePanel']/tbody/tr[2]/td[1]")).getText();
    System.out.println(Data1);
    Member01.findElement(By.id("breadCrumbForm:homeLink")).click();
    Thread.sleep(3000);
    }	
    }
//
}//end	