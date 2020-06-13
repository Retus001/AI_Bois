// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|normal-6744-OUT,emission-7976-OUT,custl-5779-OUT;n:type:ShaderForge.SFN_LightColor,id:2673,x:31411,y:33222,varname:node_2673,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:3919,x:31411,y:33348,varname:node_3919,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2099,x:31635,y:33280,varname:node_2099,prsc:2|A-2673-RGB,B-3919-OUT;n:type:ShaderForge.SFN_LightVector,id:6848,x:31411,y:32731,varname:node_6848,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:2235,x:31411,y:32466,varname:node_2235,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2183,x:31411,y:32587,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:4056,x:31629,y:32652,varname:node_4056,prsc:2,dt:1|A-2183-OUT,B-6848-OUT;n:type:ShaderForge.SFN_Dot,id:4104,x:31629,y:32515,varname:node_4104,prsc:2,dt:1|A-2235-OUT,B-2183-OUT;n:type:ShaderForge.SFN_Power,id:3070,x:31851,y:32515,varname:node_3070,prsc:2|VAL-4104-OUT,EXP-1513-OUT;n:type:ShaderForge.SFN_Slider,id:9960,x:31694,y:32297,ptovrint:False,ptlb:SpecularSize,ptin:_SpecularSize,varname:node_9960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:11;n:type:ShaderForge.SFN_Tex2d,id:4317,x:31411,y:32881,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_4317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2bb3cafcd43264140b4c3b8e7dda9b92,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5499,x:32787,y:31837,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:node_5499,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a4a0b21d8befca6418c2fbddd6d15a02,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Vector3,id:1428,x:32787,y:31736,varname:node_1428,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:331,x:32981,y:31837,varname:node_331,prsc:2|A-1428-OUT,B-5499-RGB,T-928-OUT;n:type:ShaderForge.SFN_Slider,id:928,x:32630,y:32016,ptovrint:False,ptlb:NormalPower,ptin:_NormalPower,varname:node_928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Set,id:3658,x:33143,y:31837,varname:Normal,prsc:2|IN-331-OUT;n:type:ShaderForge.SFN_Color,id:1273,x:31411,y:33067,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_1273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7026,x:31620,y:32979,varname:node_7026,prsc:2|A-4317-RGB,B-1273-RGB;n:type:ShaderForge.SFN_Tex2d,id:2103,x:32787,y:32122,ptovrint:False,ptlb:EmissionTex,ptin:_EmissionTex,varname:node_2103,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a0701a55a28f5e74ea610d91857e4606,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:2512,x:32633,y:32465,ptovrint:False,ptlb:EmissionPower,ptin:_EmissionPower,varname:node_2512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5074,x:32976,y:32300,varname:node_5074,prsc:2|A-2103-RGB,B-6073-RGB,C-2512-OUT;n:type:ShaderForge.SFN_Color,id:6073,x:32790,y:32300,ptovrint:False,ptlb:EmissionColor,ptin:_EmissionColor,varname:node_6073,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:2799,x:33350,y:32300,varname:Emission,prsc:2|IN-1640-OUT;n:type:ShaderForge.SFN_Multiply,id:7257,x:31898,y:32832,varname:node_7257,prsc:2|A-4056-OUT,B-7026-OUT;n:type:ShaderForge.SFN_Add,id:3659,x:32241,y:32595,varname:node_3659,prsc:2|A-9539-OUT,B-7257-OUT;n:type:ShaderForge.SFN_Multiply,id:5779,x:32450,y:32660,varname:node_5779,prsc:2|A-3659-OUT,B-2099-OUT;n:type:ShaderForge.SFN_Multiply,id:9539,x:32042,y:32515,varname:node_9539,prsc:2|A-3790-OUT,B-3070-OUT;n:type:ShaderForge.SFN_Slider,id:3790,x:32042,y:32441,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_3790,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Get,id:6744,x:32414,y:32797,varname:node_6744,prsc:2|IN-3658-OUT;n:type:ShaderForge.SFN_Get,id:7976,x:32414,y:32848,varname:node_7976,prsc:2|IN-2799-OUT;n:type:ShaderForge.SFN_Add,id:1640,x:33148,y:32300,varname:node_1640,prsc:2|A-5074-OUT,B-739-OUT;n:type:ShaderForge.SFN_Set,id:5966,x:31802,y:32979,varname:Diffuse,prsc:2|IN-7026-OUT;n:type:ShaderForge.SFN_Get,id:2576,x:32955,y:32434,varname:node_2576,prsc:2|IN-5966-OUT;n:type:ShaderForge.SFN_Multiply,id:739,x:33148,y:32434,varname:node_739,prsc:2|A-2576-OUT,B-2958-RGB;n:type:ShaderForge.SFN_AmbientLight,id:2958,x:32976,y:32484,varname:node_2958,prsc:2;n:type:ShaderForge.SFN_Exp,id:1513,x:31851,y:32375,varname:node_1513,prsc:2,et:1|IN-9960-OUT;proporder:9960-4317-1273-3790-5499-928-2103-2512-6073;pass:END;sub:END;*/

Shader "Retus001/CustomLitReborn" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _NormalTex ("NormalTex", 2D) = "bump" {}
        _NormalPower ("NormalPower", Range(0, 1)) = 0.5
        _SpecularSize ("SpecularSize", Range(0, 11)) = 0
        _SpecularPower ("SpecularPower", Range(0, 10)) = 0
        _EmissionTex ("EmissionTex", 2D) = "white" {}
        _EmissionPower ("EmissionPower", Range(0, 10)) = 0
        _EmissionColor ("EmissionColor", Color) = (1,1,1,1)
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _SpecularSize;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float4 _MainColor;
            uniform sampler2D _EmissionTex; uniform float4 _EmissionTex_ST;
            uniform float _EmissionPower;
            uniform float4 _EmissionColor;
            uniform float _SpecularPower;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 Normal = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float4 _EmissionTex_var = tex2D(_EmissionTex,TRANSFORM_TEX(i.uv0, _EmissionTex));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_7026 = (_MainTex_var.rgb*_MainColor.rgb);
                float3 Diffuse = node_7026;
                float3 Emission = ((_EmissionTex_var.rgb*_EmissionColor.rgb*_EmissionPower)+(Diffuse*UNITY_LIGHTMODEL_AMBIENT.rgb));
                float3 emissive = Emission;
                float3 finalColor = emissive + (((_SpecularPower*pow(max(0,dot(halfDirection,normalDirection)),exp2(_SpecularSize)))+(max(0,dot(normalDirection,lightDirection))*node_7026))*(_LightColor0.rgb*attenuation));
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _SpecularSize;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            uniform float _NormalPower;
            uniform float4 _MainColor;
            uniform sampler2D _EmissionTex; uniform float4 _EmissionTex_ST;
            uniform float _EmissionPower;
            uniform float4 _EmissionColor;
            uniform float _SpecularPower;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 Normal = lerp(float3(0,0,1),_NormalTex_var.rgb,_NormalPower);
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_7026 = (_MainTex_var.rgb*_MainColor.rgb);
                float3 finalColor = (((_SpecularPower*pow(max(0,dot(halfDirection,normalDirection)),exp2(_SpecularSize)))+(max(0,dot(normalDirection,lightDirection))*node_7026))*(_LightColor0.rgb*attenuation));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
