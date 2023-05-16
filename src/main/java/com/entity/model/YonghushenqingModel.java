package com.entity.model;

import com.entity.YonghushenqingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 用户申请
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public class YonghushenqingModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 营业执照
	 */
	
	private String yingyezhizhao;
		
	/**
	 * 申请文件
	 */
	
	private String shenqingwenjian;
		
	/**
	 * 申请原因
	 */
	
	private String shenqingyuanyin;
		
	/**
	 * 申请时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shenqingshijian;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：营业执照
	 */
	 
	public void setYingyezhizhao(String yingyezhizhao) {
		this.yingyezhizhao = yingyezhizhao;
	}
	
	/**
	 * 获取：营业执照
	 */
	public String getYingyezhizhao() {
		return yingyezhizhao;
	}
				
	
	/**
	 * 设置：申请文件
	 */
	 
	public void setShenqingwenjian(String shenqingwenjian) {
		this.shenqingwenjian = shenqingwenjian;
	}
	
	/**
	 * 获取：申请文件
	 */
	public String getShenqingwenjian() {
		return shenqingwenjian;
	}
				
	
	/**
	 * 设置：申请原因
	 */
	 
	public void setShenqingyuanyin(String shenqingyuanyin) {
		this.shenqingyuanyin = shenqingyuanyin;
	}
	
	/**
	 * 获取：申请原因
	 */
	public String getShenqingyuanyin() {
		return shenqingyuanyin;
	}
				
	
	/**
	 * 设置：申请时间
	 */
	 
	public void setShenqingshijian(Date shenqingshijian) {
		this.shenqingshijian = shenqingshijian;
	}
	
	/**
	 * 获取：申请时间
	 */
	public Date getShenqingshijian() {
		return shenqingshijian;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
