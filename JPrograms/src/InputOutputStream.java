import java.io.FileInputStream;

public class InputOutputStream {
	{
	try {
		FileInputStream fis= new FileInputStream("C:\\Users\\dt207038\\Desktop\\evnmpath.txt");
	int i= fis.read();
	System.out.println((char)i);
	fis.close();
	}
	catch(Exception e){System.out.println(e);}
}
}
