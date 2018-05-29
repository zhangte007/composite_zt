$(function(){
	
	//把dom组件渲染成echarts组件
	var myChart = echarts.init($("#bar")[0]);

	/****************************配置echarts的相关属性设置********************************************/
	
	var option={
		    toolbox: {
		        show : true,
		        feature : {
		            dataView : {show: true, readOnly: false},
		            magicType : {show: true, type: ['line', 'bar']},
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
			title:{
				text:'电脑销售明细',//主标题
				subtext:'统计人:张三',
				x:'center',
					
			},
			tooltip:{
				//鼠标悬停在该区域上的提示样式 
			},
			legend:{
				data:['品种'], //显示在x轴的标题
				x:'left'
			},
			xAxis:{
				data:[],//此处，需要一个一维数组//x轴配置， 用于描识有几个颜色板块，每一个板块对应的名称
			},
			yAxis:{},//y轴
			
			series:[{//要显示在图形中的数据
				name:'品种',//图表的名称
				type:'bar',//图表的类型
				data:[]//需要一个一维数组，要显示在图表的数据
			}]
			
	};

	//将这些属性设置与渲染后的echarts组件建立关联
	myChart.setOption(option);
    
	/******************此处，需要到后台读取数据，得到两个一维数组，分别绑定xAxis与series****************************/
    $.getJSON(path+"/echarts/loadBarData.do",function(data){
    	myChart.setOption({
    		xAxis:{
				data:data.keys
			},
			series:[{//要显示在图形中的数据
				data:data.values//需要一个一维数组，要显示在图表的数据
			}]
			
    	});
    });
    
    /************************************************************************/
	
});