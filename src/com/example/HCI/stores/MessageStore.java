package com.example.HCI.stores;

public class MessageStore {
     String Message;
     String User;
     String Time;
     
     public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		this.Time = time;
	}
	public String getMessage(){
    	 return Message;
     }
     public String getUser(){
    	 return User;
     }
          
     public void setMessage(String Post){
    	 this.Message=Post;
     }
     public void setUser(String User){
    	 this.User=User;
     }
     
}