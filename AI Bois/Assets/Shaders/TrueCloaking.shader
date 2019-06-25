// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:36860,y:31206,varname:node_3138,prsc:2|normal-9246-OUT,emission-5986-OUT,custl-3392-OUT,voffset-7454-OUT;n:type:ShaderForge.SFN_LightVector,id:1501,x:30893,y:31468,varname:node_1501,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2465,x:30893,y:31311,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:8678,x:31431,y:31697,varname:lightData,prsc:2|IN-8244-OUT;n:type:ShaderForge.SFN_LightColor,id:2706,x:31077,y:31749,varname:node_2706,prsc:2;n:type:ShaderForge.SFN_Multiply,id:123,x:31077,y:31609,varname:node_123,prsc:2|A-7497-OUT,B-7929-OUT;n:type:ShaderForge.SFN_Multiply,id:8244,x:31269,y:31697,varname:node_8244,prsc:2|A-123-OUT,B-2706-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:7929,x:30893,y:31630,varname:node_7929,prsc:2;n:type:ShaderForge.SFN_Color,id:6001,x:30887,y:32418,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:7467,x:31471,y:32500,varname:Diffuse,prsc:2|IN-3359-OUT;n:type:ShaderForge.SFN_Tex2d,id:7791,x:30889,y:32587,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9468074b4a7c64b4aaa34b9bad5e7571,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Dot,id:7497,x:31080,y:31394,varname:node_7497,prsc:2,dt:1|A-1501-OUT,B-2465-OUT;n:type:ShaderForge.SFN_HalfVector,id:3782,x:30893,y:31181,varname:node_3782,prsc:2;n:type:ShaderForge.SFN_Dot,id:7728,x:31080,y:31242,varname:node_7728,prsc:2,dt:1|A-3782-OUT,B-2465-OUT;n:type:ShaderForge.SFN_Set,id:3922,x:31248,y:31609,varname:Shadow,prsc:2|IN-123-OUT;n:type:ShaderForge.SFN_Set,id:1493,x:32186,y:31251,varname:Specular,prsc:2|IN-8182-OUT;n:type:ShaderForge.SFN_Power,id:5125,x:31537,y:31169,varname:node_5125,prsc:2|VAL-7728-OUT,EXP-2568-OUT;n:type:ShaderForge.SFN_Slider,id:589,x:31380,y:31476,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Exp,id:2568,x:31537,y:31298,varname:node_2568,prsc:2,et:0|IN-589-OUT;n:type:ShaderForge.SFN_Slider,id:6040,x:31707,y:31478,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Exp,id:6503,x:32029,y:31478,varname:node_6503,prsc:2,et:0|IN-6040-OUT;n:type:ShaderForge.SFN_Multiply,id:5055,x:31755,y:31298,varname:node_5055,prsc:2|A-5125-OUT,B-6503-OUT;n:type:ShaderForge.SFN_Multiply,id:8182,x:32029,y:31251,varname:node_8182,prsc:2|A-5055-OUT,B-2912-RGB,C-6427-OUT;n:type:ShaderForge.SFN_Get,id:6427,x:32029,y:31388,varname:node_6427,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_HalfVector,id:632,x:31153,y:31992,varname:node_632,prsc:2;n:type:ShaderForge.SFN_Tangent,id:243,x:30887,y:32145,varname:node_243,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5830,x:32051,y:32071,varname:node_5830,prsc:2|A-6727-OUT,B-7947-OUT,C-2632-RGB;n:type:ShaderForge.SFN_Get,id:593,x:32330,y:32256,varname:node_593,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_Bitangent,id:9222,x:30887,y:31981,varname:node_9222,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4707,x:32330,y:32073,varname:node_4707,prsc:2|A-5830-OUT,B-593-OUT;n:type:ShaderForge.SFN_Power,id:6727,x:31809,y:32071,varname:node_6727,prsc:2|VAL-7879-OUT,EXP-4050-OUT;n:type:ShaderForge.SFN_Slider,id:8551,x:31680,y:32455,ptovrint:False,ptlb:AnisotropicPower,ptin:_AnisotropicPower,varname:_AnisotropicPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.5,max:10;n:type:ShaderForge.SFN_Exp,id:4050,x:31809,y:32245,varname:node_4050,prsc:2,et:0|IN-8551-OUT;n:type:ShaderForge.SFN_Color,id:2632,x:32051,y:32269,ptovrint:False,ptlb:AnisotropicColor,ptin:_AnisotropicColor,varname:_AnisotropicColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:7947,x:31973,y:31913,ptovrint:False,ptlb:AnisotropicIntensity,ptin:_AnisotropicIntensity,varname:_AnisotropicIntensitynode_7947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_OneMinus,id:7879,x:31628,y:32071,varname:node_7879,prsc:2|IN-8897-OUT;n:type:ShaderForge.SFN_Set,id:9153,x:32538,y:32073,varname:Anisotropic,prsc:2|IN-4707-OUT;n:type:ShaderForge.SFN_Dot,id:8897,x:31422,y:32071,varname:node_8897,prsc:2,dt:3|A-632-OUT,B-959-OUT;n:type:ShaderForge.SFN_Lerp,id:959,x:31153,y:32128,varname:node_959,prsc:2|A-9222-OUT,B-243-OUT,T-8679-OUT;n:type:ShaderForge.SFN_Slider,id:8679,x:30730,y:32304,ptovrint:False,ptlb:AnisotropicDirection,ptin:_AnisotropicDirection,varname:_AnisotropicDirection,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.45,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:8345,x:31103,y:32945,ptovrint:False,ptlb:HighLights,ptin:_HighLights,varname:_HighLights,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7856-OUT,B-6834-OUT;n:type:ShaderForge.SFN_Get,id:7856,x:30887,y:32905,varname:node_7856,prsc:2|IN-1493-OUT;n:type:ShaderForge.SFN_Get,id:6834,x:30887,y:33005,varname:node_6834,prsc:2|IN-9153-OUT;n:type:ShaderForge.SFN_Set,id:325,x:31276,y:32945,varname:highlights,prsc:2|IN-8345-OUT;n:type:ShaderForge.SFN_NormalVector,id:3380,x:30887,y:33077,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:214,x:31103,y:33156,varname:node_214,prsc:2,dt:0|A-3380-OUT,B-2749-OUT;n:type:ShaderForge.SFN_Set,id:1672,x:31842,y:33157,varname:FresnelCustom,prsc:2|IN-3400-OUT;n:type:ShaderForge.SFN_ViewVector,id:2749,x:30887,y:33248,varname:node_2749,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:7332,x:31294,y:33157,varname:node_7332,prsc:2|IN-214-OUT;n:type:ShaderForge.SFN_Power,id:1670,x:31477,y:33157,varname:node_1670,prsc:2|VAL-7332-OUT,EXP-7317-OUT;n:type:ShaderForge.SFN_Slider,id:8454,x:31111,y:33388,ptovrint:False,ptlb:FresnelPower,ptin:_FresnelPower,varname:_fresnelPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.5,max:10;n:type:ShaderForge.SFN_Exp,id:7317,x:31477,y:33296,varname:node_7317,prsc:2,et:0|IN-8454-OUT;n:type:ShaderForge.SFN_Fresnel,id:3863,x:31477,y:33474,varname:node_3863,prsc:2|NRM-6216-OUT,EXP-8454-OUT;n:type:ShaderForge.SFN_NormalVector,id:6216,x:31268,y:33474,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:368,x:31641,y:33474,varname:Fresnel,prsc:2|IN-3863-OUT;n:type:ShaderForge.SFN_Color,id:2330,x:31477,y:32999,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:_FresnelColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6078432,c2:0.9734884,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3400,x:31673,y:33157,varname:node_3400,prsc:2|A-2330-RGB,B-1670-OUT;n:type:ShaderForge.SFN_Tex2d,id:9925,x:31089,y:34296,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:_NormalTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:29e7be3707affdb4a97b71fcd5f8e658,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:2052,x:31274,y:34276,varname:node_2052,prsc:2|A-4936-OUT,B-9925-RGB,T-7903-OUT;n:type:ShaderForge.SFN_Vector3,id:4936,x:31089,y:34185,varname:node_4936,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7903,x:31274,y:34439,ptovrint:False,ptlb:NormalPower,ptin:_NormalPower,varname:_NormalPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Set,id:2699,x:31437,y:34276,varname:NormalData,prsc:2|IN-2052-OUT;n:type:ShaderForge.SFN_Get,id:9246,x:36601,y:31249,varname:node_9246,prsc:2|IN-2699-OUT;n:type:ShaderForge.SFN_TexCoord,id:238,x:30861,y:33717,varname:node_238,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4425,x:31063,y:33717,varname:node_4425,prsc:2,spu:1,spv:0|UVIN-238-UVOUT,DIST-7500-OUT;n:type:ShaderForge.SFN_Time,id:5071,x:30861,y:33882,varname:node_5071,prsc:2;n:type:ShaderForge.SFN_Slider,id:5014,x:30906,y:34060,ptovrint:False,ptlb:PannSpeed,ptin:_PannSpeed,varname:_spinSpeed_A,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:7500,x:31063,y:33882,varname:node_7500,prsc:2|A-5071-T,B-5014-OUT;n:type:ShaderForge.SFN_Get,id:4124,x:35432,y:31336,varname:node_4124,prsc:2|IN-7467-OUT;n:type:ShaderForge.SFN_Get,id:9865,x:35432,y:31479,varname:node_9865,prsc:2|IN-325-OUT;n:type:ShaderForge.SFN_Get,id:2550,x:35432,y:31402,varname:node_2550,prsc:2|IN-8678-OUT;n:type:ShaderForge.SFN_Multiply,id:5992,x:35611,y:31459,varname:node_5992,prsc:2|A-2550-OUT,B-9865-OUT;n:type:ShaderForge.SFN_Multiply,id:5526,x:35980,y:31556,varname:node_5526,prsc:2|A-9769-OUT,B-6839-OUT;n:type:ShaderForge.SFN_Get,id:6839,x:35767,y:31623,varname:node_6839,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_Blend,id:9769,x:35788,y:31459,varname:node_9769,prsc:2,blmd:6,clmp:True|SRC-5992-OUT,DST-5854-OUT;n:type:ShaderForge.SFN_Get,id:5854,x:35590,y:31591,varname:node_5854,prsc:2|IN-1672-OUT;n:type:ShaderForge.SFN_Color,id:2912,x:32029,y:31090,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_2912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8746,x:31070,y:32500,varname:node_8746,prsc:2|A-6001-RGB,B-7791-RGB;n:type:ShaderForge.SFN_Multiply,id:7539,x:35611,y:31316,varname:node_7539,prsc:2|A-9982-RGB,B-4124-OUT,C-2550-OUT;n:type:ShaderForge.SFN_AmbientLight,id:9982,x:35432,y:31210,varname:node_9982,prsc:2;n:type:ShaderForge.SFN_Set,id:6124,x:31223,y:33717,varname:PannUV,prsc:2|IN-4425-UVOUT;n:type:ShaderForge.SFN_Slider,id:7154,x:32907,y:31249,ptovrint:False,ptlb:BlendWidth,ptin:_BlendWidth,varname:node_7154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2718447,max:1;n:type:ShaderForge.SFN_Set,id:8550,x:33223,y:31249,varname:Width,prsc:2|IN-7154-OUT;n:type:ShaderForge.SFN_Slider,id:1118,x:32907,y:31357,ptovrint:False,ptlb:GradientHeight,ptin:_GradientHeight,varname:node_1118,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5242718,max:1;n:type:ShaderForge.SFN_Set,id:9625,x:33223,y:31357,varname:Height,prsc:2|IN-1118-OUT;n:type:ShaderForge.SFN_Multiply,id:5857,x:33076,y:31446,varname:node_5857,prsc:2|A-2605-OUT,B-7158-OUT;n:type:ShaderForge.SFN_Vector1,id:7158,x:32907,y:31505,varname:node_7158,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Get,id:2605,x:32907,y:31446,varname:node_2605,prsc:2|IN-8550-OUT;n:type:ShaderForge.SFN_Set,id:4780,x:33223,y:31446,varname:HalfWidth,prsc:2|IN-5857-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:6282,x:33360,y:31697,varname:node_6282,prsc:2|IN-7072-OUT,IMIN-5689-OUT,IMAX-6244-OUT,OMIN-7714-OUT,OMAX-1958-OUT;n:type:ShaderForge.SFN_Get,id:2262,x:32918,y:31804,varname:node_2262,prsc:2|IN-4780-OUT;n:type:ShaderForge.SFN_Subtract,id:7714,x:33117,y:31722,varname:node_7714,prsc:2|A-5689-OUT,B-2262-OUT;n:type:ShaderForge.SFN_Add,id:1958,x:33117,y:31864,varname:node_1958,prsc:2|A-2262-OUT,B-6244-OUT;n:type:ShaderForge.SFN_Vector1,id:5689,x:33117,y:31662,varname:node_5689,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6244,x:33117,y:32010,varname:node_6244,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:7072,x:33096,y:31605,varname:node_7072,prsc:2|IN-9625-OUT;n:type:ShaderForge.SFN_Set,id:3837,x:33522,y:31697,varname:HeightRemap,prsc:2|IN-6282-OUT;n:type:ShaderForge.SFN_Get,id:7967,x:32918,y:32133,varname:node_7967,prsc:2|IN-3837-OUT;n:type:ShaderForge.SFN_Get,id:1680,x:32918,y:32192,varname:node_1680,prsc:2|IN-4780-OUT;n:type:ShaderForge.SFN_Add,id:2164,x:33117,y:32225,varname:node_2164,prsc:2|A-7967-OUT,B-1680-OUT;n:type:ShaderForge.SFN_Subtract,id:9225,x:33117,y:32087,varname:node_9225,prsc:2|A-7967-OUT,B-1680-OUT;n:type:ShaderForge.SFN_Set,id:5228,x:33280,y:32225,varname:Top,prsc:2|IN-2164-OUT;n:type:ShaderForge.SFN_Set,id:8097,x:33280,y:32087,varname:Bottom,prsc:2|IN-9225-OUT;n:type:ShaderForge.SFN_If,id:2570,x:34041,y:31208,varname:node_2570,prsc:2|A-9316-OUT,B-4645-OUT,GT-8926-OUT,EQ-1057-OUT,LT-1057-OUT;n:type:ShaderForge.SFN_If,id:2639,x:34041,y:31357,varname:node_2639,prsc:2|A-9316-OUT,B-1971-OUT,GT-1057-OUT,EQ-1057-OUT,LT-8926-OUT;n:type:ShaderForge.SFN_Get,id:4645,x:33791,y:31196,varname:node_4645,prsc:2|IN-5228-OUT;n:type:ShaderForge.SFN_Get,id:9316,x:33791,y:31314,varname:node_9316,prsc:2|IN-9906-OUT;n:type:ShaderForge.SFN_Get,id:1971,x:33791,y:31435,varname:node_1971,prsc:2|IN-8097-OUT;n:type:ShaderForge.SFN_Vector1,id:8926,x:33791,y:31254,varname:node_8926,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:1057,x:33791,y:31374,varname:node_1057,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:2159,x:34217,y:31277,varname:node_2159,prsc:2|A-2570-OUT,B-2639-OUT;n:type:ShaderForge.SFN_Set,id:4870,x:34365,y:31277,varname:WidthIntersect,prsc:2|IN-2159-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5815,x:34041,y:31606,varname:node_5815,prsc:2|IN-2361-OUT,IMIN-8308-OUT,IMAX-3851-OUT,OMIN-9795-OUT,OMAX-8087-OUT;n:type:ShaderForge.SFN_Get,id:2361,x:33791,y:31534,varname:node_2361,prsc:2|IN-9906-OUT;n:type:ShaderForge.SFN_Get,id:8308,x:33791,y:31588,varname:node_8308,prsc:2|IN-8097-OUT;n:type:ShaderForge.SFN_Get,id:3851,x:33791,y:31645,varname:node_3851,prsc:2|IN-5228-OUT;n:type:ShaderForge.SFN_Vector1,id:9795,x:33791,y:31704,varname:node_9795,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8087,x:33791,y:31768,varname:node_8087,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:3546,x:34219,y:31606,varname:node_3546,prsc:2|IN-5815-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2913,x:34463,y:31606,ptovrint:False,ptlb:VerticalDirection,ptin:_VerticalDirection,varname:node_2913,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3546-OUT,B-2962-OUT;n:type:ShaderForge.SFN_OneMinus,id:2962,x:34463,y:31735,varname:node_2962,prsc:2|IN-3546-OUT;n:type:ShaderForge.SFN_Set,id:4451,x:34641,y:31606,varname:HeightGradient,prsc:2|IN-2913-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9319,x:34041,y:31898,varname:node_9319,prsc:2|IN-9915-OUT,IMIN-2508-OUT,IMAX-3500-OUT,OMIN-4215-OUT,OMAX-9928-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:350,x:34041,y:32135,varname:node_350,prsc:2|IN-9915-OUT,IMIN-1818-OUT,IMAX-2508-OUT,OMIN-4215-OUT,OMAX-9928-OUT;n:type:ShaderForge.SFN_Get,id:3500,x:33776,y:31898,varname:node_3500,prsc:2|IN-5228-OUT;n:type:ShaderForge.SFN_Get,id:9915,x:33776,y:32024,varname:node_9915,prsc:2|IN-9906-OUT;n:type:ShaderForge.SFN_Get,id:2508,x:33776,y:32084,varname:node_2508,prsc:2|IN-9625-OUT;n:type:ShaderForge.SFN_Get,id:1818,x:33776,y:32207,varname:node_1818,prsc:2|IN-8097-OUT;n:type:ShaderForge.SFN_Vector1,id:4215,x:33776,y:31960,varname:node_4215,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9928,x:33776,y:32146,varname:node_9928,prsc:2,v1:1;n:type:ShaderForge.SFN_OneMinus,id:7593,x:34203,y:31898,varname:node_7593,prsc:2|IN-9319-OUT;n:type:ShaderForge.SFN_Clamp01,id:2209,x:34364,y:31898,varname:node_2209,prsc:2|IN-7593-OUT;n:type:ShaderForge.SFN_Clamp01,id:3666,x:34364,y:32132,varname:node_3666,prsc:2|IN-350-OUT;n:type:ShaderForge.SFN_If,id:7276,x:34607,y:32006,varname:node_7276,prsc:2|A-9915-OUT,B-2508-OUT,GT-2209-OUT,EQ-2209-OUT,LT-3666-OUT;n:type:ShaderForge.SFN_Set,id:9641,x:34770,y:32006,varname:ScanGradient,prsc:2|IN-7276-OUT;n:type:ShaderForge.SFN_Get,id:1142,x:35407,y:31741,varname:node_1142,prsc:2|IN-4451-OUT;n:type:ShaderForge.SFN_Set,id:9906,x:33360,y:31141,varname:Gradient,prsc:2|IN-6948-OUT;n:type:ShaderForge.SFN_TexCoord,id:4099,x:32907,y:30910,varname:node_4099,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ScreenPos,id:3549,x:32922,y:32483,varname:node_3549,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:4233,x:33090,y:32483,ptovrint:False,ptlb:DisplaceTex,ptin:_DisplaceTex,varname:node_4233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:29e7be3707affdb4a97b71fcd5f8e658,ntxv:3,isnm:True|UVIN-3549-UVOUT;n:type:ShaderForge.SFN_Multiply,id:66,x:33311,y:32500,varname:node_66,prsc:2|A-4233-R,B-9018-OUT;n:type:ShaderForge.SFN_Slider,id:9018,x:32933,y:32684,ptovrint:False,ptlb:RefractionPower,ptin:_RefractionPower,varname:node_9018,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2135922,max:1;n:type:ShaderForge.SFN_Multiply,id:2907,x:33311,y:32818,varname:node_2907,prsc:2|A-9018-OUT,B-8487-OUT;n:type:ShaderForge.SFN_Get,id:3611,x:32751,y:32818,varname:node_3611,prsc:2|IN-5628-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5190,x:32933,y:32818,varname:node_5190,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3611-OUT;n:type:ShaderForge.SFN_Append,id:8487,x:33090,y:32818,varname:node_8487,prsc:2|A-5190-R,B-5190-G;n:type:ShaderForge.SFN_ScreenPos,id:5444,x:33311,y:32650,varname:node_5444,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:5435,x:33499,y:32596,varname:node_5435,prsc:2|A-66-OUT,B-5444-UVOUT;n:type:ShaderForge.SFN_Add,id:6876,x:33499,y:32739,varname:node_6876,prsc:2|A-5444-UVOUT,B-2907-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:322,x:33704,y:32672,ptovrint:False,ptlb:NormalRefraction,ptin:_NormalRefraction,varname:node_322,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5435-OUT,B-6876-OUT;n:type:ShaderForge.SFN_SceneColor,id:5471,x:33867,y:32672,varname:node_5471,prsc:2|UVIN-322-OUT;n:type:ShaderForge.SFN_Set,id:5267,x:34029,y:32672,varname:RefractionData,prsc:2|IN-5471-RGB;n:type:ShaderForge.SFN_Set,id:2297,x:36149,y:31178,varname:FinalEmission,prsc:2|IN-1538-OUT;n:type:ShaderForge.SFN_Set,id:597,x:36645,y:31745,varname:FinalLighting,prsc:2|IN-6432-OUT;n:type:ShaderForge.SFN_Get,id:8213,x:35767,y:31688,varname:node_8213,prsc:2|IN-5267-OUT;n:type:ShaderForge.SFN_Get,id:5986,x:36601,y:31304,varname:node_5986,prsc:2|IN-2297-OUT;n:type:ShaderForge.SFN_Get,id:3392,x:36601,y:31448,varname:node_3392,prsc:2|IN-597-OUT;n:type:ShaderForge.SFN_Multiply,id:3544,x:35980,y:31688,varname:node_3544,prsc:2|A-8213-OUT,B-5009-OUT;n:type:ShaderForge.SFN_Set,id:7696,x:36145,y:31907,varname:OpacityData,prsc:2|IN-1789-OUT;n:type:ShaderForge.SFN_OneMinus,id:5009,x:35788,y:31744,varname:node_5009,prsc:2|IN-1142-OUT;n:type:ShaderForge.SFN_Get,id:2303,x:36601,y:31505,varname:node_2303,prsc:2|IN-7696-OUT;n:type:ShaderForge.SFN_Get,id:8600,x:35055,y:32054,varname:node_8600,prsc:2|IN-1672-OUT;n:type:ShaderForge.SFN_ComponentMask,id:2145,x:35255,y:32054,varname:node_2145,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8600-OUT;n:type:ShaderForge.SFN_Blend,id:9086,x:35428,y:32054,varname:node_9086,prsc:2,blmd:6,clmp:True|SRC-2145-OUT,DST-4163-OUT;n:type:ShaderForge.SFN_Blend,id:3102,x:36149,y:31556,varname:node_3102,prsc:2,blmd:6,clmp:True|SRC-5526-OUT,DST-3544-OUT;n:type:ShaderForge.SFN_Multiply,id:6687,x:35601,y:32054,varname:node_6687,prsc:2|A-9086-OUT,B-4716-OUT,C-8700-OUT;n:type:ShaderForge.SFN_Slider,id:4716,x:35429,y:32297,ptovrint:False,ptlb:SpecterPower,ptin:_SpecterPower,varname:node_4716,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.223301,max:1;n:type:ShaderForge.SFN_Set,id:5628,x:31274,y:34221,varname:NormalRaw,prsc:2|IN-9925-RGB;n:type:ShaderForge.SFN_Color,id:9074,x:35432,y:30932,ptovrint:False,ptlb:BlendColor,ptin:_BlendColor,varname:node_9074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5132,x:35611,y:31075,varname:node_5132,prsc:2|A-9074-RGB,B-3740-OUT,C-288-OUT;n:type:ShaderForge.SFN_Get,id:6219,x:35249,y:31075,varname:node_6219,prsc:2|IN-4451-OUT;n:type:ShaderForge.SFN_OneMinus,id:3740,x:35432,y:31075,varname:node_3740,prsc:2|IN-6219-OUT;n:type:ShaderForge.SFN_Get,id:3564,x:35234,y:32384,varname:node_3564,prsc:2|IN-9641-OUT;n:type:ShaderForge.SFN_Multiply,id:5370,x:35507,y:32384,varname:node_5370,prsc:2|A-3564-OUT,B-5335-OUT,C-1558-OUT;n:type:ShaderForge.SFN_Set,id:7924,x:35766,y:32384,varname:FinalVertex,prsc:2|IN-5370-OUT;n:type:ShaderForge.SFN_Get,id:7454,x:36601,y:31566,varname:node_7454,prsc:2|IN-7924-OUT;n:type:ShaderForge.SFN_Blend,id:2355,x:35813,y:31178,varname:node_2355,prsc:2,blmd:6,clmp:True|SRC-5132-OUT,DST-7539-OUT;n:type:ShaderForge.SFN_Vector1,id:288,x:35611,y:31013,varname:node_288,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:7469,x:35055,y:32131,ptovrint:False,ptlb:GhostTex,ptin:_GhostTex,varname:node_7469,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca7949f6e0c4be444992a6c96e043ed8,ntxv:0,isnm:False|UVIN-3103-OUT;n:type:ShaderForge.SFN_Get,id:3103,x:34874,y:32131,varname:node_3103,prsc:2|IN-6124-OUT;n:type:ShaderForge.SFN_Tex2d,id:5605,x:35428,y:31889,ptovrint:False,ptlb:BlendTex,ptin:_BlendTex,varname:node_5605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6bbd1f15d2d94a849b509094a95f888e,ntxv:0,isnm:False|UVIN-2557-OUT;n:type:ShaderForge.SFN_Get,id:776,x:35407,y:31800,varname:node_776,prsc:2|IN-4870-OUT;n:type:ShaderForge.SFN_Blend,id:2896,x:35788,y:31871,varname:node_2896,prsc:2,blmd:12,clmp:True|SRC-1142-OUT,DST-7218-OUT;n:type:ShaderForge.SFN_Multiply,id:7218,x:35601,y:31906,varname:node_7218,prsc:2|A-776-OUT,B-5605-G;n:type:ShaderForge.SFN_Get,id:2557,x:35246,y:31889,varname:node_2557,prsc:2|IN-1563-OUT;n:type:ShaderForge.SFN_TexCoord,id:3147,x:31374,y:33721,varname:node_3147,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9573,x:31576,y:33721,varname:node_9573,prsc:2,spu:0,spv:1|UVIN-3147-UVOUT,DIST-8171-OUT;n:type:ShaderForge.SFN_Time,id:5200,x:31374,y:33886,varname:node_5200,prsc:2;n:type:ShaderForge.SFN_Slider,id:5007,x:31419,y:34064,ptovrint:False,ptlb:PannSpeed2,ptin:_PannSpeed2,varname:_PannSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:8171,x:31576,y:33886,varname:node_8171,prsc:2|A-5200-T,B-5007-OUT;n:type:ShaderForge.SFN_Set,id:1563,x:31736,y:33721,varname:PannUV2,prsc:2|IN-9573-UVOUT;n:type:ShaderForge.SFN_NormalVector,id:1558,x:35507,y:32518,prsc:2,pt:False;n:type:ShaderForge.SFN_SwitchProperty,id:3359,x:31307,y:32500,ptovrint:False,ptlb:UseMatCap,ptin:_UseMatCap,varname:node_3359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8746-OUT,B-986-RGB;n:type:ShaderForge.SFN_NormalVector,id:9684,x:30887,y:32756,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:5673,x:31059,y:32756,varname:node_5673,prsc:2,tffrom:0,tfto:3|IN-9684-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1089,x:31224,y:32756,varname:node_1089,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5673-XYZ;n:type:ShaderForge.SFN_RemapRange,id:4473,x:31394,y:32756,varname:node_4473,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1089-OUT;n:type:ShaderForge.SFN_Tex2d,id:986,x:31554,y:32756,ptovrint:False,ptlb:MatCapTex,ptin:_MatCapTex,varname:node_986,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:83aebac4aaf74f04298d64a5b05e9a1b,ntxv:0,isnm:False|UVIN-4473-OUT;n:type:ShaderForge.SFN_Get,id:8700,x:35429,y:32222,varname:node_8700,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_Multiply,id:8531,x:36364,y:32037,varname:node_8531,prsc:2|A-5821-OUT,B-9810-OUT;n:type:ShaderForge.SFN_OneMinus,id:5821,x:36166,y:31985,varname:node_5821,prsc:2|IN-1789-OUT;n:type:ShaderForge.SFN_Get,id:9810,x:36145,y:32138,varname:node_9810,prsc:2|IN-5267-OUT;n:type:ShaderForge.SFN_Get,id:414,x:36455,y:31891,varname:node_414,prsc:2|IN-9625-OUT;n:type:ShaderForge.SFN_Blend,id:1789,x:35988,y:31985,varname:node_1789,prsc:2,blmd:6,clmp:True|SRC-2896-OUT,DST-7866-OUT;n:type:ShaderForge.SFN_Set,id:4525,x:35766,y:32316,varname:SpecterPower,prsc:2|IN-4716-OUT;n:type:ShaderForge.SFN_Get,id:882,x:35792,y:31341,varname:node_882,prsc:2|IN-7696-OUT;n:type:ShaderForge.SFN_Set,id:5786,x:36558,y:32037,varname:FinalRefractionData,prsc:2|IN-8531-OUT;n:type:ShaderForge.SFN_Multiply,id:1538,x:35982,y:31178,varname:node_1538,prsc:2|A-2355-OUT,B-882-OUT;n:type:ShaderForge.SFN_Lerp,id:6432,x:36455,y:31745,varname:node_6432,prsc:2|A-3102-OUT,B-8531-OUT,T-414-OUT;n:type:ShaderForge.SFN_Slider,id:4180,x:35766,y:32241,ptovrint:False,ptlb:SpecterIntensity,ptin:_SpecterIntensity,varname:node_4180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:4163,x:35255,y:32210,varname:node_4163,prsc:2|A-7469-RGB,B-4482-RGB;n:type:ShaderForge.SFN_Color,id:4482,x:35055,y:32324,ptovrint:False,ptlb:GhostTint,ptin:_GhostTint,varname:node_4482,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7866,x:35787,y:32054,varname:node_7866,prsc:2|A-6687-OUT,B-4180-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6948,x:33135,y:31099,ptovrint:False,ptlb:UseGradientTex,ptin:_UseGradientTex,varname:node_6948,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4099-V,B-2057-B;n:type:ShaderForge.SFN_Tex2d,id:2057,x:32907,y:31069,ptovrint:False,ptlb:GradientTex,ptin:_GradientTex,varname:node_2057,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6b58dca8fd86a3644836820321e7221c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:8169,x:34855,y:32536,ptovrint:False,ptlb:VertexOffsetPower,ptin:_VertexOffsetPower,varname:node_8169,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Exp,id:8453,x:35055,y:32478,varname:node_8453,prsc:2,et:0|IN-8169-OUT;n:type:ShaderForge.SFN_Multiply,id:5335,x:35255,y:32449,varname:node_5335,prsc:2|A-8453-OUT,B-3077-G;n:type:ShaderForge.SFN_Tex2d,id:3077,x:35055,y:32649,ptovrint:False,ptlb:VertexOffsetTex,ptin:_VertexOffsetTex,varname:node_3077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:def677157e3238c4a8856f36cd1c0c1b,ntxv:0,isnm:False;proporder:6001-7791-9925-7903-8345-2632-8551-7947-2912-589-6040-8679-2330-8454-5014-7154-1118-2913-4233-9018-322-4716-9074-7469-5605-5007-3359-986-4180-4482-6948-2057-8169-3077;pass:END;sub:END;*/

Shader "Retus001/TrueCloaking" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _NormalTex ("NormalTex", 2D) = "bump" {}
        _NormalPower ("NormalPower", Range(0, 1)) = 0.2
        [MaterialToggle] _HighLights ("HighLights", Float ) = 0
        _AnisotropicColor ("AnisotropicColor", Color) = (1,1,1,1)
        _AnisotropicPower ("AnisotropicPower", Range(0, 10)) = 3.5
        _AnisotropicIntensity ("AnisotropicIntensity", Range(0, 2)) = 1
        _SpecularColor ("SpecularColor", Color) = (1,1,1,1)
        _SpecularPower ("SpecularPower", Range(0, 10)) = 0
        _SpecularIntensity ("SpecularIntensity", Range(0, 10)) = 0
        _AnisotropicDirection ("AnisotropicDirection", Range(0, 1)) = 0.45
        _FresnelColor ("FresnelColor", Color) = (0.6078432,0.9734884,1,1)
        _FresnelPower ("FresnelPower", Range(0, 10)) = 1.5
        _PannSpeed ("PannSpeed", Range(0, 5)) = 0
        _BlendWidth ("BlendWidth", Range(0, 1)) = 0.2718447
        _GradientHeight ("GradientHeight", Range(0, 1)) = 0.5242718
        [MaterialToggle] _VerticalDirection ("VerticalDirection", Float ) = 1
        _DisplaceTex ("DisplaceTex", 2D) = "bump" {}
        _RefractionPower ("RefractionPower", Range(0, 1)) = 0.2135922
        [MaterialToggle] _NormalRefraction ("NormalRefraction", Float ) = 0
        _SpecterPower ("SpecterPower", Range(0, 1)) = 0.223301
        _BlendColor ("BlendColor", Color) = (1,1,1,1)
        _GhostTex ("GhostTex", 2D) = "white" {}
        _BlendTex ("BlendTex", 2D) = "white" {}
        _PannSpeed2 ("PannSpeed2", Range(0, 5)) = 0
        [MaterialToggle] _UseMatCap ("UseMatCap", Float ) = 0
        _MatCapTex ("MatCapTex", 2D) = "white" {}
        _SpecterIntensity ("SpecterIntensity", Range(0, 10)) = 0
        _GhostTint ("GhostTint", Color) = (1,1,1,1)
        [MaterialToggle] _UseGradientTex ("UseGradientTex", Float ) = 0
        _GradientTex ("GradientTex", 2D) = "white" {}
        _VertexOffsetPower ("VertexOffsetPower", Float ) = 0.01
        _VertexOffsetTex ("VertexOffsetTex", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CustomTag"="SF"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float _AnisotropicPower;
            uniform float4 _AnisotropicColor;
            uniform float _AnisotropicIntensity;
            uniform float _AnisotropicDirection;
            uniform fixed _HighLights;
            uniform float _FresnelPower;
            uniform float4 _FresnelColor;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float _PannSpeed;
            uniform float4 _SpecularColor;
            uniform float _BlendWidth;
            uniform float _GradientHeight;
            uniform fixed _VerticalDirection;
            uniform sampler2D _DisplaceTex; uniform float4 _DisplaceTex_ST;
            uniform float _RefractionPower;
            uniform fixed _NormalRefraction;
            uniform float _SpecterPower;
            uniform float4 _BlendColor;
            uniform sampler2D _GhostTex; uniform float4 _GhostTex_ST;
            uniform sampler2D _BlendTex; uniform float4 _BlendTex_ST;
            uniform float _PannSpeed2;
            uniform fixed _UseMatCap;
            uniform sampler2D _MatCapTex; uniform float4 _MatCapTex_ST;
            uniform float _SpecterIntensity;
            uniform float4 _GhostTint;
            uniform fixed _UseGradientTex;
            uniform sampler2D _GradientTex; uniform float4 _GradientTex_ST;
            uniform float _VertexOffsetPower;
            uniform sampler2D _VertexOffsetTex; uniform float4 _VertexOffsetTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 _GradientTex_var = tex2Dlod(_GradientTex,float4(TRANSFORM_TEX(o.uv0, _GradientTex),0.0,0));
                float Gradient = lerp( o.uv0.g, _GradientTex_var.b, _UseGradientTex );
                float node_9915 = Gradient;
                float Height = _GradientHeight;
                float node_2508 = Height;
                float node_7276_if_leA = step(node_9915,node_2508);
                float node_7276_if_leB = step(node_2508,node_9915);
                float node_5689 = 0.0;
                float node_6244 = 1.0;
                float Width = _BlendWidth;
                float HalfWidth = (Width*0.5);
                float node_2262 = HalfWidth;
                float node_7714 = (node_5689-node_2262);
                float HeightRemap = (node_7714 + ( (Height - node_5689) * ((node_2262+node_6244) - node_7714) ) / (node_6244 - node_5689));
                float node_7967 = HeightRemap;
                float node_1680 = HalfWidth;
                float Bottom = (node_7967-node_1680);
                float node_1818 = Bottom;
                float node_4215 = 0.0;
                float node_9928 = 1.0;
                float Top = (node_7967+node_1680);
                float node_2209 = saturate((1.0 - (node_4215 + ( (node_9915 - node_2508) * (node_9928 - node_4215) ) / (Top - node_2508))));
                float ScanGradient = lerp((node_7276_if_leA*saturate((node_4215 + ( (node_9915 - node_1818) * (node_9928 - node_4215) ) / (node_2508 - node_1818))))+(node_7276_if_leB*node_2209),node_2209,node_7276_if_leA*node_7276_if_leB);
                float4 _VertexOffsetTex_var = tex2Dlod(_VertexOffsetTex,float4(TRANSFORM_TEX(o.uv0, _VertexOffsetTex),0.0,0));
                float3 FinalVertex = (ScanGradient*(exp(_VertexOffsetPower)*_VertexOffsetTex_var.g)*v.normal);
                v.vertex.xyz += FinalVertex;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 NormalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = NormalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float4 _GradientTex_var = tex2D(_GradientTex,TRANSFORM_TEX(i.uv0, _GradientTex));
                float Gradient = lerp( i.uv0.g, _GradientTex_var.b, _UseGradientTex );
                float Height = _GradientHeight;
                float node_5689 = 0.0;
                float node_6244 = 1.0;
                float Width = _BlendWidth;
                float HalfWidth = (Width*0.5);
                float node_2262 = HalfWidth;
                float node_7714 = (node_5689-node_2262);
                float HeightRemap = (node_7714 + ( (Height - node_5689) * ((node_2262+node_6244) - node_7714) ) / (node_6244 - node_5689));
                float node_7967 = HeightRemap;
                float node_1680 = HalfWidth;
                float Bottom = (node_7967-node_1680);
                float node_8308 = Bottom;
                float Top = (node_7967+node_1680);
                float node_9795 = 0.0;
                float node_3546 = saturate((node_9795 + ( (Gradient - node_8308) * (1.0 - node_9795) ) / (Top - node_8308)));
                float HeightGradient = lerp( node_3546, (1.0 - node_3546), _VerticalDirection );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float2 node_4473 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg*0.5+0.5);
                float4 _MatCapTex_var = tex2D(_MatCapTex,TRANSFORM_TEX(node_4473, _MatCapTex));
                float3 Diffuse = lerp( (_MainColor.rgb*_MainTex_var.rgb), _MatCapTex_var.rgb, _UseMatCap );
                float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float3 lightData = (node_123*_LightColor0.rgb);
                float3 node_2550 = lightData;
                float node_1142 = HeightGradient;
                float node_9316 = Gradient;
                float node_2570_if_leA = step(node_9316,Top);
                float node_2570_if_leB = step(Top,node_9316);
                float node_1057 = 1.0;
                float node_8926 = 0.0;
                float node_2639_if_leA = step(node_9316,Bottom);
                float node_2639_if_leB = step(Bottom,node_9316);
                float WidthIntersect = (lerp((node_2570_if_leA*node_1057)+(node_2570_if_leB*node_8926),node_1057,node_2570_if_leA*node_2570_if_leB)*lerp((node_2639_if_leA*node_8926)+(node_2639_if_leB*node_1057),node_1057,node_2639_if_leA*node_2639_if_leB));
                float4 node_5200 = _Time;
                float2 PannUV2 = (i.uv0+(node_5200.g*_PannSpeed2)*float2(0,1));
                float2 node_2557 = PannUV2;
                float4 _BlendTex_var = tex2D(_BlendTex,TRANSFORM_TEX(node_2557, _BlendTex));
                float3 FresnelCustom = (_FresnelColor.rgb*pow((1.0 - dot(normalDirection,viewDirection)),exp(_FresnelPower)));
                float4 node_5071 = _Time;
                float2 PannUV = (i.uv0+(node_5071.g*_PannSpeed)*float2(1,0));
                float2 node_3103 = PannUV;
                float4 _GhostTex_var = tex2D(_GhostTex,TRANSFORM_TEX(node_3103, _GhostTex));
                float Shadow = node_123;
                float3 node_1789 = saturate((1.0-(1.0-saturate((node_1142 > 0.5 ?  (1.0-(1.0-2.0*(node_1142-0.5))*(1.0-(WidthIntersect*_BlendTex_var.g))) : (2.0*node_1142*(WidthIntersect*_BlendTex_var.g))) ))*(1.0-((saturate((1.0-(1.0-FresnelCustom.g)*(1.0-(_GhostTex_var.rgb*_GhostTint.rgb))))*_SpecterPower*Shadow)*_SpecterIntensity))));
                float3 OpacityData = node_1789;
                float3 FinalEmission = (saturate((1.0-(1.0-(_BlendColor.rgb*(1.0 - HeightGradient)*0.5))*(1.0-(UNITY_LIGHTMODEL_AMBIENT.rgb*Diffuse*node_2550))))*OpacityData);
                float3 emissive = FinalEmission;
                float3 Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*_SpecularColor.rgb*Shadow);
                float3 Anisotropic = ((pow((1.0 - abs(dot(halfDirection,lerp(i.bitangentDir,i.tangentDir,_AnisotropicDirection)))),exp(_AnisotropicPower))*_AnisotropicIntensity*_AnisotropicColor.rgb)*Shadow);
                float3 highlights = lerp( Specular, Anisotropic, _HighLights );
                float3 _DisplaceTex_var = UnpackNormal(tex2D(_DisplaceTex,TRANSFORM_TEX(sceneUVs.rg, _DisplaceTex)));
                float3 NormalRaw = _NormalTex_var.rgb;
                float2 node_5190 = NormalRaw.rg;
                float3 RefractionData = tex2D( _GrabTexture, lerp( ((_DisplaceTex_var.r*_RefractionPower)+sceneUVs.rg), (sceneUVs.rg+(_RefractionPower*float2(node_5190.r,node_5190.g))), _NormalRefraction )).rgb;
                float3 node_8531 = ((1.0 - node_1789)*RefractionData);
                float3 FinalLighting = lerp(saturate((1.0-(1.0-(saturate((1.0-(1.0-(node_2550*highlights))*(1.0-FresnelCustom)))*Shadow))*(1.0-(RefractionData*(1.0 - node_1142))))),node_8531,Height);
                float3 finalColor = emissive + FinalLighting;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float _AnisotropicPower;
            uniform float4 _AnisotropicColor;
            uniform float _AnisotropicIntensity;
            uniform float _AnisotropicDirection;
            uniform fixed _HighLights;
            uniform float _FresnelPower;
            uniform float4 _FresnelColor;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float _PannSpeed;
            uniform float4 _SpecularColor;
            uniform float _BlendWidth;
            uniform float _GradientHeight;
            uniform fixed _VerticalDirection;
            uniform sampler2D _DisplaceTex; uniform float4 _DisplaceTex_ST;
            uniform float _RefractionPower;
            uniform fixed _NormalRefraction;
            uniform float _SpecterPower;
            uniform float4 _BlendColor;
            uniform sampler2D _GhostTex; uniform float4 _GhostTex_ST;
            uniform sampler2D _BlendTex; uniform float4 _BlendTex_ST;
            uniform float _PannSpeed2;
            uniform fixed _UseMatCap;
            uniform sampler2D _MatCapTex; uniform float4 _MatCapTex_ST;
            uniform float _SpecterIntensity;
            uniform float4 _GhostTint;
            uniform fixed _UseGradientTex;
            uniform sampler2D _GradientTex; uniform float4 _GradientTex_ST;
            uniform float _VertexOffsetPower;
            uniform sampler2D _VertexOffsetTex; uniform float4 _VertexOffsetTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 _GradientTex_var = tex2Dlod(_GradientTex,float4(TRANSFORM_TEX(o.uv0, _GradientTex),0.0,0));
                float Gradient = lerp( o.uv0.g, _GradientTex_var.b, _UseGradientTex );
                float node_9915 = Gradient;
                float Height = _GradientHeight;
                float node_2508 = Height;
                float node_7276_if_leA = step(node_9915,node_2508);
                float node_7276_if_leB = step(node_2508,node_9915);
                float node_5689 = 0.0;
                float node_6244 = 1.0;
                float Width = _BlendWidth;
                float HalfWidth = (Width*0.5);
                float node_2262 = HalfWidth;
                float node_7714 = (node_5689-node_2262);
                float HeightRemap = (node_7714 + ( (Height - node_5689) * ((node_2262+node_6244) - node_7714) ) / (node_6244 - node_5689));
                float node_7967 = HeightRemap;
                float node_1680 = HalfWidth;
                float Bottom = (node_7967-node_1680);
                float node_1818 = Bottom;
                float node_4215 = 0.0;
                float node_9928 = 1.0;
                float Top = (node_7967+node_1680);
                float node_2209 = saturate((1.0 - (node_4215 + ( (node_9915 - node_2508) * (node_9928 - node_4215) ) / (Top - node_2508))));
                float ScanGradient = lerp((node_7276_if_leA*saturate((node_4215 + ( (node_9915 - node_1818) * (node_9928 - node_4215) ) / (node_2508 - node_1818))))+(node_7276_if_leB*node_2209),node_2209,node_7276_if_leA*node_7276_if_leB);
                float4 _VertexOffsetTex_var = tex2Dlod(_VertexOffsetTex,float4(TRANSFORM_TEX(o.uv0, _VertexOffsetTex),0.0,0));
                float3 FinalVertex = (ScanGradient*(exp(_VertexOffsetPower)*_VertexOffsetTex_var.g)*v.normal);
                v.vertex.xyz += FinalVertex;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 NormalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = NormalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
                float3 lightData = (node_123*_LightColor0.rgb);
                float3 node_2550 = lightData;
                float Shadow = node_123;
                float3 Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*_SpecularColor.rgb*Shadow);
                float3 Anisotropic = ((pow((1.0 - abs(dot(halfDirection,lerp(i.bitangentDir,i.tangentDir,_AnisotropicDirection)))),exp(_AnisotropicPower))*_AnisotropicIntensity*_AnisotropicColor.rgb)*Shadow);
                float3 highlights = lerp( Specular, Anisotropic, _HighLights );
                float3 FresnelCustom = (_FresnelColor.rgb*pow((1.0 - dot(normalDirection,viewDirection)),exp(_FresnelPower)));
                float3 _DisplaceTex_var = UnpackNormal(tex2D(_DisplaceTex,TRANSFORM_TEX(sceneUVs.rg, _DisplaceTex)));
                float3 NormalRaw = _NormalTex_var.rgb;
                float2 node_5190 = NormalRaw.rg;
                float3 RefractionData = tex2D( _GrabTexture, lerp( ((_DisplaceTex_var.r*_RefractionPower)+sceneUVs.rg), (sceneUVs.rg+(_RefractionPower*float2(node_5190.r,node_5190.g))), _NormalRefraction )).rgb;
                float4 _GradientTex_var = tex2D(_GradientTex,TRANSFORM_TEX(i.uv0, _GradientTex));
                float Gradient = lerp( i.uv0.g, _GradientTex_var.b, _UseGradientTex );
                float Height = _GradientHeight;
                float node_5689 = 0.0;
                float node_6244 = 1.0;
                float Width = _BlendWidth;
                float HalfWidth = (Width*0.5);
                float node_2262 = HalfWidth;
                float node_7714 = (node_5689-node_2262);
                float HeightRemap = (node_7714 + ( (Height - node_5689) * ((node_2262+node_6244) - node_7714) ) / (node_6244 - node_5689));
                float node_7967 = HeightRemap;
                float node_1680 = HalfWidth;
                float Bottom = (node_7967-node_1680);
                float node_8308 = Bottom;
                float Top = (node_7967+node_1680);
                float node_9795 = 0.0;
                float node_3546 = saturate((node_9795 + ( (Gradient - node_8308) * (1.0 - node_9795) ) / (Top - node_8308)));
                float HeightGradient = lerp( node_3546, (1.0 - node_3546), _VerticalDirection );
                float node_1142 = HeightGradient;
                float node_9316 = Gradient;
                float node_2570_if_leA = step(node_9316,Top);
                float node_2570_if_leB = step(Top,node_9316);
                float node_1057 = 1.0;
                float node_8926 = 0.0;
                float node_2639_if_leA = step(node_9316,Bottom);
                float node_2639_if_leB = step(Bottom,node_9316);
                float WidthIntersect = (lerp((node_2570_if_leA*node_1057)+(node_2570_if_leB*node_8926),node_1057,node_2570_if_leA*node_2570_if_leB)*lerp((node_2639_if_leA*node_8926)+(node_2639_if_leB*node_1057),node_1057,node_2639_if_leA*node_2639_if_leB));
                float4 node_5200 = _Time;
                float2 PannUV2 = (i.uv0+(node_5200.g*_PannSpeed2)*float2(0,1));
                float2 node_2557 = PannUV2;
                float4 _BlendTex_var = tex2D(_BlendTex,TRANSFORM_TEX(node_2557, _BlendTex));
                float4 node_5071 = _Time;
                float2 PannUV = (i.uv0+(node_5071.g*_PannSpeed)*float2(1,0));
                float2 node_3103 = PannUV;
                float4 _GhostTex_var = tex2D(_GhostTex,TRANSFORM_TEX(node_3103, _GhostTex));
                float3 node_1789 = saturate((1.0-(1.0-saturate((node_1142 > 0.5 ?  (1.0-(1.0-2.0*(node_1142-0.5))*(1.0-(WidthIntersect*_BlendTex_var.g))) : (2.0*node_1142*(WidthIntersect*_BlendTex_var.g))) ))*(1.0-((saturate((1.0-(1.0-FresnelCustom.g)*(1.0-(_GhostTex_var.rgb*_GhostTint.rgb))))*_SpecterPower*Shadow)*_SpecterIntensity))));
                float3 node_8531 = ((1.0 - node_1789)*RefractionData);
                float3 FinalLighting = lerp(saturate((1.0-(1.0-(saturate((1.0-(1.0-(node_2550*highlights))*(1.0-FresnelCustom)))*Shadow))*(1.0-(RefractionData*(1.0 - node_1142))))),node_8531,Height);
                float3 finalColor = FinalLighting;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _BlendWidth;
            uniform float _GradientHeight;
            uniform fixed _UseGradientTex;
            uniform sampler2D _GradientTex; uniform float4 _GradientTex_ST;
            uniform float _VertexOffsetPower;
            uniform sampler2D _VertexOffsetTex; uniform float4 _VertexOffsetTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _GradientTex_var = tex2Dlod(_GradientTex,float4(TRANSFORM_TEX(o.uv0, _GradientTex),0.0,0));
                float Gradient = lerp( o.uv0.g, _GradientTex_var.b, _UseGradientTex );
                float node_9915 = Gradient;
                float Height = _GradientHeight;
                float node_2508 = Height;
                float node_7276_if_leA = step(node_9915,node_2508);
                float node_7276_if_leB = step(node_2508,node_9915);
                float node_5689 = 0.0;
                float node_6244 = 1.0;
                float Width = _BlendWidth;
                float HalfWidth = (Width*0.5);
                float node_2262 = HalfWidth;
                float node_7714 = (node_5689-node_2262);
                float HeightRemap = (node_7714 + ( (Height - node_5689) * ((node_2262+node_6244) - node_7714) ) / (node_6244 - node_5689));
                float node_7967 = HeightRemap;
                float node_1680 = HalfWidth;
                float Bottom = (node_7967-node_1680);
                float node_1818 = Bottom;
                float node_4215 = 0.0;
                float node_9928 = 1.0;
                float Top = (node_7967+node_1680);
                float node_2209 = saturate((1.0 - (node_4215 + ( (node_9915 - node_2508) * (node_9928 - node_4215) ) / (Top - node_2508))));
                float ScanGradient = lerp((node_7276_if_leA*saturate((node_4215 + ( (node_9915 - node_1818) * (node_9928 - node_4215) ) / (node_2508 - node_1818))))+(node_7276_if_leB*node_2209),node_2209,node_7276_if_leA*node_7276_if_leB);
                float4 _VertexOffsetTex_var = tex2Dlod(_VertexOffsetTex,float4(TRANSFORM_TEX(o.uv0, _VertexOffsetTex),0.0,0));
                float3 FinalVertex = (ScanGradient*(exp(_VertexOffsetPower)*_VertexOffsetTex_var.g)*v.normal);
                v.vertex.xyz += FinalVertex;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "ShaderForgeMaterialInspector"
}
