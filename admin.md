#后台登录记录
    1.如果session过期退出登录 记录当前访问的页面 然后再跳回来
#全局异常
    修改Exception 的 render方法
    
    修改配置文件设置为自定义异常'exception_handle'       => 'app\lib\exception\ExceptionHandle'
   
# 模型关联
    hasMany(需要关联的模型,外键id,主键id)
    
    
    belongsTo(需要关联的模型,外键id,主键id)
    hasOne(需要关联的模型,外键id,主键id)
    #belongsTo和hasOne什么时候用
       当前关联的模型（当前表）当中 有外键id 那么就用belongsTo
#在database.php文件中
    如果这个参数
        array 返回的是数组
        collection 返回的是集合
        
        'resultset_type'  => 'collection',