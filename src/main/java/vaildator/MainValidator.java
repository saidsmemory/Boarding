package vaildator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.dto.Member;

public class MainValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Member.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required1");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required2");
		
	}

}
