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


import com.dao.YonghushenqingDao;
import com.entity.YonghushenqingEntity;
import com.service.YonghushenqingService;
import com.entity.vo.YonghushenqingVO;
import com.entity.view.YonghushenqingView;

@Service("yonghushenqingService")
public class YonghushenqingServiceImpl extends ServiceImpl<YonghushenqingDao, YonghushenqingEntity> implements YonghushenqingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YonghushenqingEntity> page = this.selectPage(
                new Query<YonghushenqingEntity>(params).getPage(),
                new EntityWrapper<YonghushenqingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YonghushenqingEntity> wrapper) {
		  Page<YonghushenqingView> page =new Query<YonghushenqingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YonghushenqingVO> selectListVO(Wrapper<YonghushenqingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YonghushenqingVO selectVO(Wrapper<YonghushenqingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YonghushenqingView> selectListView(Wrapper<YonghushenqingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YonghushenqingView selectView(Wrapper<YonghushenqingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
