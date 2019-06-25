// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,cmtg:SF,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,acwp:False,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|normal-5831-OUT,emission-2460-OUT,custl-5085-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:32734,y:33086,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:32734,y:32952,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31858,y:32654,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31858,y:32782,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:9471,x:31858,y:32933,varname:node_9471,prsc:2;n:type:ShaderForge.SFN_Dot,id:7782,x:32070,y:32697,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Dot,id:3269,x:32070,y:32930,cmnt:Blinn-Phong,varname:node_3269,prsc:2,dt:1|A-9684-OUT,B-9471-OUT;n:type:ShaderForge.SFN_Multiply,id:2746,x:32465,y:32866,cmnt:Specular Contribution,varname:node_2746,prsc:2|A-7782-OUT,B-5267-OUT,C-4865-RGB;n:type:ShaderForge.SFN_Tex2d,id:851,x:31128,y:31775,varname:_Diffuse,prsc:2,tex:37b96238838db4d4d9b93d9e468a63c7,ntxv:0,isnm:False|UVIN-1336-OUT,TEX-5007-TEX;n:type:ShaderForge.SFN_Multiply,id:1941,x:32465,y:32693,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-7782-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:32070,y:32534,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5333334,c2:0.5333334,c3:0.5333334,c4:1;n:type:ShaderForge.SFN_Exp,id:1700,x:32070,y:33073,varname:node_1700,prsc:2,et:1|IN-9978-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:31529,y:33056,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Power,id:5267,x:32268,y:32940,varname:node_5267,prsc:2|VAL-3269-OUT,EXP-1700-OUT;n:type:ShaderForge.SFN_Add,id:2159,x:32734,y:32812,cmnt:Combine,varname:node_2159,prsc:2|A-1941-OUT,B-2746-OUT;n:type:ShaderForge.SFN_Multiply,id:5085,x:32979,y:32952,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-2159-OUT,B-3406-RGB,C-8068-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:9978,x:31858,y:33056,varname:node_9978,prsc:2,a:1,b:11|IN-5328-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:32268,y:33095,ptovrint:False,ptlb:Spec Color,ptin:_SpecColor,varname:_SpecColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_AmbientLight,id:7528,x:32734,y:32646,varname:node_7528,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2460,x:32734,y:32496,cmnt:Ambient Light,varname:node_2460,prsc:2|A-544-OUT,B-7528-RGB;n:type:ShaderForge.SFN_Multiply,id:544,x:32268,y:32448,cmnt:Diffuse Color,varname:node_544,prsc:2|A-1555-OUT,B-5927-RGB;n:type:ShaderForge.SFN_Get,id:1555,x:32049,y:32448,varname:node_1555,prsc:2|IN-7372-OUT;n:type:ShaderForge.SFN_Set,id:7372,x:31744,y:31598,varname:diffuseData,prsc:2|IN-9805-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5007,x:30776,y:32134,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:37b96238838db4d4d9b93d9e468a63c7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4915,x:31128,y:31956,varname:_node_6253,prsc:2,tex:37b96238838db4d4d9b93d9e468a63c7,ntxv:0,isnm:False|UVIN-7902-OUT,TEX-5007-TEX;n:type:ShaderForge.SFN_Tex2d,id:8405,x:31128,y:32133,varname:_node_6253_copy,prsc:2,tex:37b96238838db4d4d9b93d9e468a63c7,ntxv:0,isnm:False|UVIN-6039-OUT,TEX-5007-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:3883,x:30052,y:31754,varname:node_3883,prsc:2;n:type:ShaderForge.SFN_Append,id:1336,x:30776,y:31583,varname:node_1336,prsc:2|A-3915-R,B-3915-G;n:type:ShaderForge.SFN_Append,id:7902,x:30776,y:31760,varname:node_7902,prsc:2|A-3915-R,B-3915-B;n:type:ShaderForge.SFN_Append,id:6039,x:30776,y:31934,varname:node_6039,prsc:2|A-3915-G,B-3915-B;n:type:ShaderForge.SFN_NormalVector,id:9451,x:31128,y:31596,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:2112,x:31302,y:31596,varname:node_2112,prsc:2|IN-9451-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:9805,x:31574,y:31598,varname:node_9805,prsc:2,chbt:1|M-2112-OUT,R-8405-RGB,G-4915-RGB,B-851-RGB,BTM-3961-OUT;n:type:ShaderForge.SFN_Multiply,id:5493,x:30310,y:31623,varname:node_5493,prsc:2|A-8565-OUT,B-3883-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:3915,x:30487,y:31623,varname:node_3915,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-5493-OUT;n:type:ShaderForge.SFN_Slider,id:8565,x:29973,y:31625,ptovrint:False,ptlb:TexScale,ptin:_TexScale,varname:_TexScale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_Tex2d,id:822,x:31128,y:32340,varname:_node_822,prsc:2,tex:1dc1f1a6b0b511e48ac112648730a259,ntxv:0,isnm:False|TEX-6121-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6121,x:30776,y:32372,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:_NormalTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1dc1f1a6b0b511e48ac112648730a259,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6053,x:31128,y:32516,varname:_node_192,prsc:2,tex:1dc1f1a6b0b511e48ac112648730a259,ntxv:0,isnm:False|TEX-6121-TEX;n:type:ShaderForge.SFN_Tex2d,id:1655,x:31128,y:32690,varname:_node_192_copy,prsc:2,tex:1dc1f1a6b0b511e48ac112648730a259,ntxv:0,isnm:False|TEX-6121-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:9264,x:31574,y:31906,varname:node_9264,prsc:2,chbt:1|M-2112-OUT,R-1655-RGB,G-6053-RGB,B-822-RGB,BTM-3961-OUT;n:type:ShaderForge.SFN_Vector1,id:3961,x:31574,y:31782,varname:node_3961,prsc:2,v1:0;n:type:ShaderForge.SFN_Set,id:309,x:31736,y:31906,varname:normalData,prsc:2|IN-9264-OUT;n:type:ShaderForge.SFN_Get,id:5831,x:32958,y:32790,varname:node_5831,prsc:2|IN-309-OUT;proporder:5927-5328-4865-5007-8565-6121;pass:END;sub:END;*/

Shader "Retus001/triPlanar" {
    Properties {
        _Color ("Color", Color) = (0.5333334,0.5333334,0.5333334,1)
        _Gloss ("Gloss", Range(0, 1)) = 1
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _TexScale ("TexScale", Range(1, 10)) = 1
        _NormalTex ("NormalTex", 2D) = "bump" {}
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Gloss;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _TexScale;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
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
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_2112 = abs(i.normalDir);
                float node_3961 = 0.0;
                float3 _node_192_copy = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 _node_192 = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 _node_822 = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 normalData = (lerp( lerp( lerp( float3(node_3961,node_3961,node_3961), _node_192_copy.rgb, node_2112.r ), _node_192.rgb, node_2112.g ), _node_822.rgb, node_2112.b ));
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float3 node_3915 = (_TexScale*i.posWorld.rgb).rgb;
                float2 node_6039 = float2(node_3915.g,node_3915.b);
                float4 _node_6253_copy = tex2D(_MainTex,TRANSFORM_TEX(node_6039, _MainTex));
                float2 node_7902 = float2(node_3915.r,node_3915.b);
                float4 _node_6253 = tex2D(_MainTex,TRANSFORM_TEX(node_7902, _MainTex));
                float2 node_1336 = float2(node_3915.r,node_3915.g);
                float4 _Diffuse = tex2D(_MainTex,TRANSFORM_TEX(node_1336, _MainTex));
                float3 diffuseData = (lerp( lerp( lerp( float3(node_3961,node_3961,node_3961), _node_6253_copy.rgb, node_2112.r ), _node_6253.rgb, node_2112.g ), _Diffuse.rgb, node_2112.b ));
                float3 node_544 = (diffuseData*_Color.rgb); // Diffuse Color
                float3 emissive = (node_544*UNITY_LIGHTMODEL_AMBIENT.rgb);
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = emissive + (((node_544*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Gloss;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _TexScale;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
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
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_2112 = abs(i.normalDir);
                float node_3961 = 0.0;
                float3 _node_192_copy = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 _node_192 = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 _node_822 = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(i.uv0, _NormalTex)));
                float3 normalData = (lerp( lerp( lerp( float3(node_3961,node_3961,node_3961), _node_192_copy.rgb, node_2112.r ), _node_192.rgb, node_2112.g ), _node_822.rgb, node_2112.b ));
                float3 normalLocal = normalData;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float3 node_3915 = (_TexScale*i.posWorld.rgb).rgb;
                float2 node_6039 = float2(node_3915.g,node_3915.b);
                float4 _node_6253_copy = tex2D(_MainTex,TRANSFORM_TEX(node_6039, _MainTex));
                float2 node_7902 = float2(node_3915.r,node_3915.b);
                float4 _node_6253 = tex2D(_MainTex,TRANSFORM_TEX(node_7902, _MainTex));
                float2 node_1336 = float2(node_3915.r,node_3915.g);
                float4 _Diffuse = tex2D(_MainTex,TRANSFORM_TEX(node_1336, _MainTex));
                float3 diffuseData = (lerp( lerp( lerp( float3(node_3961,node_3961,node_3961), _node_6253_copy.rgb, node_2112.r ), _node_6253.rgb, node_2112.g ), _Diffuse.rgb, node_2112.b ));
                float3 node_544 = (diffuseData*_Color.rgb); // Diffuse Color
                float node_7782 = max(0,dot(lightDirection,normalDirection)); // Lambert
                float3 finalColor = (((node_544*node_7782)+(node_7782*pow(max(0,dot(normalDirection,halfDirection)),exp2(lerp(1,11,_Gloss)))*_SpecColor.rgb))*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
