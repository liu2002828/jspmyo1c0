package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DianpugonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DianpugonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DianpugonggaoView;


/**
 * 店铺公告
 *
 * @author 
 * @email 
 * @date 2022-07-21 14:54:32
 */
public interface DianpugonggaoService extends IService<DianpugonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DianpugonggaoVO> selectListVO(Wrapper<DianpugonggaoEntity> wrapper);
   	
   	DianpugonggaoVO selectVO(@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);
   	
   	List<DianpugonggaoView> selectListView(Wrapper<DianpugonggaoEntity> wrapper);
   	
   	DianpugonggaoView selectView(@Param("ew") Wrapper<DianpugonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DianpugonggaoEntity> wrapper);
   	

}

