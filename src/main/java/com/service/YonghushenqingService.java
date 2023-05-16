package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YonghushenqingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YonghushenqingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YonghushenqingView;


/**
 * 用户申请
 *
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public interface YonghushenqingService extends IService<YonghushenqingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YonghushenqingVO> selectListVO(Wrapper<YonghushenqingEntity> wrapper);
   	
   	YonghushenqingVO selectVO(@Param("ew") Wrapper<YonghushenqingEntity> wrapper);
   	
   	List<YonghushenqingView> selectListView(Wrapper<YonghushenqingEntity> wrapper);
   	
   	YonghushenqingView selectView(@Param("ew") Wrapper<YonghushenqingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YonghushenqingEntity> wrapper);
   	

}

