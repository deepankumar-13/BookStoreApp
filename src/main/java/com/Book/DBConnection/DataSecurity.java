package com.Book.DBConnection;

public class DataSecurity {

	public static String encryption(String string) {
		StringBuffer encrypt = new StringBuffer();
		for(int i=0;i<string.length();i++) {
			encrypt.append((char)string.charAt(i)+2);
		}
		return encrypt.toString();
	}
	
	public static String decryption(String string) {
		StringBuffer decrypt = new StringBuffer();
		for(int i=0;i<string.length();i++) {
			decrypt.append((char)string.charAt(i)-2);
		}
		return decrypt.toString();
	}

	public static void main(String[] args) {
		String pwd = "70103103114991121091191119911670775153";
		System.out.println(DataSecurity.decryption(pwd));
	}
}
