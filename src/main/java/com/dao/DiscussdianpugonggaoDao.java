package com.dao;

import com.entity.DiscussdianpugonggaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussdianpugonggaoVO;
import com.entity.view.DiscussdianpugonggaoView;


/**
 * 店铺公告评论表
 * 
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public interface DiscussdianpugonggaoDao extends BaseMapper<DiscussdianpugonggaoEntity> {
	
	List<DiscussdianpugonggaoVO> selectListVO(@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);
	
	DiscussdianpugonggaoVO selectVO(@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);
	
	List<DiscussdianpugonggaoView> selectListView(@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);

	List<DiscussdianpugonggaoView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);
	
	DiscussdianpugonggaoView selectView(@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);
	

}
