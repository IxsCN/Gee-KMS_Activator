# Gee-KMS_Activator
HIWIFI（极路由）的KMS激活插件。
### 更新

+ 2016/11/15 插件已经上线极路由官方云平台，安装更便捷。[链接直达](https://app.hiwifi.com/plugin?sid=438262738)

#### 什么是KMS

KMS 是 Key Management Service （密钥管理服务） 的缩写。平时接触的 Windows 版本和 Office 版本大多是（Retail）零售版本，即为每一个客户提供一枚可用于激活的 CD-KEY，如果客户是大规模的公司，有成百上千的员工，那么给所有员工每人发一枚 CD-KEY 来激活 Windows 产品，对于IT管理人员将是灾难，所以批量授权由此而来，而 KMS 是批量授权方式的一种，另一种是 MAKKEY 方式。本文着重介绍KMS激活方式。

#### 使用KMS的条件

1. 用于激活的 KMS 服务程序。
2. 可被 KMS 激活的 Office 和 Windows 版本。

#### 分开讲解

##### KMS 服务程序

正常情况下的 KMS 服务程序需要向微软购买，并架设在企业的服务器上，即可激活网络中的微软程序。本插件使用的是国外大神发布的工具，能够模拟官方 KMS 服务程序，从而达到激活 Windows 和 Offfice 的目的。国内有很多基于 KMS 的激活工具，他们的原理都是相近的，不同的是本插件将激活服务器安装在极路由上，其他插件都是安装在你的PC上。

##### 可被 KMS 激活的 Office 和 Windows 版本

这样的版本统称为VOL（Volume Licensing for Organizations）版本 ，中文即团体批量许可证版本，大多时候简称为VL版本。VL版本程序只提供给MSDN订阅账号下载，不对普通用户开放下载的，当然在天朝找到这样的资源并不是什么难事，这里提供国内最出名的MSDN资源下载站，[MSDN 我告诉你](http://msdn.itellyou.cn/)，提供了几乎全部的MSDN原版安装文件。

##### 如何识别 VOL 版本

以 Office 2013 为例
打开http://msdn.itellyou.cn 
依次展开 应用程序 -> Office 2013 -> 中文-简体 

![](https://oartlm8rs.qnssl.com//hiwifi/kms_activatorshi-yong-jiao-cheng/Office2013.png)

红框圈出的介绍中带有 VOL 标识的正是。当然如果你不是从[MSDN 我告诉你](http://msdn.itellyou.cn/)下载的安装程序，可以观察安装程序的文件名如果是以SW开头，那么这也是VOL版本。

##### 怎么激活

激活很简单，在PC上安装 VOL 版本的 Office 或者 Windows，然后把PC链接到极路由下，在极路由上安装 KMS_Activator 插件，然后重新打开软件看看，已经激活了。

#### 并没有激活怎么办？

1. 确保 PC 上的 DNS 地址是自动获取的。
2. 确保安装的版本是 VOL 版本。
3. 重启试试？

#### 仍然没用？

##### Office的解决方法

一定要确定 Office 为VOL版本
解决方法：手动指定 Office 的激活服务器，从而达到激活的目的。

![](https://oartlm8rs.qnssl.com//hiwifi/kms_activatorshi-yong-jiao-cheng/%E6%BF%80%E6%B4%BBOffice.png)

**以管理员身份打开 cmd.exe 程序**
1. 进入到Office的安装目录，例子中为 D:\Program Files\Microsoft Office\Office16 所以要先进入D盘。
D：
2. 进入到Office的安装目录。
cd "D:\Program Files\Microsoft Office\Office16"
3. 指定Office的激活服务器。
cscript ospp.vbs /sethst:hiwifi.com
4. 进行激活操作。
 cscript ospp.vbs /act 
在返回结果里可以看到，Product activation successful 代表激活成功了。
5. 查看Office的激活状态。
cscript ospp.vbs /dstatus

经过以上操作 Office 就激活了。

##### Windows的解决方法 

Windows 相对容易的些。以win10专业版为例子。
**以管理员身份打开 cmd.exe 程序**
1. 卸载现有cd-key。
 slmgr.vbs -upk
2. 安装对应系统的GVLK。不同系统版本不一样，下面是win10专业版的GVLK(更多见下文) 。
slmgr.vbs -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
3. 设置kms服务器地址，就是你路由器的ip地址。如果你在前面启动kms服务器的时候改了端口，这里要写成 address:port 的形式。
slmgr.vbs -skms hiwifi.com
4. 开始激活。
slmgr.vbs -ato
5. 检查激活状态。
slmgr.vbs -dlv

##### 个版本 Windows 的 GVLK
```
#############################  Windows  10  ########################################
Windows 10 Professional                                W269N-WFGWX-YVC9B-4J6C9-T83GX
Windows 10 Professional N                            MH37W-N47XK-V7XM9-C7227-GCQG9
Windows 10 Enterprise                                NPPR9-FWDCX-D2C8J-H872K-2YT43
Windows 10 Enterprise N                                DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
Windows 10 Education                                NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
Windows 10 Education N                                2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
Windows 10 Enterprise 2015 LTSB                        WNMTR-4C88C-JK8YV-HQ7T2-76DF9
Windows 10 Enterprise 2015 LTSB N                    2F77B-TNFGY-69QQF-B8YKP-D69TJ
 
#############################  Windows  8.1 2012R2  #################################
Windows 8.1 Professional                            GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
Windows 8.1 Professional N                            HMCNV-VVBFX-7HMBH-CTY9B-B4FXY
Windows 8.1 Enterprise                                MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
Windows 8.1 Enterprise N                            TT4HM-HN7YT-62K67-RGRQJ-JFFXW
Windows Server 2012 R2 Server Standard                D2N9P-3P6X9-2R39C-7RTCD-MDVJX
Windows Server 2012 R2 Datacenter                    W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9
Windows Server 2012 R2 Essentials                    KNC87-3J2TX-XB4WP-VCPJV-M4FWM
 
#############################  Windows  8 2012  ######################################
Windows 8 Professional                                NG4HW-VH26C-733KW-K6F98-J8CK4
Windows 8 Professional N                            XCVCF-2NXM9-723PB-MHCB7-2RYQQ
Windows 8 Enterprise                                32JNW-9KQ84-P47T8-D8GGY-CWCK7
Windows 8 Enterprise N                                JMNMF-RHW7P-DMY6X-RF3DR-X2BQT
Windows Server 2012                                    BN3D2-R7TKB-3YPBD-8DRP2-27GG4
Windows Server 2012 N                                8N2M2-HWPGY-7PGT9-HGDD8-GVGGY
Windows Server 2012 Single Language                    2WN2H-YGCQR-KFX6K-CD6TF-84YXQ
Windows Server 2012 Country Specific                4K36P-JN4VD-GDC6V-KDT89-DYFKP
Windows Server 2012 Server Standard                    XC9B7-NBPP2-83J2H-RHMBY-92BT4
Windows Server 2012 MultiPoint Standard                HM7DN-YVMH3-46JC3-XYTG7-CYQJJ
Windows Server 2012 MultiPoint Premium                XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G
Windows Server 2012 Datacenter                        48HP8-DN98B-MYWDG-T2DCC-8W83P
 
#############################  Windows  7 2008R2  ####################################
Windows 7 Professional                                FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
Windows 7 Professional N                            MRPKT-YTG23-K7D7T-X2JMM-QY7MG
Windows 7 Professional E                            W82YF-2Q76Y-63HXB-FGJG9-GF7QX
Windows 7 Enterprise                                33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
Windows 7 Enterprise N                                YDRBP-3D83W-TY26F-D46B2-XCKRJ
Windows 7 Enterprise E                                C29WB-22CC8-VJ326-GHFJW-H9DH4
Windows Server 2008 R2 Web                            6TPJF-RBVHG-WBW2R-86QPH-6RTM4
Windows Server 2008 R2 HPC edition                    TT8MH-CG224-D3D7Q-498W2-9QCTX
Windows Server 2008 R2 Standard                        YC6KT-GKW9T-YTKYR-T4X34-R7VHC
Windows Server 2008 R2 Enterprise                    489J6-VHDMP-X63PK-3K798-CPX3Y
Windows Server 2008 R2 Datacenter                    74YFP-3QFB3-KQT8W-PMXWJ-7M648
Windows Server 2008 R2 for Itanium-based Systems    GT63C-RJFQ3-4GMB6-BRFB9-CB83V
 
#############################  Windows  Vista 2008 ####################################
Windows Vista Business                                YFKBB-PQJJV-G996G-VWGXY-2V3X8
Windows Vista Business N                            HMBQG-8H2RH-C77VX-27R82-VMQBT
Windows Vista Enterprise                            VKK3X-68KWM-X2YGT-QR4M6-4BWMV
Windows Vista Enterprise N                            VTC42-BM838-43QHV-84HX6-XJXKV
Windows Web Server 2008                                WYR28-R7TFJ-3X2YQ-YCY4H-M249D
Windows Server 2008 Standard                        TM24T-X9RMF-VWXK6-X8JC9-BFGM2
Windows Server 2008 Standard without Hyper-V        W7VD6-7JFBR-RX26B-YKQ3Y-6FFFJ
Windows Server 2008 Enterprise                        YQGMW-MPWTJ-34KDK-48M3W-X4Q6V
Windows Server 2008 Enterprise without Hyper-V        39BXF-X8Q23-P2WWT-38T2F-G3FPG
Windows Server 2008 HPC                                RCTX3-KWVHP-BR6TB-RB6DM-6X7HP
Windows Server 2008 Datacenter                        7M67G-PC374-GR742-YH8V4-TCBY3
Windows Server 2008 Datacenter without Hyper-V        22XQ2-VRXRG-P8D42-K34TD-G3QQC
Windows Server 2008 for Itanium-Based Systems        4DWFP-JF3DJ-B7DTH-78FJB-PDRHK
```

#### 还能激活什么？

KMS 理论上能激活所有微软的 VOL 版本软件，比如 Visio 和  Project。

#### 有什么限制？

软件被 KMS 激活之后，可以使用180天，180天之内能够接入 KMS 服务器所在的网络，就可以自动续期。

#### 最后

#如果你的经济状况允许，请支持正版软件。

OK! 极路由的 KMS_Activator 的教程就到这里。
