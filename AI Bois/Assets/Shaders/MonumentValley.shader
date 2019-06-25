// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32998,y:33200,varname:node_3138,prsc:2|custl-390-OUT;n:type:ShaderForge.SFN_NormalVector,id:1010,x:31619,y:32703,prsc:2,pt:False;n:type:ShaderForge.SFN_Color,id:4904,x:31806,y:32860,ptovrint:False,ptlb:ColorA,ptin:_ColorA,varname:_ColorA,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.0956746,c2:0.3610983,c3:0.8113208,c4:1;n:type:ShaderForge.SFN_Color,id:1088,x:31806,y:33079,ptovrint:False,ptlb:ColorB,ptin:_ColorB,varname:_ColorB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2687344,c2:0.6989128,c3:0.9339623,c4:1;n:type:ShaderForge.SFN_Color,id:6373,x:31806,y:33310,ptovrint:False,ptlb:ColorC,ptin:_ColorC,varname:_ColorC,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1984247,c2:0.3254499,c3:0.4622642,c4:1;n:type:ShaderForge.SFN_ChannelBlend,id:2800,x:32141,y:32958,varname:node_2800,prsc:2,chbt:1|M-8907-OUT,R-4904-RGB,G-1088-RGB,B-6373-RGB,BTM-6416-OUT;n:type:ShaderForge.SFN_Vector1,id:6416,x:32141,y:33116,varname:node_6416,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:5247,x:32331,y:32958,varname:node_5247,prsc:2|A-2907-RGB,B-2800-OUT,T-5975-VFACE;n:type:ShaderForge.SFN_Color,id:2907,x:32141,y:32757,ptovrint:False,ptlb:InsideColor,ptin:_InsideColor,varname:_InsideColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_FaceSign,id:5975,x:32331,y:33116,varname:node_5975,prsc:2,fstp:0;n:type:ShaderForge.SFN_Set,id:8589,x:32533,y:32958,varname:DirectionalColor,prsc:2|IN-5247-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8943,x:31806,y:33552,varname:node_8943,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:1391,x:32093,y:33680,varname:node_1391,prsc:2|IN-8943-Y,IMIN-3742-OUT,IMAX-9322-OUT,OMIN-1973-OUT,OMAX-4552-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3742,x:31800,y:33708,ptovrint:False,ptlb:minLimit,ptin:_minLimit,varname:_minLimit,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-2;n:type:ShaderForge.SFN_Vector1,id:1973,x:31800,y:33946,varname:node_1973,prsc:2,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:9322,x:31800,y:33836,ptovrint:False,ptlb:maxLimit,ptin:_maxLimit,varname:_maxLimit,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Vector1,id:4552,x:31800,y:34059,varname:node_4552,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:8858,x:32275,y:33680,varname:node_8858,prsc:2|IN-1391-OUT;n:type:ShaderForge.SFN_Set,id:5748,x:32454,y:33680,varname:HeightMapping,prsc:2|IN-8858-OUT;n:type:ShaderForge.SFN_Color,id:5806,x:32551,y:33223,ptovrint:False,ptlb:FogColor,ptin:_FogColor,varname:_FogColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:390,x:32805,y:33440,varname:node_390,prsc:2|A-5806-RGB,B-699-OUT,T-4146-OUT;n:type:ShaderForge.SFN_Get,id:699,x:32551,y:33440,varname:node_699,prsc:2|IN-8589-OUT;n:type:ShaderForge.SFN_Get,id:4146,x:32551,y:33505,varname:node_4146,prsc:2|IN-5748-OUT;n:type:ShaderForge.SFN_Abs,id:8907,x:31806,y:32703,varname:node_8907,prsc:2|IN-1010-OUT;proporder:5806-4904-1088-6373-2907-3742-9322;pass:END;sub:END;*/

Shader "Retus/MonumentValley" {
    Properties {
        _FogColor ("FogColor", Color) = (0.5,0.5,0.5,1)
        _ColorA ("ColorA", Color) = (0.0956746,0.3610983,0.8113208,1)
        _ColorB ("ColorB", Color) = (0.2687344,0.6989128,0.9339623,1)
        _ColorC ("ColorC", Color) = (0.1984247,0.3254499,0.4622642,1)
        _InsideColor ("InsideColor", Color) = (0.5,0.5,0.5,1)
        _minLimit ("minLimit", Float ) = -2
        _maxLimit ("maxLimit", Float ) = 2
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "CustomTag"="SF"
        }
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _ColorA;
            uniform float4 _ColorB;
            uniform float4 _ColorC;
            uniform float4 _InsideColor;
            uniform float _minLimit;
            uniform float _maxLimit;
            uniform float4 _FogColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float3 node_8907 = abs(i.normalDir);
                float node_6416 = 0.0;
                float3 DirectionalColor = lerp(_InsideColor.rgb,(lerp( lerp( lerp( float3(node_6416,node_6416,node_6416), _ColorA.rgb, node_8907.r ), _ColorB.rgb, node_8907.g ), _ColorC.rgb, node_8907.b )),isFrontFace);
                float node_1973 = 0.0;
                float HeightMapping = saturate((node_1973 + ( (i.posWorld.g - _minLimit) * (1.0 - node_1973) ) / (_maxLimit - _minLimit)));
                float3 finalColor = lerp(_FogColor.rgb,DirectionalColor,HeightMapping);
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
