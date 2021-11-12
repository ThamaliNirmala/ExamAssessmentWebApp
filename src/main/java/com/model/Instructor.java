package com.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.service.InstructorImpl;

/*This is the Instructor model class
@author Thamali Nirmala*/

public class Instructor implements InstructorImpl {
	
	private String ID;
	
	private String assessmentId;
	
	private String assessmentType;

	private String assessmentVersion;

	private String Batch;

	private String Faculty;
	
	private String InsructorName;

	private String DatePublish;
	
	private Double DueDate;

	public Instructor(ResultSet resultSet) throws SQLException{
		
		this.assessmentId = resultSet.getString("assessmentId");
        this.assessmentType = resultSet.getString("assessmentType");
        this.assessmentVersion = resultSet.getString("assessmentVersion");
        this.Batch = resultSet.getString("Batch");
        this.Faculty = resultSet.getString("Faculty");
        this.InsructorName = resultSet.getString("InsructorName");
        this.DatePublish = resultSet.getString("DatePublish");
        this.DueDate = resultSet.getDouble("DueDate");
        
		
	}

	/**
	 * @return the iD
	 */
	public String getID() {
		return ID;
	}

	/**
	 * @param iD the iD to set
	 */
	public void setID(String iD) {
		ID = iD;
	}

	/**
	 * @return the assessmentId
	 */
	public String getAssessmentId() {
		return assessmentId;
	}

	/**
	 * @param assessmentId the assessmentId to set
	 */
	public void setAssessmentId(String assessmentId) {
		this.assessmentId = assessmentId;
	}

	/**
	 * @return the assessmentType
	 */
	public String getAssessmentType() {
		return assessmentType;
	}

	/**
	 * @param assessmentType the assessmentType to set
	 */
	public void setAssessmentType(String assessmentType) {
		this.assessmentType = assessmentType;
	}

	/**
	 * @return the assessmentVersion
	 */
	public String getAssessmentVersion() {
		return assessmentVersion;
	}

	/**
	 * @param assessmentVersion the assessmentVersion to set
	 */
	public void setAssessmentVersion(String assessmentVersion) {
		this.assessmentVersion = assessmentVersion;
	}

	/**
	 * @return the batch
	 */
	public String getBatch() {
		return Batch;
	}

	/**
	 * @param batch the batch to set
	 */
	public void setBatch(String batch) {
		Batch = batch;
	}

	/**
	 * @return the faculty
	 */
	public String getFaculty() {
		return Faculty;
	}

	/**
	 * @param faculty the faculty to set
	 */
	public void setFaculty(String faculty) {
		Faculty = faculty;
	}

	/**
	 * @return the insructorName
	 */
	public String getInsructorName() {
		return InsructorName;
	}

	/**
	 * @param insructorName the insructorName to set
	 */
	public void setInsructorName(String insructorName) {
		InsructorName = insructorName;
	}

	/**
	 * @return the datePublish
	 */
	public String getDatePublish() {
		return DatePublish;
	}

	/**
	 * @param datePublish the datePublish to set
	 */
	public void setDatePublish(String datePublish) {
		DatePublish = datePublish;
	}

	/**
	 * @return the dueDate
	 */
	public Double getDueDate() {
		return DueDate;
	}

	/**
	 * @param dueDate the dueDate to set
	 */
	public void setDueDate(Double dueDate) {
		DueDate = dueDate;
	}

	@Override
	public String toString() {
		return "Instructor [ID=" + ID + ", assessmentId=" + assessmentId + ", assessmentType=" + assessmentType
				+ ", assessmentVersion=" + assessmentVersion + ", Batch=" + Batch + ", Faculty=" + Faculty
				+ ", InsructorName=" + InsructorName + ", DatePublish=" + DatePublish + ", DueDate=" + DueDate + "]";
	}



}


