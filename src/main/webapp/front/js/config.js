
var projectName = '网上购物系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的订单',
	url: '../shop-order/list.jsp'
},

{
	name: '我的地址',
	url: '../shop-address/list.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '商品信息',
	url: './pages/shangpinxinxi/list.jsp'
}, 
{
	name: '店铺公告',
	url: './pages/dianpugonggao/list.jsp'
}, 

{
	name: '意见反馈',
	url: './pages/messages/list.jsp'
}
]

var adminurl =  "http://localhost:8080/jspmyo1c0/index.jsp";

var cartFlag = false

var chatFlag = false


cartFlag = true


var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["新增","查看","修改","删除"],"menu":"商家","menuJump":"列表","tableName":"shangjia"}],"menu":"商家管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看","删除","审核"],"menu":"用户申请","menuJump":"列表","tableName":"yonghushenqing"}],"menu":"用户申请管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"商品分类","menuJump":"列表","tableName":"shangpinfenlei"}],"menu":"商品分类管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","修改","删除","查看评论"],"menu":"商品信息","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除","查看评论"],"menu":"店铺公告","menuJump":"列表","tableName":"dianpugonggao"}],"menu":"店铺公告管理"},{"child":[{"appFrontIcon":"cuIcon-message","buttons":["查看","修改","回复","删除"],"menu":"意见反馈","tableName":"messages"}],"menu":"意见反馈"},{"child":[{"appFrontIcon":"cuIcon-attentionfavor","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-phone","buttons":["查看","删除","日销量","月销量","年销量","品销量","日销额","月销额","年销额","品销额"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-circle","buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-taxi","buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"appFrontIcon":"cuIcon-rank","buttons":["查看","删除"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","在线咨询"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看"],"menu":"店铺公告列表","menuJump":"列表","tableName":"dianpugonggao"}],"menu":"店铺公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"用户申请","menuJump":"列表","tableName":"yonghushenqing"}],"menu":"用户申请管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","删除"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","在线咨询"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看"],"menu":"店铺公告列表","menuJump":"列表","tableName":"dianpugonggao"}],"menu":"店铺公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除","查看评论"],"menu":"商品信息","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","删除","审核"],"menu":"在线咨询","menuJump":"列表","tableName":"zaixianzixun"}],"menu":"在线咨询管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除","查看评论"],"menu":"店铺公告","menuJump":"列表","tableName":"dianpugonggao"}],"menu":"店铺公告管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-circle","buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-taxi","buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"appFrontIcon":"cuIcon-rank","buttons":["查看","删除","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-cardboard","buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-phone","buttons":["查看","删除","日销量","月销量","年销量","品销量","日销额","月销额","年销额","品销额"],"menu":"已完成订单","tableName":"orders/已完成"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","在线咨询"],"menu":"商品信息列表","menuJump":"列表","tableName":"shangpinxinxi"}],"menu":"商品信息模块"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["查看"],"menu":"店铺公告列表","menuJump":"列表","tableName":"dianpugonggao"}],"menu":"店铺公告模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"商家","tableName":"shangjia"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
