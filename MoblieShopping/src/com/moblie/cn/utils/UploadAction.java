package com.moblie.cn.utils;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class UploadAction {

	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String upfile;

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String execute() {
		String path = ServletActionContext.getServletContext().getRealPath(Const.uploadRoute);
		 upfile= System.currentTimeMillis()
				+ uploadFileName.substring(uploadFileName.lastIndexOf("."));
		try {
			FileUtils.copyFile(upload, new File(path, upfile));
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			upload.delete();
		}
		return upfile;
	}

	public String getUpfile() {
		return upfile;
	}

	public void setUpfile(String upfile) {
		this.upfile = upfile;
	}
}
