// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35357,y:31831,varname:node_3138,prsc:2|normal-94-OUT,emission-8364-OUT,custl-9548-OUT,olwid-5509-OUT,olcol-3430-OUT;n:type:ShaderForge.SFN_LightVector,id:1501,x:32318,y:31460,varname:node_1501,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2465,x:32318,y:31315,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:8678,x:32890,y:31613,varname:lightData,prsc:2|IN-8244-OUT;n:type:ShaderForge.SFN_LightColor,id:2706,x:32506,y:31665,varname:node_2706,prsc:2;n:type:ShaderForge.SFN_Multiply,id:123,x:32505,y:31540,varname:node_123,prsc:2|A-7497-OUT,B-7929-OUT;n:type:ShaderForge.SFN_Multiply,id:8244,x:32698,y:31613,varname:node_8244,prsc:2|A-123-OUT,B-2706-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:7929,x:32318,y:31583,varname:node_7929,prsc:2;n:type:ShaderForge.SFN_Color,id:6001,x:32326,y:31862,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:7467,x:32672,y:31944,varname:Diffuse,prsc:2|IN-8746-OUT;n:type:ShaderForge.SFN_Tex2d,id:7791,x:32328,y:32031,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2bb3cafcd43264140b4c3b8e7dda9b92,ntxv:0,isnm:False|UVIN-6515-OUT;n:type:ShaderForge.SFN_Dot,id:7497,x:32505,y:31386,varname:node_7497,prsc:2,dt:1|A-1501-OUT,B-2465-OUT;n:type:ShaderForge.SFN_HalfVector,id:3782,x:32319,y:31191,varname:node_3782,prsc:2;n:type:ShaderForge.SFN_Dot,id:7728,x:32506,y:31242,varname:node_7728,prsc:2,dt:1|A-3782-OUT,B-2465-OUT;n:type:ShaderForge.SFN_Set,id:3922,x:32698,y:31540,varname:Shadow,prsc:2|IN-123-OUT;n:type:ShaderForge.SFN_Set,id:1493,x:33408,y:31242,varname:Specular,prsc:2|IN-8182-OUT;n:type:ShaderForge.SFN_Power,id:5125,x:32703,y:31242,varname:node_5125,prsc:2|VAL-7728-OUT,EXP-2568-OUT;n:type:ShaderForge.SFN_Slider,id:589,x:32624,y:31018,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.5,max:10;n:type:ShaderForge.SFN_Exp,id:2568,x:32703,y:31098,varname:node_2568,prsc:2,et:0|IN-589-OUT;n:type:ShaderForge.SFN_Slider,id:6040,x:32929,y:31019,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Exp,id:6503,x:33008,y:31098,varname:node_6503,prsc:2,et:0|IN-6040-OUT;n:type:ShaderForge.SFN_Multiply,id:5055,x:33008,y:31242,varname:node_5055,prsc:2|A-5125-OUT,B-6503-OUT;n:type:ShaderForge.SFN_Multiply,id:8182,x:33251,y:31242,varname:node_8182,prsc:2|A-5055-OUT,B-2912-RGB,C-6427-OUT;n:type:ShaderForge.SFN_Get,id:6427,x:33251,y:31379,varname:node_6427,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_NormalVector,id:3380,x:32335,y:32393,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:214,x:32531,y:32463,varname:node_214,prsc:2,dt:0|A-3380-OUT,B-2749-OUT;n:type:ShaderForge.SFN_Set,id:1672,x:33424,y:32399,varname:FresnelCustom,prsc:2|IN-8196-OUT;n:type:ShaderForge.SFN_ViewVector,id:2749,x:32335,y:32536,varname:node_2749,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:7332,x:32693,y:32463,varname:node_7332,prsc:2|IN-214-OUT;n:type:ShaderForge.SFN_Power,id:1670,x:32900,y:32463,varname:node_1670,prsc:2|VAL-7332-OUT,EXP-6170-OUT;n:type:ShaderForge.SFN_Slider,id:8454,x:32178,y:32685,ptovrint:False,ptlb:FresnelPower,ptin:_FresnelPower,varname:_fresnelPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:2330,x:32693,y:32195,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:_FresnelColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6078432,c2:0.9734884,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3400,x:33105,y:32399,varname:node_3400,prsc:2|A-4908-OUT,B-1670-OUT;n:type:ShaderForge.SFN_Tex2d,id:9925,x:32855,y:32051,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:_NormalTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a4a0b21d8befca6418c2fbddd6d15a02,ntxv:3,isnm:True|UVIN-1624-OUT;n:type:ShaderForge.SFN_Lerp,id:2052,x:33040,y:32031,varname:node_2052,prsc:2|A-4936-OUT,B-9925-RGB,T-7903-OUT;n:type:ShaderForge.SFN_Vector3,id:4936,x:32855,y:31940,varname:node_4936,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7903,x:33040,y:32194,ptovrint:False,ptlb:NormalPower,ptin:_NormalPower,varname:_NormalPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Set,id:2699,x:33203,y:32031,varname:normalData,prsc:2|IN-2052-OUT;n:type:ShaderForge.SFN_Color,id:2912,x:33251,y:31081,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_2912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8746,x:32509,y:31944,varname:node_8746,prsc:2|A-6001-RGB,B-7791-RGB;n:type:ShaderForge.SFN_Clamp01,id:8196,x:33270,y:32399,varname:node_8196,prsc:2|IN-3400-OUT;n:type:ShaderForge.SFN_Get,id:8224,x:34216,y:32400,varname:node_8224,prsc:2|IN-7467-OUT;n:type:ShaderForge.SFN_Get,id:5673,x:33490,y:32152,varname:node_5673,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_Get,id:94,x:34929,y:31688,varname:node_94,prsc:2|IN-2699-OUT;n:type:ShaderForge.SFN_Get,id:5592,x:33490,y:32201,varname:node_5592,prsc:2|IN-1493-OUT;n:type:ShaderForge.SFN_Get,id:4919,x:33649,y:32290,varname:node_4919,prsc:2|IN-1672-OUT;n:type:ShaderForge.SFN_Blend,id:8280,x:34086,y:32290,varname:node_8280,prsc:2,blmd:6,clmp:True|SRC-2958-OUT,DST-8717-OUT;n:type:ShaderForge.SFN_RemapRange,id:6170,x:32693,y:32583,varname:node_6170,prsc:2,frmn:0,frmx:1,tomn:15,tomx:0|IN-8454-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1578,x:34086,y:32152,ptovrint:False,ptlb:useFresnel,ptin:_useFresnel,varname:node_1578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2958-OUT,B-8280-OUT;n:type:ShaderForge.SFN_Multiply,id:8717,x:33866,y:32290,varname:node_8717,prsc:2|A-4919-OUT,B-6122-OUT;n:type:ShaderForge.SFN_Get,id:6122,x:33649,y:32338,varname:node_6122,prsc:2|IN-3922-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4908,x:32900,y:32341,ptovrint:False,ptlb:lightColorFresnel,ptin:_lightColorFresnel,varname:node_4908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2330-RGB,B-8367-RGB;n:type:ShaderForge.SFN_LightColor,id:8367,x:32693,y:32341,varname:node_8367,prsc:2;n:type:ShaderForge.SFN_If,id:9548,x:34576,y:32458,varname:node_9548,prsc:2|A-1578-OUT,B-1497-OUT,GT-1239-OUT,EQ-4301-OUT,LT-4301-OUT;n:type:ShaderForge.SFN_Color,id:9189,x:34237,y:32570,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_9189,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4743,x:34237,y:32736,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:node_4743,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3424261,c2:0.3530363,c3:0.4245283,c4:1;n:type:ShaderForge.SFN_Slider,id:1497,x:34080,y:32471,ptovrint:False,ptlb:CellShadingBalance,ptin:_CellShadingBalance,varname:node_1497,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:5509,x:34951,y:32311,ptovrint:False,ptlb:OutlinePower,ptin:_OutlinePower,varname:node_5509,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:1239,x:34576,y:32317,varname:node_1239,prsc:2|A-8224-OUT,B-9189-RGB;n:type:ShaderForge.SFN_Multiply,id:4301,x:34576,y:32599,varname:node_4301,prsc:2|A-8224-OUT,B-4743-RGB;n:type:ShaderForge.SFN_Tex2d,id:2744,x:34341,y:31597,ptovrint:False,ptlb:EmissionMask,ptin:_EmissionMask,varname:node_2744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4286-OUT;n:type:ShaderForge.SFN_Color,id:954,x:34341,y:31780,ptovrint:False,ptlb:GlowColor,ptin:_GlowColor,varname:node_954,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:8364,x:34543,y:31745,varname:node_8364,prsc:2|A-2744-RGB,B-954-RGB,C-5593-OUT,D-6099-OUT;n:type:ShaderForge.SFN_Slider,id:5593,x:34184,y:31944,ptovrint:False,ptlb:GlowIntensity,ptin:_GlowIntensity,varname:node_5593,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_NormalVector,id:8949,x:34341,y:31431,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewVector,id:4423,x:34341,y:31306,varname:node_4423,prsc:2;n:type:ShaderForge.SFN_Dot,id:679,x:34564,y:31371,varname:node_679,prsc:2,dt:0|A-4423-OUT,B-8949-OUT;n:type:ShaderForge.SFN_Slider,id:799,x:34184,y:31227,ptovrint:False,ptlb:GlowDirectionPower,ptin:_GlowDirectionPower,varname:node_799,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Power,id:6099,x:34744,y:31371,varname:node_6099,prsc:2|VAL-679-OUT,EXP-1961-OUT;n:type:ShaderForge.SFN_Exp,id:1961,x:34565,y:31228,varname:node_1961,prsc:2,et:0|IN-799-OUT;n:type:ShaderForge.SFN_Color,id:828,x:34851,y:32404,ptovrint:False,ptlb:OutlineColor,ptin:_OutlineColor,varname:node_828,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:1620,x:34773,y:32563,ptovrint:False,ptlb:OutlineGlow,ptin:_OutlineGlow,varname:node_1620,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:3430,x:35108,y:32488,varname:node_3430,prsc:2|A-828-RGB,B-1620-OUT;n:type:ShaderForge.SFN_Add,id:616,x:33670,y:32152,varname:node_616,prsc:2|A-5673-OUT,B-5592-OUT;n:type:ShaderForge.SFN_Clamp01,id:2958,x:33866,y:32152,varname:node_2958,prsc:2|IN-616-OUT;n:type:ShaderForge.SFN_TexCoord,id:178,x:32363,y:33105,varname:node_178,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7670,x:32686,y:33240,varname:node_7670,prsc:2,spu:1,spv:0|UVIN-178-UVOUT,DIST-9777-OUT;n:type:ShaderForge.SFN_Slider,id:4077,x:32206,y:33389,ptovrint:False,ptlb:PannSpeedX,ptin:_PannSpeedX,varname:node_4077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:-1,max:5;n:type:ShaderForge.SFN_Multiply,id:9777,x:32686,y:33394,varname:node_9777,prsc:2|A-5044-TSL,B-4077-OUT;n:type:ShaderForge.SFN_Time,id:5044,x:32363,y:33249,varname:node_5044,prsc:2;n:type:ShaderForge.SFN_Set,id:1126,x:33219,y:33171,varname:UvPanner,prsc:2|IN-4264-OUT;n:type:ShaderForge.SFN_Get,id:6515,x:32144,y:32031,varname:node_6515,prsc:2|IN-1126-OUT;n:type:ShaderForge.SFN_Get,id:1624,x:32672,y:32051,varname:node_1624,prsc:2|IN-1126-OUT;n:type:ShaderForge.SFN_Panner,id:9552,x:32686,y:33094,varname:node_9552,prsc:2,spu:0,spv:1|UVIN-178-UVOUT,DIST-6418-OUT;n:type:ShaderForge.SFN_Multiply,id:6418,x:32686,y:32961,varname:node_6418,prsc:2|A-5044-TSL,B-1569-OUT;n:type:ShaderForge.SFN_Slider,id:1569,x:32206,y:33026,ptovrint:False,ptlb:PannSpeedY,ptin:_PannSpeedY,varname:node_1569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Add,id:6251,x:32890,y:33171,varname:node_6251,prsc:2|A-9552-UVOUT,B-7670-UVOUT;n:type:ShaderForge.SFN_Divide,id:4264,x:33057,y:33171,varname:node_4264,prsc:2|A-6251-OUT,B-729-OUT;n:type:ShaderForge.SFN_Vector1,id:729,x:32890,y:33297,varname:node_729,prsc:2,v1:2;n:type:ShaderForge.SFN_TexCoord,id:4883,x:33507,y:31568,varname:node_4883,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:8584,x:33821,y:31746,varname:node_8584,prsc:2,spu:1,spv:0|UVIN-4883-UVOUT,DIST-2679-OUT;n:type:ShaderForge.SFN_Time,id:599,x:33507,y:31716,varname:node_599,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2679,x:33821,y:31894,varname:node_2679,prsc:2|A-599-TSL,B-9514-OUT;n:type:ShaderForge.SFN_Slider,id:9514,x:33350,y:31864,ptovrint:False,ptlb:EmissionPannSpeedX,ptin:_EmissionPannSpeedX,varname:node_9514,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Panner,id:6134,x:33821,y:31597,varname:node_6134,prsc:2,spu:0,spv:1|UVIN-4883-UVOUT,DIST-6320-OUT;n:type:ShaderForge.SFN_Multiply,id:6320,x:33821,y:31463,varname:node_6320,prsc:2|A-599-TSL,B-2529-OUT;n:type:ShaderForge.SFN_Slider,id:2529,x:33350,y:31502,ptovrint:False,ptlb:EmissionPannSpeedY,ptin:_EmissionPannSpeedY,varname:node_2529,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Add,id:5622,x:34001,y:31597,varname:node_5622,prsc:2|A-6134-UVOUT,B-8584-UVOUT;n:type:ShaderForge.SFN_Divide,id:4286,x:34172,y:31597,varname:node_4286,prsc:2|A-5622-OUT,B-6406-OUT;n:type:ShaderForge.SFN_Vector1,id:6406,x:34001,y:31731,varname:node_6406,prsc:2,v1:2;proporder:6001-7791-9925-7903-2912-589-6040-2330-8454-1578-4908-9189-4743-1497-5509-2744-954-5593-799-828-1620-4077-1569-9514-2529;pass:END;sub:END;*/

Shader "Retus001/CellShaded" {
	Properties{
		_MainColor("Main Color", Color) = (1,1,1,1)
		_MainTex("MainTex", 2D) = "white" {}
		_NormalTex("NormalTex", 2D) = "bump" {}
		_NormalPower("NormalPower", Range(0, 1)) = 0.5
		_SpecularColor("SpecularColor", Color) = (1,1,1,1)
		_SpecularPower("SpecularPower", Range(0, 10)) = 3.5
		_SpecularIntensity("SpecularIntensity", Range(0, 10)) = 0
		_FresnelColor("FresnelColor", Color) = (0.6078432,0.9734884,1,1)
		_FresnelPower("FresnelPower", Range(0, 1)) = 0
		[MaterialToggle] _useFresnel("useFresnel", Float) = 0
		[MaterialToggle] _lightColorFresnel("lightColorFresnel", Float) = 0.6078432
		_LightColor("LightColor", Color) = (1,1,1,1)
		_ShadowColor("ShadowColor", Color) = (0.3424261,0.3530363,0.4245283,1)
		_CellShadingBalance("CellShadingBalance", Range(0, 1)) = 0.5
		_OutlinePower("OutlinePower", Range(0, 1)) = 0.1
		_EmissionMask("EmissionMask", 2D) = "white" {}
		_GlowColor("GlowColor", Color) = (1,0,0,1)
		_GlowIntensity("GlowIntensity", Range(0, 5)) = 0
		_GlowDirectionPower("GlowDirectionPower", Range(0, 10)) = 0
		_OutlineColor("OutlineColor", Color) = (0,0,0,1)
		_OutlineGlow("OutlineGlow", Range(0, 10)) = 0
		_PannSpeedX("PannSpeedX", Range(-20, 20)) = -1
		_PannSpeedY("PannSpeedY", Range(-20, 20)) = 0
		_EmissionPannSpeedX("EmissionPannSpeedX", Range(-5, 5)) = 0
		_EmissionPannSpeedY("EmissionPannSpeedY", Range(-5, 5)) = 0
	}
		SubShader{
			Tags {
				"RenderType" = "Opaque"
				"CustomTag" = "SF"
			}
			Pass {
				Name "Outline"
				Tags {
				}
				Cull Front

				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#include "UnityCG.cginc"
				#pragma fragmentoption ARB_precision_hint_fastest
				#pragma multi_compile_shadowcaster
				#pragma multi_compile_fog
				#pragma only_renderers d3d9 d3d11 glcore gles 
				#pragma target 3.0
				uniform float _OutlinePower;
				uniform float4 _OutlineColor;
				uniform float _OutlineGlow;
				struct VertexInput {
					float4 vertex : POSITION;
					float3 normal : NORMAL;
				};
				struct VertexOutput {
					float4 pos : SV_POSITION;
					UNITY_FOG_COORDS(0)
				};
				VertexOutput vert(VertexInput v) {
					VertexOutput o = (VertexOutput)0;
					o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + normalize(v.vertex)*_OutlinePower,1));
					UNITY_TRANSFER_FOG(o,o.pos);
					return o;
				}
				float4 frag(VertexOutput i) : COLOR {
					return fixed4((_OutlineColor.rgb*_OutlineGlow),0);
				}
				ENDCG
			}
			Pass {
				Name "FORWARD"
				Tags {
					"LightMode" = "ForwardBase"
				}


				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#if !UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
				#endif
				#include "UnityCG.cginc"
				#include "AutoLight.cginc"
				#include "Lighting.cginc"
				#pragma multi_compile_fwdbase_fullshadows
				#pragma multi_compile_fog
				#pragma only_renderers d3d9 d3d11 glcore gles 
				#pragma target 3.0
				uniform float4 _MainColor;
				uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
				uniform float _SpecularPower;
				uniform float _SpecularIntensity;
				uniform float _FresnelPower;
				uniform float4 _FresnelColor;
				uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
				uniform float _NormalPower;
				uniform float4 _SpecularColor;
				uniform fixed _useFresnel;
				uniform fixed _lightColorFresnel;
				uniform float4 _LightColor;
				uniform float4 _ShadowColor;
				uniform float _CellShadingBalance;
				uniform sampler2D _EmissionMask; uniform float4 _EmissionMask_ST;
				uniform float4 _GlowColor;
				uniform float _GlowIntensity;
				uniform float _GlowDirectionPower;
				uniform float _PannSpeedX;
				uniform float _PannSpeedY;
				uniform float _EmissionPannSpeedX;
				uniform float _EmissionPannSpeedY;
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
					LIGHTING_COORDS(5,6)
					UNITY_FOG_COORDS(7)
				};
				VertexOutput vert(VertexInput v) {
					VertexOutput o = (VertexOutput)0;
					o.uv0 = v.texcoord0;
					o.normalDir = UnityObjectToWorldNormal(v.normal);
					o.tangentDir = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
					o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
					o.posWorld = mul(unity_ObjectToWorld, v.vertex);
					float3 lightColor = _LightColor0.rgb;
					o.pos = UnityObjectToClipPos(v.vertex);
					UNITY_TRANSFER_FOG(o,o.pos);
					TRANSFER_VERTEX_TO_FRAGMENT(o)
					return o;
				}
				float4 frag(VertexOutput i) : COLOR {
					i.normalDir = normalize(i.normalDir);
					float3x3 tangentTransform = float3x3(i.tangentDir, i.bitangentDir, i.normalDir);
					float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
					float4 node_5044 = _Time;
					float2 UvPanner = (((i.uv0 + (node_5044.r*_PannSpeedY)*float2(0,1)) + (i.uv0 + (node_5044.r*_PannSpeedX)*float2(1,0))) / 2.0);
					float2 node_1624 = UvPanner;
					float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(node_1624, _NormalTex)));
					float3 normalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
					float3 normalLocal = normalData;
					float3 normalDirection = normalize(mul(normalLocal, tangentTransform)); // Perturbed normals
					float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
					float3 lightColor = _LightColor0.rgb;
					float3 halfDirection = normalize(viewDirection + lightDirection);
					////// Lighting:
									UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
									////// Emissive:
													float4 node_599 = _Time;
													float2 node_4286 = (((i.uv0 + (node_599.r*_EmissionPannSpeedY)*float2(0,1)) + (i.uv0 + (node_599.r*_EmissionPannSpeedX)*float2(1,0))) / 2.0);
													float4 _EmissionMask_var = tex2D(_EmissionMask,TRANSFORM_TEX(node_4286, _EmissionMask));
													float3 emissive = (_EmissionMask_var.rgb*_GlowColor.rgb*_GlowIntensity*pow(dot(viewDirection,i.normalDir),exp(_GlowDirectionPower)));
													float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
													float Shadow = node_123;
													float3 Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*_SpecularColor.rgb*Shadow);
													float3 node_2958 = saturate((Shadow + Specular));
													float3 FresnelCustom = saturate((lerp(_FresnelColor.rgb, _LightColor0.rgb, _lightColorFresnel)*pow((1.0 - dot(normalDirection,viewDirection)),(_FresnelPower*-15.0 + 15.0))));
													float node_9548_if_leA = step(lerp(node_2958, saturate((1.0 - (1.0 - node_2958)*(1.0 - (FresnelCustom*Shadow)))), _useFresnel),_CellShadingBalance);
													float node_9548_if_leB = step(_CellShadingBalance,lerp(node_2958, saturate((1.0 - (1.0 - node_2958)*(1.0 - (FresnelCustom*Shadow)))), _useFresnel));
													float2 node_6515 = UvPanner;
													float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6515, _MainTex));
													float3 Diffuse = (_MainColor.rgb*_MainTex_var.rgb);
													float3 node_8224 = Diffuse;
													float3 node_4301 = (node_8224*_ShadowColor.rgb);
													float3 finalColor = emissive + lerp((node_9548_if_leA*node_4301) + (node_9548_if_leB*(node_8224*_LightColor.rgb)),node_4301,node_9548_if_leA*node_9548_if_leB);
													fixed4 finalRGBA = fixed4(finalColor,1);
													UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
													return finalRGBA;
												}
												ENDCG
											}
											Pass {
												Name "FORWARD_DELTA"
												Tags {
													"LightMode" = "ForwardAdd"
												}
												Blend One One


												CGPROGRAM
												#pragma vertex vert
												#pragma fragment frag
												#if !UNITY_PASS_FORWARDADD
												#define UNITY_PASS_FORWARDADD
												#endif
												#include "UnityCG.cginc"
												#include "AutoLight.cginc"
												#include "Lighting.cginc"
												#pragma multi_compile_fwdadd_fullshadows
												#pragma multi_compile_fog
												#pragma only_renderers d3d9 d3d11 glcore gles 
												#pragma target 3.0
												uniform float4 _MainColor;
												uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
												uniform float _SpecularPower;
												uniform float _SpecularIntensity;
												uniform float _FresnelPower;
												uniform float4 _FresnelColor;
												uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
												uniform float _NormalPower;
												uniform float4 _SpecularColor;
												uniform fixed _useFresnel;
												uniform fixed _lightColorFresnel;
												uniform float4 _LightColor;
												uniform float4 _ShadowColor;
												uniform float _CellShadingBalance;
												uniform sampler2D _EmissionMask; uniform float4 _EmissionMask_ST;
												uniform float4 _GlowColor;
												uniform float _GlowIntensity;
												uniform float _GlowDirectionPower;
												uniform float _PannSpeedX;
												uniform float _PannSpeedY;
												uniform float _EmissionPannSpeedX;
												uniform float _EmissionPannSpeedY;
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
													LIGHTING_COORDS(5,6)
													UNITY_FOG_COORDS(7)
												};
												VertexOutput vert(VertexInput v) {
													VertexOutput o = (VertexOutput)0;
													o.uv0 = v.texcoord0;
													o.normalDir = UnityObjectToWorldNormal(v.normal);
													o.tangentDir = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz, 0.0)).xyz);
													o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
													o.posWorld = mul(unity_ObjectToWorld, v.vertex);
													float3 lightColor = _LightColor0.rgb;
													o.pos = UnityObjectToClipPos(v.vertex);
													UNITY_TRANSFER_FOG(o,o.pos);
													TRANSFER_VERTEX_TO_FRAGMENT(o)
													return o;
												}
												float4 frag(VertexOutput i) : COLOR {
													i.normalDir = normalize(i.normalDir);
													float3x3 tangentTransform = float3x3(i.tangentDir, i.bitangentDir, i.normalDir);
													float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
													float4 node_5044 = _Time;
													float2 UvPanner = (((i.uv0 + (node_5044.r*_PannSpeedY)*float2(0,1)) + (i.uv0 + (node_5044.r*_PannSpeedX)*float2(1,0))) / 2.0);
													float2 node_1624 = UvPanner;
													float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(node_1624, _NormalTex)));
													float3 normalData = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
													float3 normalLocal = normalData;
													float3 normalDirection = normalize(mul(normalLocal, tangentTransform)); // Perturbed normals
													float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
													float3 lightColor = _LightColor0.rgb;
													float3 halfDirection = normalize(viewDirection + lightDirection);
													////// Lighting:
																	UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
																	float node_123 = (max(0,dot(lightDirection,normalDirection))*attenuation);
																	float Shadow = node_123;
																	float3 Specular = ((pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*exp(_SpecularIntensity))*_SpecularColor.rgb*Shadow);
																	float3 node_2958 = saturate((Shadow + Specular));
																	float3 FresnelCustom = saturate((lerp(_FresnelColor.rgb, _LightColor0.rgb, _lightColorFresnel)*pow((1.0 - dot(normalDirection,viewDirection)),(_FresnelPower*-15.0 + 15.0))));
																	float node_9548_if_leA = step(lerp(node_2958, saturate((1.0 - (1.0 - node_2958)*(1.0 - (FresnelCustom*Shadow)))), _useFresnel),_CellShadingBalance);
																	float node_9548_if_leB = step(_CellShadingBalance,lerp(node_2958, saturate((1.0 - (1.0 - node_2958)*(1.0 - (FresnelCustom*Shadow)))), _useFresnel));
																	float2 node_6515 = UvPanner;
																	float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6515, _MainTex));
																	float3 Diffuse = (_MainColor.rgb*_MainTex_var.rgb);
																	float3 node_8224 = Diffuse;
																	float3 node_4301 = (node_8224*_ShadowColor.rgb);
																	float3 finalColor = lerp((node_9548_if_leA*node_4301) + (node_9548_if_leB*(node_8224*_LightColor.rgb)),node_4301,node_9548_if_leA*node_9548_if_leB);
																	fixed4 finalRGBA = fixed4(finalColor * 1,0);
																	UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
																	return finalRGBA;
																}
																ENDCG
															}
		}
			FallBack "Standard"
																	CustomEditor "ShaderForgeMaterialInspector"
}