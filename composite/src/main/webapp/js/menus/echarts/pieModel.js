$(function(){
	//基于准备好的dom,初始化echarts实例
	var myChart = echarts.init($("#pie")[0]);
	//设置属性
	var options={
			
			title:{
				text:"电脑销售数量",
				subtext:'统计人:张三',
				x:'center'
			},
			tooltip:{
				//设置鼠标悬停的提示信息，默认只显示：名称与数值,如果要显示更多内容，需要手动配置
			       trigger: 'item',
			       formatter: "{a} <br/>{b} : {c} ({d}%)"
			},
			legend:{
				data:[],//此处，需要一个一维数组,
				x:'left',
				orient: 'vertical'
			},
		    toolbox: {
		        show : true,
		        feature : {
		            mark : {show: true},
		            dataView : {show: true, readOnly: false},
		            magicType : {
		                show: true,
		                type: ['pie', 'funnel']
		            },
		            restore : {show: true},
		            saveAsImage : {show: true}
		        }
		    },
			series:[{
				name:"销售统计饼图",
				type:"pie",
				radius:'60%',//显示原图的百分之多少
	            itemStyle: { //阴影效果
	                normal: {
	                    shadowBlur: 200,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            },
				data:[] //此处需要一个二维数组
			}]
	};
	myChart.setOption(options);
	$.getJSON(path+"/echarts/loadPieData.do",function(data){
		myChart.setOption({
			legend:{
				data:data.titles//此处，需要一个一维数组,
			},
			series:[{
				data:data.datas //此处，需要一个二维数组,name,value
			}]
			
		});
	});
});
