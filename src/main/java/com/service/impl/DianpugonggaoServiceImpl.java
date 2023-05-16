package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DianpugonggaoDao;
import com.entity.DianpugonggaoEntity;
import com.service.DianpugonggaoService;
import com.entity.vo.DianpugonggaoVO;
import com.entity.view.DianpugonggaoView;

@Service("dianpugonggaoService")
public class DianpugonggaoServiceImpl extends ServiceImpl<DianpugonggaoDao, DianpugonggaoEntity> implements DianpugonggaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DianpugonggaoEntity> page = this.selectPage(
                new Query<DianpugonggaoEntity>(params).getPage(),
                new EntityWrapper<DianpugonggaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DianpugonggaoEntity> wrapper) {
		  Page<DianpugonggaoView> page =new Query<DianpugonggaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DianpugonggaoVO> selectListVO(Wrapper<DianpugonggaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DianpugonggaoVO selectVO(Wrapper<DianpugonggaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DianpugonggaoView> selectListView(Wrapper<DianpugonggaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DianpugonggaoView selectView(Wrapper<DianpugonggaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
