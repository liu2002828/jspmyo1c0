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


import com.dao.DiscussdianpugonggaoDao;
import com.entity.DiscussdianpugonggaoEntity;
import com.service.DiscussdianpugonggaoService;
import com.entity.vo.DiscussdianpugonggaoVO;
import com.entity.view.DiscussdianpugonggaoView;

@Service("discussdianpugonggaoService")
public class DiscussdianpugonggaoServiceImpl extends ServiceImpl<DiscussdianpugonggaoDao, DiscussdianpugonggaoEntity> implements DiscussdianpugonggaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussdianpugonggaoEntity> page = this.selectPage(
                new Query<DiscussdianpugonggaoEntity>(params).getPage(),
                new EntityWrapper<DiscussdianpugonggaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussdianpugonggaoEntity> wrapper) {
		  Page<DiscussdianpugonggaoView> page =new Query<DiscussdianpugonggaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussdianpugonggaoVO> selectListVO(Wrapper<DiscussdianpugonggaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussdianpugonggaoVO selectVO(Wrapper<DiscussdianpugonggaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussdianpugonggaoView> selectListView(Wrapper<DiscussdianpugonggaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussdianpugonggaoView selectView(Wrapper<DiscussdianpugonggaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
