package coffeeFactory.vo;

/*FREQUENT_QNA
FREQNA_ID NUMBER,
QUESTION VARCHAR2(1000)
ANSWER VARCHAR2(4000)*/
public class Frequent_qna {

	private int frequent_id;
	private String question;
	private String answer;
	public Frequent_qna() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Frequent_qna(int frequent_id, String question, String answer) {
		super();
		this.frequent_id = frequent_id;
		this.question = question;
		this.answer = answer;
	}
	public int getFrequent_id() {
		return frequent_id;
	}
	public void setFrequent_id(int frequent_id) {
		this.frequent_id = frequent_id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "Frequent_qna [frequent_id=" + frequent_id + ", question=" + question + ", answer=" + answer + "]";
	}
	
}
