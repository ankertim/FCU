
public class string {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String song="One little, two little, three little Indians, Four little,five little,"
				+ " six little Indians, Seven little, eight little,nine little Indians,"
				+ " Ten little Indian boys.";
		int search1=song.indexOf("little");//找出最開始的位置
		int search2=song.indexOf("Indians");
		int i=0,j=0;
		while(search1!=-1) {
			search1=song.indexOf("little",search1+1);
			i++;
		}
		System.out.println("The world \"litte\" appears "+i+" times");
		while(search2!=-1) {
			search2=song.indexOf("Indians",search2+1);
			j++;
		}
		System.out.println("The world \"Indians\" appears "+j+" times");
		String modifiesong1=song.replace("little","big");//替換歌詞
		System.out.println("\""+modifiesong1+"\"");
		String modifilesong2=song.replace("Indians","Taiwaneses").replace("Indian","Taiwanese");
		System.out.println("\""+modifilesong2+"\"");
}
}