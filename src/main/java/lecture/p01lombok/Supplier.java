package lecture.p01lombok;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Data
@AllArgsConstructor
public class Supplier {
	// 필드 작성 및
	// lombok 어노테이셔으로
	// getter, setter, toString
	// 성성자 등을만들기

	
	private int employeeID;	
	private String lastField;
	private String firstField;
	
	

}
