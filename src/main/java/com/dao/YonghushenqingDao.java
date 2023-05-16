package com.dao;

import com.entity.YonghushenqingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YonghushenqingVO;
import com.entity.view.YonghushenqingView;


/**
 * 用户申请
 * 
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public interface YonghushenqingDao extends BaseMapper<YonghushenqingEntity> {
	
	List<YonghushenqingVO> selectListVO(@Param("ew") Wrapper<YonghushenqingEntity> wrapper);
	
	YonghushenqingVO selectVO(@Param("ew") Wrapper<YonghushenqingEntity> wrapper);
	
	List<YonghushenqingView> selectListView(@Param("ew") Wrapper<YonghushenqingEntity> wrapper);

	List<YonghushenqingView> selectListView(Pagination page,@Param("ew") Wrapper<YonghushenqingEntity> wrapper);
	
	YonghushenqingView selectView(@Param("ew") Wrapper<YonghushenqingEntity> wrapper);
	

}
