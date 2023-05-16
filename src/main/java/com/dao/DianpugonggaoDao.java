package com.dao;

import com.entity.DianpugonggaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DianpugonggaoVO;
import com.entity.view.DianpugonggaoView;


/**
 * 店铺公告
 * 
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public interface DianpugonggaoDao extends BaseMapper<DianpugonggaoEntity> {
	
	List<DianpugonggaoVO> selectListVO(@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);
	
	DianpugonggaoVO selectVO(@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);
	
	List<DianpugonggaoView> selectListView(@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);

	List<DianpugonggaoView> selectListView(Pagination page,@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);
	
	DianpugonggaoView selectView(@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);
	

}
