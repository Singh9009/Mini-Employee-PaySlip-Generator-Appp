package in.beans;

import java.io.Serializable;

import jakarta.servlet.ServletConfig;

public class EmployeeBean implements Serializable{

	private String eno;
	private String ename;
	private String eaddress;
	private Float basicSalary;
	private Float grossSalary;
	private Float netsalary;
	
	
	//setters ang getters
	public String getEno() {
     	return eno;
	}
	public void setEno(String eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEaddress() {
		return eaddress;
	}
	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}
	public Float getBasicSalary() {
		return basicSalary;
	}
	public void setBasicSalary(Float basicSalary) {
		this.basicSalary = basicSalary;
	}
	public Float getGrossSalary() {
		return grossSalary;
	}
	public void setGrossSalary(Float grossSalary) {
		this.grossSalary = grossSalary;
	}
	public Float getNetsalary() {
		return netsalary;
	}
	public void setNetsalary(Float netsalary) {
		this.netsalary = netsalary;
	}
	
	
}
