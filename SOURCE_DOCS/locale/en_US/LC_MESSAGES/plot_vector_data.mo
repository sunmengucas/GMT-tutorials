Þ    7      Ô                Ü        j  0   ú  &   +  Í   R        H   »            9     $   K  -   p       <   º  3   ÷  ,   +	  ?   X	  '   	  y   À	  ¤   :
    ß
     s     ù  T     ²   g  ª     A  Å  E    ý   M     K  t   L  7  Á     ù  W   {  	   Ó     Ý  $   ê  ¨     B  ¸  p   û     l     s        ­  O  É      o   6!     ¦!  *  )"     T#     j#     q#  Ú   #  E   g$    ­$  é   G&     1'  0   Å'      ö'  Ì   (     ä(  H   )     È)  t   Q*     Æ*  0   ä*  +   +     A+  \   [+  R   ¸+  -   ,  <   9,  )   v,  y    ,  ¬   -  ß  Ç-  ¤   §/     L0  T   d0  »   ¹0     u1  >  	2  ½  H3  
  6    7  t   9  Z  9  u   è:  I   ^;     ¨;  	   ¯;  "   ¹;  ª   Ü;  n  <  X   ö=     O>     T>  ?  n>  %  ®?  |  Ô@  û  QC     ME     ÍE    cF     iG     zG     G  ï   G  L   H   # (ææä»¥ # èéé ­çè¡é½æè¢«è§£è®æè¨»è§£)
> [ç·æ®µ 1 çè¨­å®]
ç·æ®µ 1 çé é» 1
ç·æ®µ 1 çé é» 2
...
> [ç·æ®µ 2 çè¨­å®]
ç·æ®µ 2 çé é» 1
ç·æ®µ 2 çé é» 2
...
> [ç·æ®µ 3 çè¨­å®]
... $ gmt makecpt -Cwysiwyg -T0/20/1 -A70   # -A: %70 éæ
0    64/0/64@70    1    64/0/64@70
1    64/0/192@70   2    64/0/192@70
... (ä»¥ä¸ç¥) $ gmt plot lines.txt -R0/4/0/4 -JX15c -png lines $ gmt plot è¼¸å¥æªåç¨± [é¸é ...] > -W1p,grey,.
# æ³¨æææ¹åäºç¶²æ ¼ç·æ®µçæ¨£å¼è¨­å®ï¼
1 0
1 4
>
2 0
2 4
>
3 0
3 4
>
0 1
4 1
>
0 2
4 2
>
0 3
4 3
> -W2p,black
0 0
4 0
4 4
0 4
0 0
>
0 4
4 0
>
0 0
3 3
>
3 1
3 3
>
1 3
2 4
>
2 4
4 2 > -W1p,grey,.
1 0
1 4
>
2 0
2 4
>
3 0
3 4
>
0 1
4 1
>
0 2
4 2
>
0 3
4 3
> -W2p,black
0 0
4 0
4 4
0 4
0 0
>
0 4
4 0
>
0 0
3 3
>
3 1
3 3
>
1 3
2 4
>
2 4
4 2 > -W3p,black,.
1 0
1 4
>
2 0
2 4
>
3 0
3 4
>
0 1
4 1
>
0 2
4 2
>
0 3
4 3 > -Z0
0 0
2 2
4 0
> -Z3
0 0
2 2
0 4
> -Z6
0 4
1 3
2 4
> -Z9
1 3
2 4
3 3
2 2
> -Z12
3 3
2 2
3 1
> -Z15
3 1
3 3
4 2
4 0
> -Z18
2 4
4 2
4 4 > [å¤éå½¢ 1 çè¨­å®]
å¤éå½¢ 1 çé é» 1
å¤éå½¢ 1 çé é» 2
å¤éå½¢ 1 çé é» 3
...
> [å¤éå½¢ 2 çè¨­å®]
... What You See Is What You Get, å³ãæè¦å³æå¾ãã ``-G``ï¼ç´æ¥æå®å¤éå½¢å¡«è² ``-W``ï¼æå®å¤éå½¢çå¤æ¡ç«ç­æ¨£å¼ ``-W``ï¼æå®ç«ç­æ¨£å¼ ``-Z``ï¼èç±çµ¦å®è²éæªçæ¸å¼æå®å¤éå½¢å¡«è² ``-Z``ï¼èç±çµ¦å®è²éæªçæ¸å¼æå®é¡è² ``basemap`` - è¨­å®ä½ååçåºæ¬è³è¨ ``makecpt`` - **è£½ä½å«æéæåº¦è¨­å®çé¢æ£è²éæª** ``plot`` - **ç¹ªè£½ç·æ®µèå¤éå½¢** gmt begin pieces png
    gmt makecpt -Cwysiwyg -T0/20/1
    gmt plot pieces.txt -R0/4/0/4 -JX15c -L -C -W2p,black
gmt end gmt begin pieces png
    gmt makecpt -Cwysiwyg -T0/20/1    # è²éæ¸å¼ç¯åçº 0 è³ 20ï¼æ¯é 1 åæ¨£
    gmt plot pieces.txt -R0/4/0/4 -JX15c -L -C
gmt end gmt begin tangram_gmt6 png
    gmt makecpt -Cwysiwyg -T0/20/1 -A70
    gmt basemap -R0/4/0/4 -JX15c -Bnews    # è¨­å®åº§æ¨è»¸ç¯å (-R) çåæï¼ä¸ç«åºåº§æ¨è»¸ (-Bnews)
    gmt plot pieces.txt -L -C
    gmt plot lines.txt                     # åå¡«è²åç«éæ¡ï¼ç¢ºä¿éæ¡æçå¨å¡«è²ä¸é¢ãä½ å¯ä»¥è©¦è©¦çæéä¸è¡ç§»å°æ´ä¸æ¹ï¼ç¢ºèªéæåº¦çææè¨­å®ã
gmt end ãä½¿ç¨ ``wysiwyg`` ä½çºæ¯è²éä¸¦å ä¸éæåº¦è¨­å®ï¼æ¥ä¸ä¾ç¹ªè£½ä¸å·§æ¿å¡«è²ãåº§æ¨æ ¼ç·èä¸å·§æ¿éç·ãã ä½¿ç¨çæä»¤èæ¦å¿µ ä¾å¦ï¼è¦ç«åºä¸å·§æ¿ä¸çåå½¢ï¼æåå¯ä»¥ä½¿ç¨å¦ä¸çæªæ¡å§å®¹ï¼ åéç¬¦èå¾æ¹å¯ä»¥æ¥ä¸ ``-W``ã``-Z`` æ ``-G`` (è©³ç´°çèªªæè«åè\ `éè£¡ <https://docs.generic-mapping-tools.org/6.0/plot.html#segment-header-parsing>`_\ )ï¼ å¨ã\ :doc:`scatter_plot`ãä¸­æåçå° ``plot`` å¦ä½èçé»è³æãå¦è¦èçç·æ®µè³æåå¤éå½¢è³æï¼æåå¯ä»¥ä½¿ç¨ç¸åç ``plot`` èªæ³ï¼ å¨æ­¤åä¸­ï¼ä¸åå¤éå½¢é¡è²åä¸ç¸åï¼ä½é½æé»è²éç·£ï¼èä¸å¨ç¤é¢ä¸éææ·¡è²çæ£ç¤å¼æ ¼å­ï¼å¯ä»¥å¹«å©ä½ è¨ç®æ¯åå¤éå½¢çå¤§å°ãè¦è®éäºç·æ¢èå¤éå½¢çé¡è²åæåç¾ï¼æåå¿é è¦å¨è²éæªä¸­å ä¸éæåº¦çè¨­å®ï¼ä¸¦ä¸ä½¿ç¨ä¸åçåºåæä»¤ã å¨æ­¤æªæ¡ä¸­ï¼ç¸½å±æ 6 æ¢ç·æ®µï¼åä¸æ¢æ¯ç´ç·ï¼å¾ä¸æ¢æ¯æ©«ç·ãä»¥ç¬¬ 1 æ¢çºä¾ï¼å®æ¯å¾åº§æ¨ (1, 0) å° (1, 4) çç·æ®µãç¬¬ä¸æ¢ç·æ®µç ``>`` ç¬¦èå¾é¢æ ``-W`` è¨­å®ï¼æå³èéæ¢ç·è¦ä½¿ç¨é»è²ãé»é»æ¨£å¼å 3p å¯¬åº¦ä¾ç¹ªè£½ãä¹å¾ææç ``>`` ç¬¦èå¾é¢é½æ²æä»»ä½è¨­å®ï¼ç¶ ``plot`` å¨ç¹ªåçæåï¼æ\ **èªåæ²¿ç¨ä¹åå·²ç¶è¨­å®éçåæ¸å¼**\ ï¼å æ­¤å¾äºæ¢ç·ç«åºä¾çå¤è§æèç¬¬ä¸æ¢ç¸åãææªæ¡å­çº ``lines.txt``ï¼ç¶å¾ä½¿ç¨å¦ä¸æä»¤ï¼å°±å¯ä»¥ç«åºèæ¯ç¶²æ ¼ã å¨è²éè³æä¸­ï¼``@`` ç¬¦èå¾é¢çå°±æ¯éæåº¦ï¼å æ­¤æ´åé¡è²çæ ¼å¼çºï¼``ç´/ç¶ /è@éæåº¦``ãä½¿ç¨æ­¤è²éç«åï¼ææçé¡è²å°±æè¢«å¥ä¸éæåº¦è¨­å®ãéä¸å­ä½ å°±è½çå°éæãç²å«©ç²å«©çé¡è²äºï¼ å°çç©ºéè³æéå¸¸æä»¥ç¶²æ ¼å½¢å¼æåéå½¢å¼å²å­ãæè¬çåéå¼è³æï¼å¶å¯¦å°±æ¯æè¿°ãé»ãç·ãé¢ãä½ç½®èå½¢ççè³æãæéæ¼å¦ä½ç¹ªè£½é»è³æçæå·§ï¼æåå·²ç¶å¨ã\ :doc:`scatter_plot`\ ãä¸ç« ä¸­æåï¼å æ­¤å¨æ¬ç« ä¸­ï¼å°æèªªæå¦ä½å©ç¨ GMT ç¹ªè£½ç·æ®µä»¥åå¤éå½¢ãç°¡ä»è GMT ç¸å®¹çåéå¼è³ææªæ¡æ ¼å¼ï¼ä»¥åéæåº¦çè¨­å®--éç¨®å¡«è²æå·§éå¸¸é©åç¨å¨å¸¸å¸¸éè¦çå¨ä¸èµ·åç¾çåéå¼è³æä¸ã å¤éå½¢è³æ ``pieces.txt`` å§å®¹å¦ä¸ï¼ä¸¦\ :download:`å¯å¨éè£¡ä¸è¼ <plot_vector_data/pieces.txt>`\ ã å¦ææ¯äºç¶­ç·æ®µï¼é é»å°±æ¯å©æ¬è³æï¼åå¥çº X åº§æ¨å Y åº§æ¨ãå çºæ¯ç·æ®µï¼æä»¥æ¯æ¢ç·è³å°é½è¦æ 2 åé é»ãä¸åç·æ®µä¹éé è¨­ä»¥ ``>`` ç¬¦èééï¼ç¬¦èå¾æ¹å¯ä»¥æ¥ä¸ ``-W`` æè ``-Z``ï¼ä»£è¡¨ ``plot`` å¨ç«åææå°éæ¢ç·ä½¿ç¨çç¹ªåé¸é ï¼ å¾åå¾ ``> -W2p,black`` éå§çé¨ä»½ï¼å°±æ¯ä¸å·§æ¿éæ¡èæ¼åçéçç·æ®µãè®æååè©¦ä¸æ¬¡ä»¥ä¸æä»¤ï¼ æä»¥ä¸çæå­æªæ¡å¦å­æ ``pieces.txt``ï¼ç¶å¾ä½¿ç¨å¦ä¸çæä»¤ç¹ªåï¼ æä»¤ç¨¿ æä½æµç¨ æ¬åççæçµæä»¤ç¨¿å¦ä¸ï¼ æ¬æå­¸é©ç¨æ¼ GMT 6 çç¾ä»£æ¨¡å¼ãå¦é åé± GMT 6 (å³çµ±æ¨¡å¼) è GMT 4-5 ç¹ªè£½ç¸ä¼¼åççæç¨ï¼\ `è«è³éè£¡ <plot_vector_data_gmt5.html>`_ã æ³¨æéè£¡ç ``-L``ï¼éååæ¸æåè¨´ ``plot`` æåç«çæ¯å¤éå½¢ï¼å¦æ­¤ä¸ä¾ ``plot`` å°±æ\ **å¼·å¶å°éç·æ®µ**ãå¦å¤ï¼å¨ç«å¤éå½¢çæåï¼``plot`` æä»¤çé è¨­è¡çºæ¯ç«éèä¸ä¸å¡«è²ãå æ­¤ï¼è¦å ä¸ ``-C`` åè¨´ GMT æåè¦ç¨æ°åµé çè²éæªå°å¤éå½¢å¡«è²ã ç«åºå­é¢é«éª°å­çä»»ä¸ç¨®å±éåï¼ä½¿ç¨ ``wysiwyg`` ä½çºæ¯è²éçºæ¯é¢å¡ä¸ä¸åçé¡è²ã ç®æ¨ ç´æ¥è§ç\ `æä»¤ç¨¿`_ çèµ·ä¾è³å¿æç®å¤äºï¼æå¾çåé¡ï¼å°±æ¯æå¤éå½¢åç·æ¢çå å¨ä¸èµ·èä¸æå°å½¼æ­¤ãéååé¡å¯ä»¥ç°¡å®çä»¥å·æ\ **éæåº¦**\ è¨­å®çè²éè§£æ±ºã``makecpt`` ç ``-A`` é¸é å¯ä»¥ç¨ä¾æå®éæåº¦ï¼æåä¾è©¦èå¨çµç«¯æ©ä¸­è¼¸å¥ï¼ çèµ·ä¾éä¸é¯ï¼æ¥ä¸ä¾è®æåçä¸ä¸è¦æéº¼ç«å¤éå½¢ãå¶å¯¦å¤éå½¢è³æèç·æ®µå¤§åå°ç°ï¼å°±æ¯æææçé é»åº§æ¨ç´éå¨æªæ¡å§èå·²ï¼ä¸éï¼å¤éå½¢çé é»æ¸ç®æå°è¦æ 3 åãGMT å¯æ¥åçå¤éå½¢æªæ¡æ ¼å¼ï¼å¦ä¸æç¤ºï¼ çèµ·ä¾éå¸¸ä¸é¯ï¼ä¸éè«æ³¨æå°åçéæ¡ï¼ç·æ®µçå¯¬åº¦ä¼¼ä¹è·åçå§é¨å¤éå½¢éç·£ç·æ®µå¯¬åº¦ä¸ä¸æ¨£ãéæ¯å çº GMT ææ²¿èå¤éå½¢çéç·£ (èä¸æ¯é»è²ç·æ®µçéç·£) è£åªå½±åï¼å æ­¤éæ¡çç·æ®µå¯¬åº¦æè®æåæ¬çä¸åãå¦æä½ è¦ºå¾éæ²éä¿ï¼é£åç¡å¦¨ï¼ä½å¦æä½ æ¯åå®ç¾ä¸»ç¾©èï¼ä¸æ³çå°ä¸ä¸è´çç·æ®µå¯¬åº¦ï¼å¯ä»¥é¸æçæ¿ä»£æ¹æ¡ï¼å°±æ¯æå¤éå½¢éæ¡æªå° ``lines.txt`` è£¡é¢åæç·æ®µè³æï¼èç¶²æ ¼ç·æ¢ä¸èµ·ç¹ªè£½ãå æ­¤ï¼æåç ``lines.txt`` è¦å¤å¢å å¹¾è¡è³è¨ï¼ ç¬¬ä¸åå¤éå½¢æ¯ä¸å·§æ¿åºé¨çå¤§ä¸è§å½¢ï¼åº§æ¨å¾ (0, 0)ã(2, 2) å° (4, 0)ï¼åä½å¯ä»¥è©¦è©¦çæ¾åºå¶ä»å­åå¤éå½¢åå¥æ¯ä»éº¼å½¢çãæ³¨æå¨æ¯åå¤éå½¢ç ``>`` å¾æ¹é½æ ``-Z`` è¨­å®ï¼ä»£è¡¨èæååªè¦çµ¦å®è²éæªï¼GMT å°±æèªåçä¾ç§ Z å¼èè²éæªçå°æï¼çºæ¯åå¤éå½¢å¡«ä¸ä¸åçé¡è²ãå¨ GMT ä¸­ï¼æä¸åç¨±çºã\ **wysiwyg**\ [#]_\ ãçè²éæªï¼æé©åç¨ä¾ç¶éç¨®ä¾ç§æ¸å¼æå®ä¸åç¨®é¡é¡è²çåèè²éãå®çé¡è²å¦ä¸æç¤ºï¼ ç·æ®µè³æ ``lines.txt`` å§å®¹å¦ä¸ï¼ä¸¦\ :download:`å¯å¨éè£¡ä¸è¼ <plot_vector_data/lines.txt>`\ ã ç·æ®µé¡§åæç¾©ï¼å°±æ¯å¾å¤åé é»é£èµ·ä¾çç·æ¢ãGMT æ¥åä»¥ç´æå­æ ¼å¼è¨è¼çç·æ®µè³æï¼å¦ä¸æç¤ºï¼ ç¹ªè£½ä¸å¼µ\ `ä¸å·§æ¿ <https://zh.wikipedia.org/wiki/%E4%B8%83%E5%B7%A7%E6%9D%BF>`_\ çç¤é¢ï¼å¦ä¸æç¤ºãä¸å·§æ¿æ¯ä¸ç¨®é¡ä¼¼æ¼åçç©å·ï¼éç©ç®æ¨éå¸¸æ¯å©ç¨ 7 åå¤éå½¢æ¼åºæå®çåæ¡ãééæ¼åºçæ¯æ­£æ¹å½¢ï¼ä¹æ¯ææçåæ¡è£¡æåºæ¬çä¸ç¨®ã ç¹ªè£½åéå¼è³æ ç¿é¡ è§ç\ `æçµçåç`_ è©³ç´°çèªªæè«åè\ `éè£¡ <https://docs.generic-mapping-tools.org/6.0/plot.html#segment-header-parsing>`_ãæåå°±ä¾ç ç©¶ä¸ä¸ï¼å¦æè¦ç«åºä¸å·§æ¿çèæ¯ç¶²æ ¼ï¼éè¦æéº¼æ¨£çç·æ®µæªæ¡ï¼ éä¸å­ä¸å·§æ¿ä¹ææ¨¡ææ¨£äºï¼æåé ä¾¿ä¾å ä¸éæ¡ï¼ Project-Id-Version: GMT æå­¸æå 1.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-03-28 17:12-0400
PO-Revision-Date: 2020-03-28 09:11-0400
Last-Translator: Whyjay Zheng <jhsttshj@gmail.com>
Language: en_US
Language-Team: English (United States)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 # (all lines starting with "#" will be interpreted as comments)
> [settings of segment 1]
segment 1, vertex 1
segment 1, vertex 2
...
> [settings of segment 2]
segment 2, vertex 1
segment 2, vertex 2
...
> [settings of segment 3]
... $ gmt makecpt -Cwysiwyg -T0/20/1 -A70   # -A: 70% transparent
0    64/0/64@70    1    64/0/64@70
1    64/0/192@70   2    64/0/192@70
... (skipping) $ gmt plot lines.txt -R0/4/0/4 -JX15c -png lines $ gmt plot input_file [-options] > -W1p,grey,.
# Note tht I changed the style of the grid lines!
1 0
1 4
>
2 0
2 4
>
3 0
3 4
>
0 1
4 1
>
0 2
4 2
>
0 3
4 3
> -W2p,black
0 0
4 0
4 4
0 4
0 0
>
0 4
4 0
>
0 0
3 3
>
3 1
3 3
>
1 3
2 4
>
2 4
4 2 > -W1p,grey,.
1 0
1 4
>
2 0
2 4
>
3 0
3 4
>
0 1
4 1
>
0 2
4 2
>
0 3
4 3
> -W2p,black
0 0
4 0
4 4
0 4
0 0
>
0 4
4 0
>
0 0
3 3
>
3 1
3 3
>
1 3
2 4
>
2 4
4 2 > -W3p,black,.
1 0
1 4
>
2 0
2 4
>
3 0
3 4
>
0 1
4 1
>
0 2
4 2
>
0 3
4 3 > -Z0
0 0
2 2
4 0
> -Z3
0 0
2 2
0 4
> -Z6
0 4
1 3
2 4
> -Z9
1 3
2 4
3 3
2 2
> -Z12
3 3
2 2
3 1
> -Z15
3 1
3 3
4 2
4 0
> -Z18
2 4
4 2
4 4 > [settings of polygon 1]
polygon 1 vertex 1
polygon 1 vertex 2
polygon 1 vertex 3
...
> [settings of polygon 2]
... What You See Is What You Get. ``-G``: specify a polygon filling color directly ``-W``: specify pen style for polygon edges ``-W``: specify pen style ``-Z``: specify a filling color by giving a value (which will be later linked to a colormap) ``-Z``: specify color by giving a value (which will be later linked to a colormap) ``basemap`` - set up info of the mapping area ``makecpt`` - **make a colormap with transparency settings** ``plot`` - **plot segments and polygons** gmt begin pieces png
    gmt makecpt -Cwysiwyg -T0/20/1
    gmt plot pieces.txt -R0/4/0/4 -JX15c -L -C -W2p,black
gmt end gmt begin pieces png
    gmt makecpt -Cwysiwyg -T0/20/1    # colormap range is 0 to 20, sampled with an interval of 1
    gmt plot pieces.txt -R0/4/0/4 -JX15c -L -C
gmt end gmt begin tangram_gmt6 png
    gmt makecpt -Cwysiwyg -T0/20/1 -A70
    gmt basemap -R0/4/0/4 -JX15c -Bnews    # setting the axis ranges (-R) while not plotting the axes themselves (-Bnews)
    gmt plot pieces.txt -L -C
    gmt plot lines.txt                     # filling first and edges later. This makes sure the lines would be on the top, above the filling. You can try to move this line to an earlier place in the script and see what the transparency settings can do.
gmt end "Use ``wysiwyg`` as the master colormap and add transparency settings, and then draw tangram polygons with color filling, grid lines, and the edge of each polygon." Commands and Techniques For example, we can use the following content to draw all the polygons in a tangram: We can also add ``-W``, ``-Z``, and/or ``-G`` options after the ``>`` symbol (see `this page <https://docs.generic-mapping-tools.org/6.0/plot.html#segment-header-parsing>`_ for details):  In :doc:`scatter_plot`, we have seen how ``plot`` deals with point data. For processing segments and polygons, we can use the same ``plot`` syntax: In this figure, each polygon piece has a distinct color and a black edge. Also on the figure are pale-gray grid lines that can help to calculate the area of each polygon. To make all of them appear on a single figure, we have to add the transparency settings to the colormap using an additional option for ``makecpt``. There are 6 segments in this file; the first three are vertical, and the last three are horizontal. Take the first segment for example, it is a segment from coordinate (1, 0) to (1, 4). To the right of the ``>`` symbol of the first segment, we can see a ``-W`` option, which means this segment would be plotted as a black, dotted, 3-point wide line. There are no options associated with all the other ``>`` symbols. When ``plot`` is reading this file, it would **automatically use the previous value for the next segment**. Hence, all the other segments will use the same line style from this first segment. Save this file as ``lines.txt``, and enter the following command to plot the background grid: In the colormap information, the number after ``@`` is the transparency value. The full format of color thus becomes ``R/G/B@Transparency``. Use this colormap for drawing the figure and you will see all the colors being transparently painted. Seems cute, doesn't it? Geospatial data are often stored as a raster or a vector format. The so-called vector data describe the locations and the shapes of points, lines, and polygons. We have mentioned how to plot point data in the chapter :doc:`scatter_plot`, and in this chapter we are going to show you how to plot line segments and polygons using GMT. In addition, we will also describe a bit about the GMT-compatible vector file format, and how to set up transparency -- a useful way to illustrate a map with many layers of vector data. The polygon data ``pieces.txt`` are as follows, and are available at :download:`here <plot_vector_data/pieces.txt>`. If you are plotting a 2-D segment, your vertices would take 2 columns, which are X and Y coordinates respectively.  Every segment must have at least 2 vertices. The ``>`` symbol is used to separate each segment, and after that we can add ``-W`` or ``-Z`` settings in the same line. They indicate the drawing options for the corresponding segment: The last half part (starting from ``> -W2p,black``) is the polygon edges in the tangram. Let us retry these commands: Save the text as ``pieces.txt`` and make the figure using these commands: Script Procedure The final script for the image is: This instruction is for the Modern Mode in GMT 6. For making the same map using the GMT 6 Classic Mode or GMT 4-5, `Please go to this page <plot_vector_data_gmt5.html>`_. Note that the ``-L`` option would tell ``plot`` that we are drawing polygons, and then ``plot`` would **close the segments to form polygons**. Also, when plotting polygons the default behavior of ``plot`` command is to draw edges only instead of color filling. Therefore, we need to add ``-C`` telling GMT we are filling these polygons using the newly made colormap. Draw a net of dice (6 faces). Use ``wysiwyg`` to fill each face with a different color.  Goal Go to the final `Script`_ Ok now it looks much better. Our last problem is to add all lines and polygons together on this figure without blocking any of them. We can simply set up a colormap with **transparency** settings and solve this problem. The ``-A`` option of ``makecpt`` is used to specify transparency. Let's enter this on the terminal: Looks not bad! Now it's time to deal with the polygons. In fact, the polygon data format is very similar to the segment data since it also records only the vertices in the file. However, you have to have at least three vertice to form a polygon. The GMT-acceptable polygon format is like this: Almost perfect. There is only one little thing: the line at the edge of the figure seems thinner than the edges of the polygons inside the tangram. This is because GMT cuts the image by the edge of the polygons instead of the edge of the black lines; therefore, the edge width would be only half of the original width. If you think this is ok, great; but if you are a perfectionist and don't want to see the lines not consistent in width, here's another way for you: add the polygon edges to ``lines.txt`` as segment data so that they will be plotted with the grid lines. To do this, open ``lines.txt`` and add more lines at the bottom: The first polygon is the triangle at the bottom of the tangram. Its vertices are (0, 0), (2, 2), and (4, 0). You can try to figure out what other polygons represent what shape! Note that for each polygon, there is a ``-Z`` setting after ``>``, which means GMT will automatically fill the polygon using this as the value to looking up the color from the colormap. There is a built-in colormap in GMT called **wysiwyg** [#]_, very suitable for categorical filling like this case. Here's its color combination: The segment data ``lines.txt`` are as follows, and are available for downloading :download:`here <plot_vector_data/lines.txt>`. As its name suggest, a segment is just a connection between two or more points (vertice). GMT accepts segment data in text (ascii) format as follows: Draw a `tangram <https://en.wikipedia.org/wiki/Tangram>`_ like this one. The tangram is a dissection puzzle and your goal is usually to combine all 7 pieces to form the assigned figure. Here the figure is a square, the most basic one among all possible figures. Plot Vector Data Exercise Check the `final figure`_ For detailed information, please go to `this page <https://docs.generic-mapping-tools.org/6.0/plot.html#segment-header-parsing>`_. Now let's take a look at how to design the segment data for the background grid lines on the tangram figure: Now this tangram is really fleshing out! Here we are also adding the edges:  