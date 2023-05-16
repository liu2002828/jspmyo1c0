package com.entity.view;

import com.entity.YonghushenqingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 用户申请
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
@TableName("yonghushenqing")
public class YonghushenqingView  extends YonghushenqingEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YonghushenqingView(){
	}
 
 	public YonghushenqingView(YonghushenqingEntity yonghushenqingEntity){
 	try {
			BeanUtils.copyProperties(this, yonghushenqingEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
