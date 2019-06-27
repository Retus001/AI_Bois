// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:True,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33229,y:32719,varname:node_1873,prsc:2|emission-1749-OUT;n:type:ShaderForge.SFN_Multiply,id:1086,x:32812,y:32818,cmnt:RGB,varname:node_1086,prsc:2|A-7251-OUT,B-5983-RGB,C-5376-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32551,y:32915,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32551,y:33079,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:33025,y:32818,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32812,y:32992,cmnt:A,varname:node_603,prsc:2|A-7251-OUT,B-5983-A,C-5376-A;n:type:ShaderForge.SFN_TexCoord,id:519,x:31437,y:32631,varname:node_519,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:5919,x:31215,y:32729,varname:node_5919,prsc:2;n:type:ShaderForge.SFN_Panner,id:1455,x:31659,y:32631,varname:node_1455,prsc:2,spu:1,spv:0|UVIN-519-UVOUT,DIST-4409-OUT;n:type:ShaderForge.SFN_Slider,id:8300,x:31058,y:32876,ptovrint:False,ptlb:pannSpeedA,ptin:_pannSpeedA,varname:node_8300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:4409,x:31437,y:32776,varname:node_4409,prsc:2|A-5919-TSL,B-8300-OUT;n:type:ShaderForge.SFN_Tex2d,id:2576,x:31898,y:32606,ptovrint:False,ptlb:SmokeA,ptin:_SmokeA,varname:node_2576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c933efa33bf6bfc4899004d9e04d428c,ntxv:0,isnm:False|UVIN-1455-UVOUT;n:type:ShaderForge.SFN_Slider,id:2786,x:31058,y:32970,ptovrint:False,ptlb:pannSpeedB,ptin:_pannSpeedB,varname:node_2786,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:1429,x:31437,y:32908,varname:node_1429,prsc:2|A-5919-TSL,B-2786-OUT;n:type:ShaderForge.SFN_Panner,id:6558,x:31659,y:32797,varname:node_6558,prsc:2,spu:1,spv:0|UVIN-519-UVOUT,DIST-1429-OUT;n:type:ShaderForge.SFN_Slider,id:9947,x:31058,y:33070,ptovrint:False,ptlb:pannSpeedC,ptin:_pannSpeedC,varname:node_9947,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:5360,x:31437,y:33047,varname:node_5360,prsc:2|A-5919-TSL,B-9947-OUT;n:type:ShaderForge.SFN_Panner,id:7771,x:31659,y:32957,varname:node_7771,prsc:2,spu:1,spv:0|UVIN-519-UVOUT,DIST-5360-OUT;n:type:ShaderForge.SFN_Tex2d,id:5357,x:31898,y:32790,ptovrint:False,ptlb:SmokeB,ptin:_SmokeB,varname:_Smoke_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c933efa33bf6bfc4899004d9e04d428c,ntxv:0,isnm:False|UVIN-6558-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5696,x:31898,y:32979,ptovrint:False,ptlb:SmokeC,ptin:_SmokeC,varname:node_5696,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c933efa33bf6bfc4899004d9e04d428c,ntxv:0,isnm:False|UVIN-7771-UVOUT;n:type:ShaderForge.SFN_Color,id:1785,x:32339,y:32601,ptovrint:False,ptlb:BGColor,ptin:_BGColor,varname:node_1785,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:6162,x:32133,y:32640,varname:node_6162,prsc:2|A-8977-OUT,B-2576-RGB;n:type:ShaderForge.SFN_Vector1,id:5661,x:31722,y:32440,varname:node_5661,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:8977,x:31898,y:32440,varname:node_8977,prsc:2|A-5661-OUT,B-8787-OUT;n:type:ShaderForge.SFN_Vector1,id:8787,x:31722,y:32494,varname:node_8787,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:4312,x:32133,y:32771,varname:node_4312,prsc:2|A-8977-OUT,B-5357-RGB;n:type:ShaderForge.SFN_Multiply,id:9363,x:32133,y:32907,varname:node_9363,prsc:2|A-8977-OUT,B-5696-RGB;n:type:ShaderForge.SFN_Add,id:7310,x:32339,y:32750,varname:node_7310,prsc:2|A-6162-OUT,B-4312-OUT,C-9363-OUT;n:type:ShaderForge.SFN_If,id:7251,x:32551,y:32750,varname:node_7251,prsc:2|A-7310-OUT,B-7927-OUT,GT-7310-OUT,EQ-1785-RGB,LT-1785-RGB;n:type:ShaderForge.SFN_Vector1,id:7927,x:32339,y:32879,varname:node_7927,prsc:2,v1:0.01;proporder:5983-8300-2576-2786-9947-5357-5696-1785;pass:END;sub:END;*/

Shader "Retus001/PanningBG" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _pannSpeedA ("pannSpeedA", Range(-5, 5)) = 0
        _SmokeA ("SmokeA", 2D) = "white" {}
        _pannSpeedB ("pannSpeedB", Range(-5, 5)) = 0
        _pannSpeedC ("pannSpeedC", Range(-5, 5)) = 0
        _SmokeB ("SmokeB", 2D) = "white" {}
        _SmokeC ("SmokeC", 2D) = "white" {}
        _BGColor ("BGColor", Color) = (0,0,0,1)
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
        _Stencil ("Stencil ID", Float) = 0
        _StencilReadMask ("Stencil Read Mask", Float) = 255
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilComp ("Stencil Comparison", Float) = 8
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilOpFail ("Stencil Fail Operation", Float) = 0
        _StencilOpZFail ("Stencil Z-Fail Operation", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
            "CustomTag"="SF"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            Stencil {
                Ref [_Stencil]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilOp]
                Fail [_StencilOpFail]
                ZFail [_StencilOpZFail]
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #if !UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _pannSpeedA;
            uniform sampler2D _SmokeA; uniform float4 _SmokeA_ST;
            uniform float _pannSpeedB;
            uniform float _pannSpeedC;
            uniform sampler2D _SmokeB; uniform float4 _SmokeB_ST;
            uniform sampler2D _SmokeC; uniform float4 _SmokeC_ST;
            uniform float4 _BGColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float node_8977 = (1.0/3.0);
                float4 node_5919 = _Time;
                float2 node_1455 = (i.uv0+(node_5919.r*_pannSpeedA)*float2(1,0));
                float4 _SmokeA_var = tex2D(_SmokeA,TRANSFORM_TEX(node_1455, _SmokeA));
                float2 node_6558 = (i.uv0+(node_5919.r*_pannSpeedB)*float2(1,0));
                float4 _SmokeB_var = tex2D(_SmokeB,TRANSFORM_TEX(node_6558, _SmokeB));
                float2 node_7771 = (i.uv0+(node_5919.r*_pannSpeedC)*float2(1,0));
                float4 _SmokeC_var = tex2D(_SmokeC,TRANSFORM_TEX(node_7771, _SmokeC));
                float3 node_7310 = ((node_8977*_SmokeA_var.rgb)+(node_8977*_SmokeB_var.rgb)+(node_8977*_SmokeC_var.rgb));
                float node_7251_if_leA = step(node_7310,0.01);
                float node_7251_if_leB = step(0.01,node_7310);
                float3 node_7251 = lerp((node_7251_if_leA*_BGColor.rgb)+(node_7251_if_leB*node_7310),_BGColor.rgb,node_7251_if_leA*node_7251_if_leB);
                float3 emissive = ((node_7251*_Color.rgb*i.vertexColor.rgb)*(node_7251*_Color.a*i.vertexColor.a));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
