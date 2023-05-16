package com.entity.view;

import com.entity.DianpugonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 店铺公告
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
@TableName("dianpugonggao")
public class DianpugonggaoView  extends DianpugonggaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianpugonggaoView(){
	}
 
 	public DianpugonggaoView(DianpugonggaoEntity dianpugonggaoEntity){
 	try {
			BeanUtils.copyProperties(this, dianpugonggaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
