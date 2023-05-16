package com.entity.view;

import com.entity.DiscussdianpugonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 店铺公告评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
@TableName("discussdianpugonggao")
public class DiscussdianpugonggaoView  extends DiscussdianpugonggaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussdianpugonggaoView(){
	}
 
 	public DiscussdianpugonggaoView(DiscussdianpugonggaoEntity discussdianpugonggaoEntity){
 	try {
			BeanUtils.copyProperties(this, discussdianpugonggaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
