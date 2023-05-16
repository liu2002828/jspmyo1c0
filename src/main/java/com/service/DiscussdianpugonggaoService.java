package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussdianpugonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussdianpugonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussdianpugonggaoView;


/**
 * 店铺公告评论表
 *
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public interface DiscussdianpugonggaoService extends IService<DiscussdianpugonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussdianpugonggaoVO> selectListVO(Wrapper<DiscussdianpugonggaoEntity> wrapper);
   	
   	DiscussdianpugonggaoVO selectVO(@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);
   	
   	List<DiscussdianpugonggaoView> selectListView(Wrapper<DiscussdianpugonggaoEntity> wrapper);
   	
   	DiscussdianpugonggaoView selectView(@Param("ew") Wrapper<DiscussdianpugonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussdianpugonggaoEntity> wrapper);
   	

}

