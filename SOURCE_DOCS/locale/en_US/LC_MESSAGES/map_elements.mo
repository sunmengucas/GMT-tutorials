Þ    <      ü              Ü  À  Ý  f    Õ      Û  Á   ÷  N  ¹  C     °  L     ý  f     |  ÿ  W  |  ­   Ô  -     2   °  t  ã  -   X!  Ú   !  9   a"  /   "  5   Ë"  @   #  %   B#     h#  0  #  K   ±$     ý$  ß  %     ä&  û   ý&  ;   ù'     5(     B(    U(  R   t*  Ü  Ç*  9   ¤,  V   Þ,     5-    T-  Å   k.  	  1/  	   ;1    E1    Ô2     ç3  $   ô3  ´  4  !  Î5     ð6     ÷6  Ê  7  \  Ý9     :?  Ä   A?  k   @     r@     @  ë  ¨@    E  À  .G  f  ïH  Õ  VO    ,T  Á   HW  N  
X  C   YY  °  Y     N\  f   é\  |  P]  W  Í^  ­   %a  -   Óa  2   b  t  4b  -   ©d  Ú   ×d  9   ²e  /   ìe  5   f  @   Rf  %   f     ¹f  0  Ñf  K   h     Nh  ß  Uh     5j  û   Nj  ;   Jk     k     k    ¤k  R   Ãm  Ü  n  9   óo  V   -p     p    £p  Å   ºq  	  r  	   t    t    #v     6w  $   Cw  ´  hw  !  y     ?z     Dz  Ê  _z  \  *}       Ä     k   S     ¿     Ú  ë  õ   # ==== è¨­å®è®æ¸ ====
out_ps="Rub_al_Khali.ps"
in_grd_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd"    # è¼¸å¥æªï¼ä½çºç´è² (R) æ³¢æ®µ
in_grd_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd"    # è¼¸å¥æªï¼ä½çºç¶ è² (G) æ³¢æ®µ
in_grd_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd"    # è¼¸å¥æªï¼ä½çºèè² (B) æ³¢æ®µ

# ==== ç¹ªè£½è¡æå½±å ====
grdimage $in_grd_r $in_grd_g $in_grd_b -JX15c/0 -P > $out_ps # ==== è¨­å®è®æ¸ ====
out_ps="Rub_al_Khali.ps"
in_grd_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd"    # è¼¸å¥æªï¼ä½çºç´è² (R) æ³¢æ®µ
in_grd_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd"    # è¼¸å¥æªï¼ä½çºç¶ è² (G) æ³¢æ®µ
in_grd_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd"    # è¼¸å¥æªï¼ä½çºèè² (B) æ³¢æ®µ

# ==== èª¿æ´ GMT é è¨­åæ¸ ====
gmtset MAP_FRAME_TYPE=plain

# ==== ç¹ªè£½è¡æå½±å ====
    # åå¾ -R è³è¨ä¸¦ç«å (æ³¨æ -J çè¨­å®ï¼)
R=$(grdinfo $in_grd_r -I1/1)
grdimage $in_grd_r $in_grd_g $in_grd_b $R -JX15c/0 -P -K > $out_ps
    # ç¹ªè£½ä¸å«ä»»ä½æ¨è¨çéæ¡
psbasemap -R -J -O -K -B0 >> $out_ps

# ==== ç¹ªè£½å°ååç´  ====
    # ç¹ªè£½æåé (æ³¨æ -J çè¨­å®ï¼)
        # GMT 5.2
# psbasemap -R -JU40Q/15c -O -K -TdjRT+w2c+f+l\ ,\ ,\ ,N+o1c/1.8c -F+c0.2c/0.2c/0.2c/1c+gwhite@50+r0.5c --FONT=15p >> $out_ps
        # GMT 5.4
psbasemap -R -JU40Q/15c -O -K -TdjRT+w2c+f+l,,,N+o1c/1.8c -F+c0.2c/0.2c/0.2c/1c+gwhite@50+r0.5c --FONT=15p >> $out_ps
    # ç¹ªè£½æ¯ä¾å°º
psbasemap -R -J         -O -K -LjRB+c22+w10k+f+o2c/2c+u -F+gwhite@50  >> $out_ps
    # ç¹ªè£½ååï¼æ¾ä¸é°è¿ååçæµ·å²¸ç·ååçä½ç½®
pscoast -R-700000/1100000/1920000/3180000 -JU40Q/5c -O -K -Di -Wthinner -Gwhite -Sgray -B0 -N1/thinnest >> $out_ps
    # æ¨ä¸ä¸»å°åå¨ååä¸­çä½ç½® (æ³¨æ -J çè¨­å®ï¼) èå¶ä»æå­
psbasemap -R -JX5c/0 -O -K -D${R#*-R} -F >> $out_ps
echo -300000 2300000 Saudi Arabia | pstext -R -J -O -K -F+f8p+jMC >> $out_ps

# ==== éé (å¯«å¥ EOF) èè½æª ====
psxy -R -J -O -T >> $out_ps
psconvert $out_ps -A -P -Tg # ==== è¨­å®è®æ¸ ====
out_ps="Rub_al_Khali.ps"
in_grd_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd"    # è¼¸å¥æªï¼ä½çºç´è² (R) æ³¢æ®µ
in_grd_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd"    # è¼¸å¥æªï¼ä½çºç¶ è² (G) æ³¢æ®µ
in_grd_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd"    # è¼¸å¥æªï¼ä½çºèè² (B) æ³¢æ®µ

# ==== èª¿æ´ GMT é è¨­åæ¸ ====
gmtset MAP_FRAME_TYPE=plain

# ==== ç¹ªè£½è¡æå½±å ====
    # åå¾ -R è³è¨ä¸¦ç«å (æ³¨æ -J çè¨­å®ï¼)
R=$(grdinfo $in_grd_r -Ir)
grdimage $in_grd_r $in_grd_g $in_grd_b $R -JX15c/0 -P -K > $out_ps
    # ç¹ªè£½ä¸å«ä»»ä½æ¨è¨çéæ¡
psbasemap -R -J -O -K -B0 >> $out_ps

# ==== ç¹ªè£½å°ååç´  ====
    # ç¹ªè£½æåé (æ³¨æ -J çè¨­å®ï¼)
psbasemap -R -JU40Q/15c -O -K -TdjRT+w2c+f+l,,,N+o1c/1.8c --FONT=15p >> $out_ps
    # jRT: æºæ¾ä½ç½®å¨å°åå³ä¸è§
    # +w2c: åç¤ºå¯¬åº¦ 2 å¬å
    # +f: ä½¿ç¨æ¯è¼è¯éºçç¾ç¤åå½¢ä»£æ¿æåç¬¦è
    # +l,,,N: å¦ä¸æ®µè½æè¿°
    # +o1c/1.8c: åå½¢å¾åæ¬çé¨é»åå·¦åç§» 1 å¬åï¼åä¸åç§» 1.8 å¬å
    # --FONT=15p: æå­ "N" çå¤§å°

# ==== éé (å¯«å¥ EOF) èè½æª ====
psxy -R -J -O -T >> $out_ps
psconvert $out_ps -A -P -Tg # ==== è¨­å®è¼¸å¥æª ====
in_tif_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4.TIF"
in_tif_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3.TIF"
in_tif_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2.TIF"
# ==== ä½¿ç¨è¿´åéä¸èçè¼¸å¥æª ====
for i in $in_tif_r $in_tif_g $in_tif_b; do
    # ==== è£å GeoTIFF å½±å ====
    gdal_translate -projwin 190000 2460000 250000 2410000 $i ${i/.TIF/_s.TIF}
    # ==== è¨ç®å½±åçç´æ¹åï¼è¨­å®å½±åé£½å (é»è²æç½è²) æçåç´ å¼ ====
    vmin=$(grdhisteq ${i/.TIF/_s.TIF} -D -C50 | head -n 1 | cut -f 2)
    vmax=$(grdhisteq ${i/.TIF/_s.TIF} -D -C50 | tail -n 1 | cut -f 1)
    # ==== ä½¿ç¨ååè¨­å®çå½±åé£½åå¼ä¾è½æª ====
    gdal_translate -of NetCDF -scale $vmin $vmax ${i/.TIF/_s.TIF} ${i/.TIF/_s.grd}
done $ gdalinfo LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd
..... #(åç¥)
transverse_mercator#spatial_ref=PROJCS["WGS 84 / UTM zone 40N",GEOGCS["WGS 84",DATUM["WGS_1984".....
..... #(å¾ç¥) $ grdhisteq -D LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd
# -D: è¼¸åºè³è¨å°æªæ¡æè¢å¹ä¸
0   14      0
14  25      1
25  35      2
35  42      3
42  49      4
49  56      5
56  63      6
63  71      7
71  79      8
79  91      9
91  111     10
111 139     11
139 167     12
167 192     13
192 221     14
221 587     15 $ grdimage ç´è²ç¶²æ ¼æª(R) ç¶ è²ç¶²æ ¼æª(G) èè²ç¶²æ ¼æª(B) $ grdinfo LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd
..... #(æéè£¡ç¥éäºä¸äºæ®µè½)
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: Title: GDAL Band Number 1
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: Grid file format: nf = GMT netCDF format (32-bit float), COARDS, CF-1.5
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: x_min: 190015 x_max: 249985 x_inc: 30 name: x coordinate of projection [m] nx: 2000
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: y_min: 2410014.997 y_max: 2459985.003 y_inc: 29.9940011998 name: y coordinate of projection [m] ny: 1667
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: z_min: NaN z_max: NaN name: GDAL Band Number 1 $ grdinfo LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd -Ir
# -Ir: åå¾å°åç X/Y éçï¼ä¸¦ä¸åå³ -R å­ä¸²
-R190015/249985/2410000/2460000 $ psbasemap -Tdåº§æ¨+wå¯¬åº¦ï¼lè¥¿,æ±,å,åååæ¹ä½çå­ä¸²+oæ°´å¹³åç§»é/åç´åç§»é :download:`LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd <map_elements/LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd>` :download:`LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd <map_elements/LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd>` :download:`LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd <map_elements/LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd>` Landsat è¡æå½±åå¯ä»¥å¾ç¾åå°è³ªèª¿æ¥å± (USGS) ç®¡ççç¶²ç« `EarthExplorer <https://earthexplorer.usgs.gov/>`_ åå¾ã\ åå¾ EarthExplorerï¼ç¶å¾å¨ãAddress/Placeãæå°çå°æ¹è¼¸å¥ *Rubâ al Khali*ï¼ç¶å¾æä¸ `show`ï¼é¸æä¸æ¹åºç¾\ ç *é­¯ååå©æ²æ¼ * ä¸æ¬ãç±æ¼æ²æ¼ ç¯åå¾å¤§ï¼ä½ å¯ä»¥ææ³å°åä¸çç´è²å®ä½é»å°è¼çºé è¿ç¯ä¾å°åçå°æ¹ãæ¥èï¼æä¸ä¸æ¹ç `Data Sets >>`ã\ ä½ å¯ä»¥ä½¿ç¨æå°æ¡æä¸æ¹çåé¡ç®éï¼æ¾å°ä¸¦å¾é¸ *Landsat 8 OLI/TIRS C1 Level-1* çè³æéï¼ç¶å¾æä¸ `Results >>`ã Peter Vincent (2008). `Saudi Arabia: an environmental overview <https://books.google.com/books?id=Vacv2wy3yd8C&pg=PA141>`_. Taylor & Francis. p. 141. ISBN 978-0-415-41387-9. ``gmtset`` - æ´æ¹ GMT çé è¨­ä½ååæ¸ ``grdhisteq`` - **æ¥çç¶²æ ¼æªçæ¸å¼åä½** ``grdhisteq`` é è¨­çè¼¸åºï¼æ¯æææçåç´ å¼ä¾ç§å¤§å°ååæ 16 ç­åãå¾è¼¸åºè³æä¸­ï¼æåå¯ä»¥ç¥éåç´ å¼ä½å¨ 0 å° 14 ä¹éçåç´ \ ä½äºåå­åä¹ä¸ï¼èåç´ å¼å¨ 221 å° 587 ä¹éçåç´ ä¹ä½äºåå­åä¹ä¸ãæ¥ä¸ä¾ï¼æåå°±è©¦èä½¿ç¨ ``grdimage`` ä¾è¼¸åºå½±åççã\ å¨ä¹åçç« ç¯ï¼æåä½¿ç¨ ``grdimage`` æéè¦çµ¦å®å°æçè²éæªï¼è®æä»¤ç§èè¼¸å¥æªåç´ å¼çå¤§å°ä¾çµ¦å®é¡è²ãå¦ææåæ³è¦ä¸ç¶ç±è²éæª\ ç´æ¥æå®æ¯ååç´ çé¡è²ï¼``grdimage`` ä¹æ¯å¯ä»¥ä½å°ï¼ä¸éè¦éµå¾ªä»¥ä¸çè¼¸å¥æ¹æ³ï¼ ``grdimage`` - **ä»¥ RGB è³æé²è¡ç¹ªå** ``grdimage`` ç ``-R`` é¸é ä¹æ¥åç¶²æ ¼æªç¶è¼¸å¥åæ¸ï¼å¨æ­¤çæ³ä¸ï¼ç¨å¼æä½¿ç¨ç¶²æ ¼æªç X/Y éçç¶æ ``-R`` çåæ¸ãå æ­¤ï¼\ å¨ä¸ä¾ä¸­ç ``grdimage`` ä¸è¡ä¹å¯ä»¥æ¹æéæ¨£ï¼ ``grdinfo`` - **ç±ç¶²æ ¼è³æå»ºç«** ``-R`` **è¨­å®** ``psbasemap`` - **æ·»å ä¸åçå°ååç´ ** ``pscoast`` - ç¹ªè£½æµ·å²¸ç·ãåçèæµ·åå¡«è² ``psconvert`` - æ ps æªè½æ png æªä¸¦ä¿çéæåº¦è¨­å® ``pstext`` - å¨å°åä¸å å¥æå­ ``psxy`` - è¼¸åºæªå°¾ gmtset MAP_FRAME_TYPE=plain
R=$(grdinfo $in_grd_r -Ir)
grdimage $in_grd_r $in_grd_g $in_grd_b $R -JX15c/0 -P -K > $out_ps   # -JX15c/0 ä¸­ç 0 ææ Y è»¸ä½¿ç¨è X è»¸ç¸åçæ¯ä¾å°º
psbasemap -R -J -O -K -B0 >> $out_ps    # å çº -R å -J é½å·²ç¶å¨ grdimage è£¡çµ¦å®ï¼ä¸ç¨åçµ¦ç¬¬äºæ¬¡ grdimage $in_grd_r $in_grd_g $in_grd_b -R$in_grd_r -JX15c/0 -P -K > $out_ps ãã ä¸è¼ä¹å¾è§£å£ç¸®ï¼ä½ æç¼ç¾å¶ä¸­æè¨±å¤ GeoTIFF æªæ¡ï¼æ¯åæªæ¡ä»£è¡¨ä¸åç¹å®çå½±åæ³¢æ®µã\ `Landsat ç¶²ç«ä¸ <https://landsat.usgs.gov/what-are-band-designations-landsat-satellites>`_\ èªªæäºæ¯åç·¨èåèªä»£è¡¨çæ³¢æ®µãå¨æ¬æå­¸ä¸­ï¼\ æåè¦ä½¿ç¨å¯è¦åçç´ãç¶ ãèä¸åæ³¢æ®µ (RGB)ï¼ç·¨èåå¥æ¯ B4ãB3 å B2ãçºäºæ¹ä¾¿åäº«è¼¸å¥æªä»¥åå¢å¼·å½±åçå°æ¯ï¼æå°éä¸åå½±åé²è¡äº\ å¦ä¸æä½ï¼ ä½¿ç¨çæä»¤èæ¦å¿µ ä½¿ç¨çè³æ¬å¦ä¸æç¤ºï¼å¶ä¸­éç¨äº GDAL å½å¼åº«ä¸­ç ``gdal_translate`` è· GMT ä¸­ç ``grdhisteq`` æä»¤ã\ ç¸éçæä½å°å¨\ **ä¹å¾çç« ç¯**\ ä¸­ä»ç´¹ï¼éè£¡å°±ä¸å¤å è´è¿°ï¼æéå¿æ¾å¨å°ååç´ çç¹ªè£½ä¸ã ä½¿ç¨ç´æ¹åå¢å¼·å½±åå°æ¯ (Histogram Stretching)ã åç½®ä½æ¥­ å å¥å°ååç´  å¯ä»¥çå°åå³çè¨æ¯ä¸­ï¼å·²ç¶æç§ ``-R`` çåæ¸æ ¼å¼å¹«ä½ æ´çå¥½äºãå æ­¤æå¿«çæ¹æ³ï¼å°±æ¯ææä»¤çè¼¸åºè½å­çºè®æ¸ï¼åæ¾å°å¶ä»çæä»¤ä¸­å°±å¯ä»¥äºã\ å¦å¤ï¼éæ¬¡æåæ²æè¦å¨éæ¡ä¸å ä¸ä»»ä½ç¶ç·¯åº¦æ X/Y åº§æ¨ï¼å æ­¤å¨ ``psbasemap`` ä¸­ï¼æåå¯ä»¥è¨­å® ``-B0`` ä¾éææ­¤è¦æ±ãè¨å¾ç«ä¹åä¹è¦èª¿æ´ GMT çè®æ¸ ``MAP_FRAME_TYPE`` çº ``plain``ï¼éæ¨£éæ¡æææ¯æ¨¸å¯¦çé»ç·æ¢èä¸æ¯è¯éºçæé¦¬ç´ãéä¸é¨ä»½çè³æ¬åèµ·ä¾å¦ä¸ï¼ å¨ç¹ªåä¹åï¼æååä¾ä½¿ç¨ ``grdinfo`` ç¢ºèªä¸ä¸è¦ä½¿ç¨çè³æã å¨è³æ¬ä¸­æå¹¾ä»¶äºæè¦æ³¨æãç¬¬ä¸ï¼æå½±æ³çé¸ææ¯ ``-JX``ï¼éæ¯å çºç¶²æ ¼æªå·²ç¶ä½¿ç¨ UTM åº§æ¨ï¼æåä¸éè¦å¨ GMT å§å¤å ä¸æ¬¡æå½±åº§æ¨çè½æï¼\ ç¬¬äºï¼å¨ ``-JX15c`` å¾é¢éæå ``/0``ï¼æå³è Y è»¸ä½¿ç¨è X è»¸ç¸åçæ¯ä¾å°º (ä¸å çè©±ï¼åºåææ°¸é ä¿ææ­£æ¹å½¢)ï¼ç¬¬ä¸ï¼å¨ 0 è³ 255 ä¹éçåç´ å¼ææè¢«æºç¢ºè§£è®ï¼è¶é 255 çå¼é½æè¢«è§£è®æ 255ãä»¥ä¸å°±æ¯åºåçæ¨£å­ï¼ å¤é¨æä»¤ ``echo`` - æè³æè¼¸å¥å°ç®¡ç·å½ä»¤ä¸­ å¦ä½ä½¿ç¨æ­£ç¢ºç ``-J`` æå½±é¸é å¥çè¡æå½±åèå¶ä»å°çç©ºéè³æ å¦ä½ç¹ªè£½åå (Map Inset) å¦æä¸æ¬¡æå®ä¸åç¶²æ ¼æªï¼``grdimage`` æä½¿ç¨æå® RGB é¡è²å¼çæ¹å¼ç¹ªåï¼éæç¬¬ä¸åç¶²æ ¼æªæè¢«ç¶ä½ç´è²åç´ å¼ï¼ç¬¬äºåç¶²æ ¼æªæ\ è¢«ç¶ä½ç¶ è²åç´ å¼ï¼ç¬¬ä¸åç¶²æ ¼æªæè¢«ç¶ä½èè²åç´ å¼ãæåé¦¬ä¸å°±ä¾è©¦è©¦çï¼ å¦æä½ ç¼ç¾è³æ¬å¯ä»¥é å©å·è¡ï¼ä½æ¯æåéä¸¦æ²æè¢«ç«åºä¾ï¼é£éº¼å¾æå¯è½æ¯æå½±æ³åºäºåé¡ï¼å¯ä»¥æª¢æ¥ä¸ä¸ ``-J`` é¸é æ¯å¦å¦ä¸æè¿°çé å©è¨­å®äºã å¾éè£¡å¯ä»¥çåºæåçè³æä¸¦ä¸æ¯ä½¿ç¨ç¶ç·¯åº¦åº§æ¨ï¼èæ¯æåæå½±åº§æ¨ï¼æ¯ååç´ çå°ºå¯¸æ¯ 30 å¬å°ºãå¦æä½¿ç¨ ``gdalinfo`` ç¢ºèªåæ¬ç GeoTIFF æªï¼å¯ä»¥é²ä¸æ­¥ç¥ééååº§æ¨ç³»çµ±æ¯ UTM Zone 40Nãåç´ çæå¤§èæå°å¼å¨éè£¡é¯èª¤çé¡¯ç¤ºæ NaNï¼æåéè¦ä½¿ç¨ ``grdhisteq`` ä¾é²ä¸æ­¥çæª¢æ¥ã\ ``grdhisteq`` æ¯ GMT ä¸­å°ç¶²æ ¼æªé²è¡æ¸å¼çµ±è¨çå·¥å·ï¼æåè¦ä½¿ç¨æåºæ¬çèªæ³ï¼å¨è¢å¹ä¸è¼¸åºç¶²æ ¼æªæ¸å¼çåä½æå½¢ã æä»¤ç¨¿ æ¥ä¸ä¾ï¼æè©²ææè¨±å¤è³æåç¾å¨å·¦å´æå°çµææ¬ä¸­ãæ¾å°åçº *LC08_L1TP_160045_20170408_20170414_01_T1* çè³æï¼\ æä¸ãDownload Optionsãçåç¤ºãæ¬è³æéè¦ç»å¥æè½ä¸è¼ï¼å¦æä½ å°æªæ USGS å¸³èï¼å¯ä»¥è±å¹¾åéè¨»åï¼\ åªéè¦ä¸çµé»å­ä¿¡ç®±å³å¯ãç»å¥ä¹å¾ï¼é¸æ `Level-1 GeoTIFF Data Product (886.0 MB)` çè³ææ ¼å¼ã æ¥ä¸ä¾ï¼æåéæä¸åå°ååç´ éè¦ç¹ªè£½ï¼(1) æåç¬¦èï¼(2) æ¯ä¾å°ºï¼(3) æé å°åãéäºå¾å¤å°åä¸­æçå°éä»¶ï¼é½å¯ä»¥ä½¿ç¨ ``psbasemap`` ä¾ç«ã\ è®æååå¾æç°¡å®çæåç¬¦èéå§ï¼éè¦æ·»å çé¸é æ¯ ``-Td``ï¼ æä½æµç¨ æ¬å°åçæçµæä»¤ç¨¿å¦ä¸ï¼ æ³¨æ ``UTM zone 40N`` çå­æ¨£ï¼éå°±æ¯ UTM çååèç¢¼ãå¦å¤ï¼ä½ éå¿é è¦æå®ä»¥è±æå­æ¯æ¨è¨çç·¯åº¦ååï¼å¥½è® GMT ç¥éæåç®­é ­å°åºè©²æååªè£¡ã\ ç·¯åº¦ååå¯è³\ `éè£¡ <http://www.dmap.co.uk/utmworld.htm>`_\ æ¥è©¢ãå¯ä»¥çå° *é­¯ååå©æ²æ¼ * å¤§è´ä¸ä½æ¼ Q åã\ å æ­¤ï¼æåééè¦ä½¿ç¨çæå½±æ³æ¯ ``-JU40Q``ãæåä¾ççå®æ´çè³æ¬ååºåçµæï¼ çºäºä½¿åç¾çè³ææ´å®¹æå¤è®ï¼ä¸å¼µå°åä¸éå¸¸æå«æå¶å®çè¼å©æ§åç¤ºãé¤äºç¶²æ ¼ç·åå°ååå¨çåº§æ¨æ¸å­å¤ï¼å¸¸è¦çåç¤ºéæ\ æ¯ä¾å°ºãæåè¨èä»¥åååç­ç­ãå¨æ¬ç« ä¸­ï¼æåè¦ä¾è©¦èä½¿ç¨ GMT æ¨ä¸éäºå°ååç´ ã ç®æ¨ ç´æ¥è§ç\ `æä»¤ç¨¿`_ çä¾æåçåºåå·²ç¶æºç¢ºçåç¾åºä¾äºï¼éå°±æ¯ä¸æ¬¡çµ¦å® RGB å¼çå¥½èï¼æåä¸ç¨è²»å¿é¸æè¦ç¨ä»éº¼æ¨£çè²éæªãå¯ä¸çåé¡æ¯ï¼å¦ææåè¦èª¿æ´å°æ¯ãæäº®\ ç¨åº¦ç­ç­çè¨­å®ï¼éç¨®æ¨¡å¼ææ¯è¼éº»ç©ãæ¥ä¸ä¾ï¼å°±è®æåå ä¸åå¼åæ¨£çå°ååç´ ãé¦åç¶ç¶æ¯å°åçéæ¡ï¼åä¹åä¸æ¨£ä¹å¯ä»¥ä½¿ç¨ ``psbasemap`` ä¾éæã\ ä¸éï¼å¦æè¶éä¸åæä»¤è¦ç«å¨åä¸åå°åä¸ï¼æåéå¾åæ±ºå® ``-R`` çåæ¸æè¡ãæåå¯ä»¥ä½¿ç¨ ``grdinfo`` æåæ¥è©¢éçç¶å¾åè¼¸å¥å° ``-R`` æä»¤å§ï¼ä¸ééééæä¸åæ´å¿«çæ¹æ³ï¼ç´æ¥å©ç¨ ``grdinfo`` æä¾çåæ¸ä¾æ¥è©¢ï¼å¦ä¸ï¼ ç¹ªè£½\ `é­¯ååå©æ²æ¼  <https://zh.wikipedia.org/wiki/%E9%B2%81%E5%8D%9C%E5%93%88%E5%88%A9%E6%B2%99%E6%BC%A0>`_ (Rub' al Khali æ Ø§ÙØ±Ø¨Ø¹ Ø§ÙØ®Ø§ÙÙ) å¶ä¸­ä¸å\ å°ååç `Landsat <https://zh.wikipedia.org/wiki/%E9%99%B8%E5%9C%B0%E8%A1%9B%E6%98%9F%E8%A8%88%E7%95%AB>`_ è¡æå½±åï¼ä¸¦æ¨ä¸æåéãæ¯ä¾å°ºåå¨é¿æä¼¯åå³¶çå¤§ç¥ä½ç½®ãé­¯ååå©æ²æ¼ å·æå¨ä¸çæå¤§çé£çºæ²ä¸åå\ [#]_\ ï¼ä¹æ¯å¨ä¸çææ³ç¡äººççå°æ¹ä¹ä¸ã\ å¦åå¶é¿æä¼¯èªçææãç©ºæ çååä¹ä¸ãï¼å¨éçååé¤äºæ²ä¸ä»¥å¤å¹¾ä¹ä»éº¼ä¹æ²æï¼\ ç¶èï¼é­¯ååå©æ²æ¼ çè¡æå½±åå»è®æåç¼ç¾äºå¤§å°ä¹æ¯çèè¡å¯¦é©å®¤ãç¡æ¸ç\ `æ°æä¸ <https://en.wikipedia.org/wiki/Barchan>`_\ é£ç¶¿ä¸çµï¼æ¥ä»¥ç¹¼å¤çç§»åãåä½µèåé¢ï¼\ å¥å¹»çç«é¢çè³æè®ä½ æ·çéæ¯å¦æ¯ççèªç¶æ¯è§ãç±æ¼ä»¥ä¸ç¹æ®çå°çãæ°£åæ¢ä»¶ï¼é­¯ååå©æ²æ¼ ä¹æ¯ç ç©¶ç±é¢¨åæå½¢å¡çå°è¡¨ä½ç¨ççµä½³å°é»ã\ å¨æ¬è¡æå½±åä¸­ï¼ææçæ°æå½¢æ²ä¸ä¼¼ä¹é½æåç¸åçæ¹åãéåäºå¯¦åè¨´äºæåå¨éåååï¼çè¡é¢¨æ¯å¾è¥¿åååçæ¹åå¹ä¾ã\ çºä»éº¼ï¼è«ç\ `éè£¡æå°å½¢å­¸ä¸çè§£é <http://nadm.gl.ntu.edu.tw/nadm/cht/class_detail.php?serial=122&serial_type_1=8&serial_type_2=4&serial_type_3=16>`_\ ã ç¿é¡ è³æ¬çè¼¸åºæ¯ä¸å ``.grd`` æªãå¦æä½ çé»è¦æ²æå®è£ GDAL æç´ç²¹çºäºæ¹ä¾¿èµ·è¦ï¼ ä½ ä¹å¯ä»¥ç´æ¥å¾ä»¥ä¸é£çµåå¾æ¬ç« ç¯æä½¿ç¨ç Landsat 8 ``.grd`` æªæ¡ï¼ è£åå½±åï¼å½±åçéç·£åº§æ¨å®å¨ x = [190000 250000] ä»¥å y = [2410000 2460000] (UTM åº§æ¨)ã è§ç\ `æçµçå°å`_ è½æªæ NetCDF æ ¼å¼ã ééçãåº§æ¨ãæå¾å¤ç¨®çµ¦å®æ¹å¼ï¼ä¾å¦å°ååº§æ¨ææ¯çé¢ççµå°åº§æ¨ãå¨éè£¡æåå°±ä¸ä¸ä¸è©³è¿°ï¼åªèªªææåè¦ä½¿ç¨ç (ä¹æ¯åäººè¦ºå¾ææ¹ä¾¿ç) ç³»çµ±ï¼``jå°é½é¸é ``ãéç¨®ç³»çµ±èå­é«å®ä½ç ``+j`` é¸é ç¸å (è«åé±\ :doc:`scatter_plot`\ )ï¼ä¸ééæ¬¡æ¯æå°ååæä¹å®®æ ¼ï¼\ ç¸±åæ 3 åï¼L (å·¦)ï¼C (ä¸­)ï¼R (å³)ï¼èæ©«åä¹æ 3 åï¼B (åº)ï¼M (ä¸­)ï¼T (é )ãå¾æ©«åèç¸±åä¸­ä»»é¸å©åå­ç¬¦ï¼å°±å¯ä»¥ææåç¬¦è\ æ¾å¨å°åä¸çç¸å°ä½ç½®ãå¦æéæ¯æ²æä½æ¼ä½ æ³è¦çä½ç½®ï¼åç¨ ``+o`` å¾®èª¿ãå¦å¤ï¼``+w`` èª¿æ´çæ¯æåéå¯¬åº¦ (ä¹å°±æ¯å¤§å°)ï¼è ``+l`` å¯ä»¥è®ä½ æå®å¨æåç¬¦èçååæ¹ä½è¦æ¾äºä»éº¼æå­ãé è¨­ç¶ç¶æ¯ ``W,E,S,N``ï¼ä½æ¯å¦æä½ åªæ³é¡¯ç¤ºåæ¹çæå­ï¼å¯ä»¥æ¹æ ``,,,N``ã\ å¦å¤éæä¸é»å¾éè¦ï¼\ **å°åæåç¬¦èä¸è½æ­é** ``-JX`` **ä½¿ç¨ï¼**\ åå æ¯ ``-JX`` æ¬èº«å°±æ¯ç´è§åº§æ¨ï¼æ²æå¿è¦åä½¿ç¨æåéæåºåæ¹ï¼\ ç«èæ·»è¶³ãå¨æ¬ä¾ä¸­ä½¿ç¨çç¶²æ ¼æªæ¯ UTM åº§æ¨ï¼æåéè¦æ­¤è³è¨æ¾å¨ ``-J`` é¸é ä¸­ï¼æè½æ­£ç¢ºé¡¯ç¤ºåæ¹çä½ç½®ãä½ å¯ä»¥å©ç¨ ``gdalinfo`` ä¾æ¥çç¶²æ ¼æªçååï¼ Project-Id-Version: GMT æå­¸æå 1.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-11-23 00:10-0500
PO-Revision-Date: 2019-07-03 04:55-0400
Last-Translator: Whyjay Zheng <jhsttshj@gmail.com>
Language: en_US
Language-Team: English (United States)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 # ==== è¨­å®è®æ¸ ====
out_ps="Rub_al_Khali.ps"
in_grd_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd"    # è¼¸å¥æªï¼ä½çºç´è² (R) æ³¢æ®µ
in_grd_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd"    # è¼¸å¥æªï¼ä½çºç¶ è² (G) æ³¢æ®µ
in_grd_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd"    # è¼¸å¥æªï¼ä½çºèè² (B) æ³¢æ®µ

# ==== ç¹ªè£½è¡æå½±å ====
grdimage $in_grd_r $in_grd_g $in_grd_b -JX15c/0 -P > $out_ps # ==== è¨­å®è®æ¸ ====
out_ps="Rub_al_Khali.ps"
in_grd_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd"    # è¼¸å¥æªï¼ä½çºç´è² (R) æ³¢æ®µ
in_grd_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd"    # è¼¸å¥æªï¼ä½çºç¶ è² (G) æ³¢æ®µ
in_grd_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd"    # è¼¸å¥æªï¼ä½çºèè² (B) æ³¢æ®µ

# ==== èª¿æ´ GMT é è¨­åæ¸ ====
gmtset MAP_FRAME_TYPE=plain

# ==== ç¹ªè£½è¡æå½±å ====
    # åå¾ -R è³è¨ä¸¦ç«å (æ³¨æ -J çè¨­å®ï¼)
R=$(grdinfo $in_grd_r -I1/1)
grdimage $in_grd_r $in_grd_g $in_grd_b $R -JX15c/0 -P -K > $out_ps
    # ç¹ªè£½ä¸å«ä»»ä½æ¨è¨çéæ¡
psbasemap -R -J -O -K -B0 >> $out_ps

# ==== ç¹ªè£½å°ååç´  ====
    # ç¹ªè£½æåé (æ³¨æ -J çè¨­å®ï¼)
        # GMT 5.2
# psbasemap -R -JU40Q/15c -O -K -TdjRT+w2c+f+l\ ,\ ,\ ,N+o1c/1.8c -F+c0.2c/0.2c/0.2c/1c+gwhite@50+r0.5c --FONT=15p >> $out_ps
        # GMT 5.4
psbasemap -R -JU40Q/15c -O -K -TdjRT+w2c+f+l,,,N+o1c/1.8c -F+c0.2c/0.2c/0.2c/1c+gwhite@50+r0.5c --FONT=15p >> $out_ps
    # ç¹ªè£½æ¯ä¾å°º
psbasemap -R -J         -O -K -LjRB+c22+w10k+f+o2c/2c+u -F+gwhite@50  >> $out_ps
    # ç¹ªè£½ååï¼æ¾ä¸é°è¿ååçæµ·å²¸ç·ååçä½ç½®
pscoast -R-700000/1100000/1920000/3180000 -JU40Q/5c -O -K -Di -Wthinner -Gwhite -Sgray -B0 -N1/thinnest >> $out_ps
    # æ¨ä¸ä¸»å°åå¨ååä¸­çä½ç½® (æ³¨æ -J çè¨­å®ï¼) èå¶ä»æå­
psbasemap -R -JX5c/0 -O -K -D${R#*-R} -F >> $out_ps
echo -300000 2300000 Saudi Arabia | pstext -R -J -O -K -F+f8p+jMC >> $out_ps

# ==== éé (å¯«å¥ EOF) èè½æª ====
psxy -R -J -O -T >> $out_ps
psconvert $out_ps -A -P -Tg # ==== è¨­å®è®æ¸ ====
out_ps="Rub_al_Khali.ps"
in_grd_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd"    # è¼¸å¥æªï¼ä½çºç´è² (R) æ³¢æ®µ
in_grd_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd"    # è¼¸å¥æªï¼ä½çºç¶ è² (G) æ³¢æ®µ
in_grd_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd"    # è¼¸å¥æªï¼ä½çºèè² (B) æ³¢æ®µ

# ==== èª¿æ´ GMT é è¨­åæ¸ ====
gmtset MAP_FRAME_TYPE=plain

# ==== ç¹ªè£½è¡æå½±å ====
    # åå¾ -R è³è¨ä¸¦ç«å (æ³¨æ -J çè¨­å®ï¼)
R=$(grdinfo $in_grd_r -Ir)
grdimage $in_grd_r $in_grd_g $in_grd_b $R -JX15c/0 -P -K > $out_ps
    # ç¹ªè£½ä¸å«ä»»ä½æ¨è¨çéæ¡
psbasemap -R -J -O -K -B0 >> $out_ps

# ==== ç¹ªè£½å°ååç´  ====
    # ç¹ªè£½æåé (æ³¨æ -J çè¨­å®ï¼)
psbasemap -R -JU40Q/15c -O -K -TdjRT+w2c+f+l,,,N+o1c/1.8c --FONT=15p >> $out_ps
    # jRT: æºæ¾ä½ç½®å¨å°åå³ä¸è§
    # +w2c: åç¤ºå¯¬åº¦ 2 å¬å
    # +f: ä½¿ç¨æ¯è¼è¯éºçç¾ç¤åå½¢ä»£æ¿æåç¬¦è
    # +l,,,N: å¦ä¸æ®µè½æè¿°
    # +o1c/1.8c: åå½¢å¾åæ¬çé¨é»åå·¦åç§» 1 å¬åï¼åä¸åç§» 1.8 å¬å
    # --FONT=15p: æå­ "N" çå¤§å°

# ==== éé (å¯«å¥ EOF) èè½æª ====
psxy -R -J -O -T >> $out_ps
psconvert $out_ps -A -P -Tg # ==== è¨­å®è¼¸å¥æª ====
in_tif_r="LC08_L1TP_160045_20170408_20170414_01_T1_B4.TIF"
in_tif_g="LC08_L1TP_160045_20170408_20170414_01_T1_B3.TIF"
in_tif_b="LC08_L1TP_160045_20170408_20170414_01_T1_B2.TIF"
# ==== ä½¿ç¨è¿´åéä¸èçè¼¸å¥æª ====
for i in $in_tif_r $in_tif_g $in_tif_b; do
    # ==== è£å GeoTIFF å½±å ====
    gdal_translate -projwin 190000 2460000 250000 2410000 $i ${i/.TIF/_s.TIF}
    # ==== è¨ç®å½±åçç´æ¹åï¼è¨­å®å½±åé£½å (é»è²æç½è²) æçåç´ å¼ ====
    vmin=$(grdhisteq ${i/.TIF/_s.TIF} -D -C50 | head -n 1 | cut -f 2)
    vmax=$(grdhisteq ${i/.TIF/_s.TIF} -D -C50 | tail -n 1 | cut -f 1)
    # ==== ä½¿ç¨ååè¨­å®çå½±åé£½åå¼ä¾è½æª ====
    gdal_translate -of NetCDF -scale $vmin $vmax ${i/.TIF/_s.TIF} ${i/.TIF/_s.grd}
done $ gdalinfo LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd
..... #(åç¥)
transverse_mercator#spatial_ref=PROJCS["WGS 84 / UTM zone 40N",GEOGCS["WGS 84",DATUM["WGS_1984".....
..... #(å¾ç¥) $ grdhisteq -D LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd
# -D: è¼¸åºè³è¨å°æªæ¡æè¢å¹ä¸
0   14      0
14  25      1
25  35      2
35  42      3
42  49      4
49  56      5
56  63      6
63  71      7
71  79      8
79  91      9
91  111     10
111 139     11
139 167     12
167 192     13
192 221     14
221 587     15 $ grdimage ç´è²ç¶²æ ¼æª(R) ç¶ è²ç¶²æ ¼æª(G) èè²ç¶²æ ¼æª(B) $ grdinfo LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd
..... #(æéè£¡ç¥éäºä¸äºæ®µè½)
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: Title: GDAL Band Number 1
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: Grid file format: nf = GMT netCDF format (32-bit float), COARDS, CF-1.5
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: x_min: 190015 x_max: 249985 x_inc: 30 name: x coordinate of projection [m] nx: 2000
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: y_min: 2410014.997 y_max: 2459985.003 y_inc: 29.9940011998 name: y coordinate of projection [m] ny: 1667
LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd: z_min: NaN z_max: NaN name: GDAL Band Number 1 $ grdinfo LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd -Ir
# -Ir: åå¾å°åç X/Y éçï¼ä¸¦ä¸åå³ -R å­ä¸²
-R190015/249985/2410000/2460000 $ psbasemap -Tdåº§æ¨+wå¯¬åº¦ï¼lè¥¿,æ±,å,åååæ¹ä½çå­ä¸²+oæ°´å¹³åç§»é/åç´åç§»é :download:`LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd <map_elements/LC08_L1TP_160045_20170408_20170414_01_T1_B2_s.grd>` :download:`LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd <map_elements/LC08_L1TP_160045_20170408_20170414_01_T1_B3_s.grd>` :download:`LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd <map_elements/LC08_L1TP_160045_20170408_20170414_01_T1_B4_s.grd>` Landsat è¡æå½±åå¯ä»¥å¾ç¾åå°è³ªèª¿æ¥å± (USGS) ç®¡ççç¶²ç« `EarthExplorer <https://earthexplorer.usgs.gov/>`_ åå¾ã\ åå¾ EarthExplorerï¼ç¶å¾å¨ãAddress/Placeãæå°çå°æ¹è¼¸å¥ *Rubâ al Khali*ï¼ç¶å¾æä¸ `show`ï¼é¸æä¸æ¹åºç¾\ ç *é­¯ååå©æ²æ¼ * ä¸æ¬ãç±æ¼æ²æ¼ ç¯åå¾å¤§ï¼ä½ å¯ä»¥ææ³å°åä¸çç´è²å®ä½é»å°è¼çºé è¿ç¯ä¾å°åçå°æ¹ãæ¥èï¼æä¸ä¸æ¹ç `Data Sets >>`ã\ ä½ å¯ä»¥ä½¿ç¨æå°æ¡æä¸æ¹çåé¡ç®éï¼æ¾å°ä¸¦å¾é¸ *Landsat 8 OLI/TIRS C1 Level-1* çè³æéï¼ç¶å¾æä¸ `Results >>`ã Peter Vincent (2008). `Saudi Arabia: an environmental overview <https://books.google.com/books?id=Vacv2wy3yd8C&pg=PA141>`_. Taylor & Francis. p. 141. ISBN 978-0-415-41387-9. ``gmtset`` - æ´æ¹ GMT çé è¨­ä½ååæ¸ ``grdhisteq`` - **æ¥çç¶²æ ¼æªçæ¸å¼åä½** ``grdhisteq`` é è¨­çè¼¸åºï¼æ¯æææçåç´ å¼ä¾ç§å¤§å°ååæ 16 ç­åãå¾è¼¸åºè³æä¸­ï¼æåå¯ä»¥ç¥éåç´ å¼ä½å¨ 0 å° 14 ä¹éçåç´ \ ä½äºåå­åä¹ä¸ï¼èåç´ å¼å¨ 221 å° 587 ä¹éçåç´ ä¹ä½äºåå­åä¹ä¸ãæ¥ä¸ä¾ï¼æåå°±è©¦èä½¿ç¨ ``grdimage`` ä¾è¼¸åºå½±åççã\ å¨ä¹åçç« ç¯ï¼æåä½¿ç¨ ``grdimage`` æéè¦çµ¦å®å°æçè²éæªï¼è®æä»¤ç§èè¼¸å¥æªåç´ å¼çå¤§å°ä¾çµ¦å®é¡è²ãå¦ææåæ³è¦ä¸ç¶ç±è²éæª\ ç´æ¥æå®æ¯ååç´ çé¡è²ï¼``grdimage`` ä¹æ¯å¯ä»¥ä½å°ï¼ä¸éè¦éµå¾ªä»¥ä¸çè¼¸å¥æ¹æ³ï¼ ``grdimage`` - **ä»¥ RGB è³æé²è¡ç¹ªå** ``grdimage`` ç ``-R`` é¸é ä¹æ¥åç¶²æ ¼æªç¶è¼¸å¥åæ¸ï¼å¨æ­¤çæ³ä¸ï¼ç¨å¼æä½¿ç¨ç¶²æ ¼æªç X/Y éçç¶æ ``-R`` çåæ¸ãå æ­¤ï¼\ å¨ä¸ä¾ä¸­ç ``grdimage`` ä¸è¡ä¹å¯ä»¥æ¹æéæ¨£ï¼ ``grdinfo`` - **ç±ç¶²æ ¼è³æå»ºç«** ``-R`` **è¨­å®** ``psbasemap`` - **æ·»å ä¸åçå°ååç´ ** ``pscoast`` - ç¹ªè£½æµ·å²¸ç·ãåçèæµ·åå¡«è² ``psconvert`` - æ ps æªè½æ png æªä¸¦ä¿çéæåº¦è¨­å® ``pstext`` - å¨å°åä¸å å¥æå­ ``psxy`` - è¼¸åºæªå°¾ gmtset MAP_FRAME_TYPE=plain
R=$(grdinfo $in_grd_r -Ir)
grdimage $in_grd_r $in_grd_g $in_grd_b $R -JX15c/0 -P -K > $out_ps   # -JX15c/0 ä¸­ç 0 ææ Y è»¸ä½¿ç¨è X è»¸ç¸åçæ¯ä¾å°º
psbasemap -R -J -O -K -B0 >> $out_ps    # å çº -R å -J é½å·²ç¶å¨ grdimage è£¡çµ¦å®ï¼ä¸ç¨åçµ¦ç¬¬äºæ¬¡ grdimage $in_grd_r $in_grd_g $in_grd_b -R$in_grd_r -JX15c/0 -P -K > $out_ps ãã ä¸è¼ä¹å¾è§£å£ç¸®ï¼ä½ æç¼ç¾å¶ä¸­æè¨±å¤ GeoTIFF æªæ¡ï¼æ¯åæªæ¡ä»£è¡¨ä¸åç¹å®çå½±åæ³¢æ®µã\ `Landsat ç¶²ç«ä¸ <https://landsat.usgs.gov/what-are-band-designations-landsat-satellites>`_\ èªªæäºæ¯åç·¨èåèªä»£è¡¨çæ³¢æ®µãå¨æ¬æå­¸ä¸­ï¼\ æåè¦ä½¿ç¨å¯è¦åçç´ãç¶ ãèä¸åæ³¢æ®µ (RGB)ï¼ç·¨èåå¥æ¯ B4ãB3 å B2ãçºäºæ¹ä¾¿åäº«è¼¸å¥æªä»¥åå¢å¼·å½±åçå°æ¯ï¼æå°éä¸åå½±åé²è¡äº\ å¦ä¸æä½ï¼ ä½¿ç¨çæä»¤èæ¦å¿µ ä½¿ç¨çè³æ¬å¦ä¸æç¤ºï¼å¶ä¸­éç¨äº GDAL å½å¼åº«ä¸­ç ``gdal_translate`` è· GMT ä¸­ç ``grdhisteq`` æä»¤ã\ ç¸éçæä½å°å¨\ **ä¹å¾çç« ç¯**\ ä¸­ä»ç´¹ï¼éè£¡å°±ä¸å¤å è´è¿°ï¼æéå¿æ¾å¨å°ååç´ çç¹ªè£½ä¸ã ä½¿ç¨ç´æ¹åå¢å¼·å½±åå°æ¯ (Histogram Stretching)ã åç½®ä½æ¥­ Add Map Elements å¯ä»¥çå°åå³çè¨æ¯ä¸­ï¼å·²ç¶æç§ ``-R`` çåæ¸æ ¼å¼å¹«ä½ æ´çå¥½äºãå æ­¤æå¿«çæ¹æ³ï¼å°±æ¯ææä»¤çè¼¸åºè½å­çºè®æ¸ï¼åæ¾å°å¶ä»çæä»¤ä¸­å°±å¯ä»¥äºã\ å¦å¤ï¼éæ¬¡æåæ²æè¦å¨éæ¡ä¸å ä¸ä»»ä½ç¶ç·¯åº¦æ X/Y åº§æ¨ï¼å æ­¤å¨ ``psbasemap`` ä¸­ï¼æåå¯ä»¥è¨­å® ``-B0`` ä¾éææ­¤è¦æ±ãè¨å¾ç«ä¹åä¹è¦èª¿æ´ GMT çè®æ¸ ``MAP_FRAME_TYPE`` çº ``plain``ï¼éæ¨£éæ¡æææ¯æ¨¸å¯¦çé»ç·æ¢èä¸æ¯è¯éºçæé¦¬ç´ãéä¸é¨ä»½çè³æ¬åèµ·ä¾å¦ä¸ï¼ å¨ç¹ªåä¹åï¼æååä¾ä½¿ç¨ ``grdinfo`` ç¢ºèªä¸ä¸è¦ä½¿ç¨çè³æã å¨è³æ¬ä¸­æå¹¾ä»¶äºæè¦æ³¨æãç¬¬ä¸ï¼æå½±æ³çé¸ææ¯ ``-JX``ï¼éæ¯å çºç¶²æ ¼æªå·²ç¶ä½¿ç¨ UTM åº§æ¨ï¼æåä¸éè¦å¨ GMT å§å¤å ä¸æ¬¡æå½±åº§æ¨çè½æï¼\ ç¬¬äºï¼å¨ ``-JX15c`` å¾é¢éæå ``/0``ï¼æå³è Y è»¸ä½¿ç¨è X è»¸ç¸åçæ¯ä¾å°º (ä¸å çè©±ï¼åºåææ°¸é ä¿ææ­£æ¹å½¢)ï¼ç¬¬ä¸ï¼å¨ 0 è³ 255 ä¹éçåç´ å¼ææè¢«æºç¢ºè§£è®ï¼è¶é 255 çå¼é½æè¢«è§£è®æ 255ãä»¥ä¸å°±æ¯åºåçæ¨£å­ï¼ å¤é¨æä»¤ ``echo`` - æè³æè¼¸å¥å°ç®¡ç·å½ä»¤ä¸­ å¦ä½ä½¿ç¨æ­£ç¢ºç ``-J`` æå½±é¸é å¥çè¡æå½±åèå¶ä»å°çç©ºéè³æ å¦ä½ç¹ªè£½åå (Map Inset) å¦æä¸æ¬¡æå®ä¸åç¶²æ ¼æªï¼``grdimage`` æä½¿ç¨æå® RGB é¡è²å¼çæ¹å¼ç¹ªåï¼éæç¬¬ä¸åç¶²æ ¼æªæè¢«ç¶ä½ç´è²åç´ å¼ï¼ç¬¬äºåç¶²æ ¼æªæ\ è¢«ç¶ä½ç¶ è²åç´ å¼ï¼ç¬¬ä¸åç¶²æ ¼æªæè¢«ç¶ä½èè²åç´ å¼ãæåé¦¬ä¸å°±ä¾è©¦è©¦çï¼ å¦æä½ ç¼ç¾è³æ¬å¯ä»¥é å©å·è¡ï¼ä½æ¯æåéä¸¦æ²æè¢«ç«åºä¾ï¼é£éº¼å¾æå¯è½æ¯æå½±æ³åºäºåé¡ï¼å¯ä»¥æª¢æ¥ä¸ä¸ ``-J`` é¸é æ¯å¦å¦ä¸æè¿°çé å©è¨­å®äºã å¾éè£¡å¯ä»¥çåºæåçè³æä¸¦ä¸æ¯ä½¿ç¨ç¶ç·¯åº¦åº§æ¨ï¼èæ¯æåæå½±åº§æ¨ï¼æ¯ååç´ çå°ºå¯¸æ¯ 30 å¬å°ºãå¦æä½¿ç¨ ``gdalinfo`` ç¢ºèªåæ¬ç GeoTIFF æªï¼å¯ä»¥é²ä¸æ­¥ç¥ééååº§æ¨ç³»çµ±æ¯ UTM Zone 40Nãåç´ çæå¤§èæå°å¼å¨éè£¡é¯èª¤çé¡¯ç¤ºæ NaNï¼æåéè¦ä½¿ç¨ ``grdhisteq`` ä¾é²ä¸æ­¥çæª¢æ¥ã\ ``grdhisteq`` æ¯ GMT ä¸­å°ç¶²æ ¼æªé²è¡æ¸å¼çµ±è¨çå·¥å·ï¼æåè¦ä½¿ç¨æåºæ¬çèªæ³ï¼å¨è¢å¹ä¸è¼¸åºç¶²æ ¼æªæ¸å¼çåä½æå½¢ã æä»¤ç¨¿ æ¥ä¸ä¾ï¼æè©²ææè¨±å¤è³æåç¾å¨å·¦å´æå°çµææ¬ä¸­ãæ¾å°åçº *LC08_L1TP_160045_20170408_20170414_01_T1* çè³æï¼\ æä¸ãDownload Optionsãçåç¤ºãæ¬è³æéè¦ç»å¥æè½ä¸è¼ï¼å¦æä½ å°æªæ USGS å¸³èï¼å¯ä»¥è±å¹¾åéè¨»åï¼\ åªéè¦ä¸çµé»å­ä¿¡ç®±å³å¯ãç»å¥ä¹å¾ï¼é¸æ `Level-1 GeoTIFF Data Product (886.0 MB)` çè³ææ ¼å¼ã æ¥ä¸ä¾ï¼æåéæä¸åå°ååç´ éè¦ç¹ªè£½ï¼(1) æåç¬¦èï¼(2) æ¯ä¾å°ºï¼(3) æé å°åãéäºå¾å¤å°åä¸­æçå°éä»¶ï¼é½å¯ä»¥ä½¿ç¨ ``psbasemap`` ä¾ç«ã\ è®æååå¾æç°¡å®çæåç¬¦èéå§ï¼éè¦æ·»å çé¸é æ¯ ``-Td``ï¼ æä½æµç¨ æ¬å°åçæçµæä»¤ç¨¿å¦ä¸ï¼ æ³¨æ ``UTM zone 40N`` çå­æ¨£ï¼éå°±æ¯ UTM çååèç¢¼ãå¦å¤ï¼ä½ éå¿é è¦æå®ä»¥è±æå­æ¯æ¨è¨çç·¯åº¦ååï¼å¥½è® GMT ç¥éæåç®­é ­å°åºè©²æååªè£¡ã\ ç·¯åº¦ååå¯è³\ `éè£¡ <http://www.dmap.co.uk/utmworld.htm>`_\ æ¥è©¢ãå¯ä»¥çå° *é­¯ååå©æ²æ¼ * å¤§è´ä¸ä½æ¼ Q åã\ å æ­¤ï¼æåééè¦ä½¿ç¨çæå½±æ³æ¯ ``-JU40Q``ãæåä¾ççå®æ´çè³æ¬ååºåçµæï¼ çºäºä½¿åç¾çè³ææ´å®¹æå¤è®ï¼ä¸å¼µå°åä¸éå¸¸æå«æå¶å®çè¼å©æ§åç¤ºãé¤äºç¶²æ ¼ç·åå°ååå¨çåº§æ¨æ¸å­å¤ï¼å¸¸è¦çåç¤ºéæ\ æ¯ä¾å°ºãæåè¨èä»¥åååç­ç­ãå¨æ¬ç« ä¸­ï¼æåè¦ä¾è©¦èä½¿ç¨ GMT æ¨ä¸éäºå°ååç´ ã Goal ç´æ¥è§ç\ `æä»¤ç¨¿`_ çä¾æåçåºåå·²ç¶æºç¢ºçåç¾åºä¾äºï¼éå°±æ¯ä¸æ¬¡çµ¦å® RGB å¼çå¥½èï¼æåä¸ç¨è²»å¿é¸æè¦ç¨ä»éº¼æ¨£çè²éæªãå¯ä¸çåé¡æ¯ï¼å¦ææåè¦èª¿æ´å°æ¯ãæäº®\ ç¨åº¦ç­ç­çè¨­å®ï¼éç¨®æ¨¡å¼ææ¯è¼éº»ç©ãæ¥ä¸ä¾ï¼å°±è®æåå ä¸åå¼åæ¨£çå°ååç´ ãé¦åç¶ç¶æ¯å°åçéæ¡ï¼åä¹åä¸æ¨£ä¹å¯ä»¥ä½¿ç¨ ``psbasemap`` ä¾éæã\ ä¸éï¼å¦æè¶éä¸åæä»¤è¦ç«å¨åä¸åå°åä¸ï¼æåéå¾åæ±ºå® ``-R`` çåæ¸æè¡ãæåå¯ä»¥ä½¿ç¨ ``grdinfo`` æåæ¥è©¢éçç¶å¾åè¼¸å¥å° ``-R`` æä»¤å§ï¼ä¸ééééæä¸åæ´å¿«çæ¹æ³ï¼ç´æ¥å©ç¨ ``grdinfo`` æä¾çåæ¸ä¾æ¥è©¢ï¼å¦ä¸ï¼ ç¹ªè£½\ `é­¯ååå©æ²æ¼  <https://zh.wikipedia.org/wiki/%E9%B2%81%E5%8D%9C%E5%93%88%E5%88%A9%E6%B2%99%E6%BC%A0>`_ (Rub' al Khali æ Ø§ÙØ±Ø¨Ø¹ Ø§ÙØ®Ø§ÙÙ) å¶ä¸­ä¸å\ å°ååç `Landsat <https://zh.wikipedia.org/wiki/%E9%99%B8%E5%9C%B0%E8%A1%9B%E6%98%9F%E8%A8%88%E7%95%AB>`_ è¡æå½±åï¼ä¸¦æ¨ä¸æåéãæ¯ä¾å°ºåå¨é¿æä¼¯åå³¶çå¤§ç¥ä½ç½®ãé­¯ååå©æ²æ¼ å·æå¨ä¸çæå¤§çé£çºæ²ä¸åå\ [#]_\ ï¼ä¹æ¯å¨ä¸çææ³ç¡äººççå°æ¹ä¹ä¸ã\ å¦åå¶é¿æä¼¯èªçææãç©ºæ çååä¹ä¸ãï¼å¨éçååé¤äºæ²ä¸ä»¥å¤å¹¾ä¹ä»éº¼ä¹æ²æï¼\ ç¶èï¼é­¯ååå©æ²æ¼ çè¡æå½±åå»è®æåç¼ç¾äºå¤§å°ä¹æ¯çèè¡å¯¦é©å®¤ãç¡æ¸ç\ `æ°æä¸ <https://en.wikipedia.org/wiki/Barchan>`_\ é£ç¶¿ä¸çµï¼æ¥ä»¥ç¹¼å¤çç§»åãåä½µèåé¢ï¼\ å¥å¹»çç«é¢çè³æè®ä½ æ·çéæ¯å¦æ¯ççèªç¶æ¯è§ãç±æ¼ä»¥ä¸ç¹æ®çå°çãæ°£åæ¢ä»¶ï¼é­¯ååå©æ²æ¼ ä¹æ¯ç ç©¶ç±é¢¨åæå½¢å¡çå°è¡¨ä½ç¨ççµä½³å°é»ã\ å¨æ¬è¡æå½±åä¸­ï¼ææçæ°æå½¢æ²ä¸ä¼¼ä¹é½æåç¸åçæ¹åãéåäºå¯¦åè¨´äºæåå¨éåååï¼çè¡é¢¨æ¯å¾è¥¿åååçæ¹åå¹ä¾ã\ çºä»éº¼ï¼è«ç\ `éè£¡æå°å½¢å­¸ä¸çè§£é <http://nadm.gl.ntu.edu.tw/nadm/cht/class_detail.php?serial=122&serial_type_1=8&serial_type_2=4&serial_type_3=16>`_\ ã ç¿é¡ è³æ¬çè¼¸åºæ¯ä¸å ``.grd`` æªãå¦æä½ çé»è¦æ²æå®è£ GDAL æç´ç²¹çºäºæ¹ä¾¿èµ·è¦ï¼ ä½ ä¹å¯ä»¥ç´æ¥å¾ä»¥ä¸é£çµåå¾æ¬ç« ç¯æä½¿ç¨ç Landsat 8 ``.grd`` æªæ¡ï¼ è£åå½±åï¼å½±åçéç·£åº§æ¨å®å¨ x = [190000 250000] ä»¥å y = [2410000 2460000] (UTM åº§æ¨)ã è§ç\ `æçµçå°å`_ è½æªæ NetCDF æ ¼å¼ã ééçãåº§æ¨ãæå¾å¤ç¨®çµ¦å®æ¹å¼ï¼ä¾å¦å°ååº§æ¨ææ¯çé¢ççµå°åº§æ¨ãå¨éè£¡æåå°±ä¸ä¸ä¸è©³è¿°ï¼åªèªªææåè¦ä½¿ç¨ç (ä¹æ¯åäººè¦ºå¾ææ¹ä¾¿ç) ç³»çµ±ï¼``jå°é½é¸é ``ãéç¨®ç³»çµ±èå­é«å®ä½ç ``+j`` é¸é ç¸å (è«åé±\ :doc:`scatter_plot`\ )ï¼ä¸ééæ¬¡æ¯æå°ååæä¹å®®æ ¼ï¼\ ç¸±åæ 3 åï¼L (å·¦)ï¼C (ä¸­)ï¼R (å³)ï¼èæ©«åä¹æ 3 åï¼B (åº)ï¼M (ä¸­)ï¼T (é )ãå¾æ©«åèç¸±åä¸­ä»»é¸å©åå­ç¬¦ï¼å°±å¯ä»¥ææåç¬¦è\ æ¾å¨å°åä¸çç¸å°ä½ç½®ãå¦æéæ¯æ²æä½æ¼ä½ æ³è¦çä½ç½®ï¼åç¨ ``+o`` å¾®èª¿ãå¦å¤ï¼``+w`` èª¿æ´çæ¯æåéå¯¬åº¦ (ä¹å°±æ¯å¤§å°)ï¼è ``+l`` å¯ä»¥è®ä½ æå®å¨æåç¬¦èçååæ¹ä½è¦æ¾äºä»éº¼æå­ãé è¨­ç¶ç¶æ¯ ``W,E,S,N``ï¼ä½æ¯å¦æä½ åªæ³é¡¯ç¤ºåæ¹çæå­ï¼å¯ä»¥æ¹æ ``,,,N``ã\ å¦å¤éæä¸é»å¾éè¦ï¼\ **å°åæåç¬¦èä¸è½æ­é** ``-JX`` **ä½¿ç¨ï¼**\ åå æ¯ ``-JX`` æ¬èº«å°±æ¯ç´è§åº§æ¨ï¼æ²æå¿è¦åä½¿ç¨æåéæåºåæ¹ï¼\ ç«èæ·»è¶³ãå¨æ¬ä¾ä¸­ä½¿ç¨çç¶²æ ¼æªæ¯ UTM åº§æ¨ï¼æåéè¦æ­¤è³è¨æ¾å¨ ``-J`` é¸é ä¸­ï¼æè½æ­£ç¢ºé¡¯ç¤ºåæ¹çä½ç½®ãä½ å¯ä»¥å©ç¨ ``gdalinfo`` ä¾æ¥çç¶²æ ¼æªçååï¼ 