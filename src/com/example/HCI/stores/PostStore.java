package com.example.HCI.stores;

import java.util.UUID;

public class PostStore {
     String Post;
     String User;
     
     public String getPost(){
    	 return Post;
     }
     public String getUser(){
    	 return User;
     }
          
     public void setPost(String Post){
    	 this.Post=Post;
     }
     public void setUser(String User){
    	 this.User=User;
     }
     
}