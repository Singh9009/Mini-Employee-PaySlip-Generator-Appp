package in.service;

import in.beans.EmployeeBean;

public class PaySlipGeneratorService {

	public void generatePaySlip(EmployeeBean empBean)
	{
		//claculate Gross salary and Net Salary
		float grossSalary = empBean.getBasicSalary()+empBean.getBasicSalary()*0.4f;
		float netSalary = grossSalary-(grossSalary*0.2f);
		
		//set the generated gross salary, net salary to java bean
		empBean.setGrossSalary(grossSalary);
		empBean.setNetsalary(netSalary);
	}
}
