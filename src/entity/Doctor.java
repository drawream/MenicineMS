package entity;
public class Doctor {
    private int id;
    private String name;
    private int age;
    private String major;

    public int getId() {
	return id;
    }

    public void setId(int id) {
	this.id = id;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public int getAge() {
	return age;
    }

    public void setAge(int age) {
	this.age = age;
    }

    public String getMajor() {
	return major;
    }

    public void setMajor(String major) {
	this.major = major;
    }

    public Doctor(int id, String name, int age, String major) {
	super();
	this.id = id;
	this.name = name;
	this.age = age;
	this.major = major;
    }

    public Doctor() {
	super();
    }
}
