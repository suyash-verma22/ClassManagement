package com.management.model;

public class Batch {
	
	private int batchID;
	private int[] subjectID = new int[8];
	
	public Batch() {
		//createBatchID();
		this.batchID = 0;
		for(int i=0;i<8;i++) {
			subjectID[i] = -1;
		}
	}
	
	public void createBatchID(int i) {
		this.batchID = i;
	}
	
	public int getBatchID() {
		return batchID;
	}

	public void setSubject(Subject subject) {
		int flag = 0;
		for(int i=0;i<8;i++) {
			if(subjectID[i] == -1) {
				subjectID[i] = subject.getSubjectID();
				flag = 1;
			}
		}
		if(flag == 0) {
			System.out.println("* * * * * * * * * * * * * * * * * * * * * *");
			System.out.println("Class is full. No new classes can be added.");
			System.out.println("* * * * * * * * * * * * * * * * * * * * * *");
		}
	}
    
	public int[] getSubjectIDs() {
		return subjectID;
	}
}
