package Model;

/**
 *
 * @author shuvra
 */
public class Person {
    int id;
    String name;
    String email;
    String phoneNo;
    String password;

    public Person() {
	id = 0;
	name = "";
	phoneNo = "";
	email = "";
	password = "";
    }
    public Person(int  id, String name, String email, String phoneNo, String password) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phoneNo = phoneNo;
	this.password = password;
    }

//    abstract public void logInValidity();
//    abstract public void signUp();
//    abstract public void forgetPassword();
}
