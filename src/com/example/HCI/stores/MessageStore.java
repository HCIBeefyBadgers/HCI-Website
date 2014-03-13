package com.example.HCI.stores;

import java.util.UUID;

public class MessageStore {
     String Message;
     String User;
     
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