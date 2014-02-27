本发布包仅包含OSKinetis库文件，不包含任何例程。你可以单独获取基于该库开发的例程包。

了解OSKinetis V3固件库
http://wiki.lpld.cn/index.php?title=OSKinetis_V3%E5%9B%BA%E4%BB%B6%E5%BA%93

OSKinetis固件库函数手册
http://wiki.lpld.cn/index.php?title=%E5%88%86%E7%B1%BB:LPLD%E5%9B%BA%E4%BB%B6%E5%BA%93

OSKinetis固件库更新日志
http://wiki.lpld.cn/index.php?title=OSKinetis%E5%9B%BA%E4%BB%B6%E5%BA%93%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97

《跟我学OSKinetis》系列教程
http://www.lpld.cn/?tag=%e8%b7%9f%e6%88%91%e5%ad%a6oskinetis

获取最新固件库及例程包
http://www.lpld.cn/?p=97

这个版本我自己的修改版本，目前在mk60fx15也就是野火的那块板子上运行的很成功。暂时没有发现BUG，如果在你的使用过程中发现问题，请和我联系：
    rmokerone@gmail.com
    修改后的库要使用的话，只要在k60_card里面添加：
    #define CPU_MK60FX15_ADD
    就可以了

