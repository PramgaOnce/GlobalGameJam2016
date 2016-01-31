// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-9779-OUT,emission-3900-OUT,clip-9959-OUT;n:type:ShaderForge.SFN_Sin,id:3958,x:30139,y:33429,varname:node_3958,prsc:2|IN-2735-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6730,x:29786,y:33384,ptovrint:False,ptlb:PulseSpeed,ptin:_PulseSpeed,varname:node_8498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:8601,x:29786,y:33450,varname:node_8601,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:2548,x:29500,y:32656,varname:node_2548,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3958-OUT;n:type:ShaderForge.SFN_Lerp,id:9433,x:29674,y:32561,varname:node_9433,prsc:2|A-2428-OUT,B-4277-OUT,T-2548-OUT;n:type:ShaderForge.SFN_Vector3,id:2428,x:29460,y:32381,varname:node_2428,prsc:2,v1:0.8,v2:0,v3:0;n:type:ShaderForge.SFN_Multiply,id:2562,x:30062,y:32586,cmnt:ColorPulse,varname:node_2562,prsc:2|A-3956-OUT,B-2218-OUT;n:type:ShaderForge.SFN_Sin,id:3956,x:29906,y:32561,varname:node_3956,prsc:2|IN-9433-OUT;n:type:ShaderForge.SFN_Vector1,id:2218,x:29906,y:32689,varname:node_2218,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:3900,x:30645,y:32650,varname:node_3900,prsc:2|A-2562-OUT,B-8576-OUT;n:type:ShaderForge.SFN_Slider,id:8576,x:30149,y:32944,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_4720,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4441669,max:1;n:type:ShaderForge.SFN_Tex2d,id:3381,x:31275,y:32930,ptovrint:False,ptlb:BorderTexture,ptin:_BorderTexture,varname:node_3381,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d9958350d1414ba4e9dc8e7b4f0f004c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Clamp01,id:9959,x:31493,y:32967,varname:node_9959,prsc:2|IN-3381-G;n:type:ShaderForge.SFN_OneMinus,id:7523,x:31905,y:32980,varname:node_7523,prsc:2|IN-9959-OUT;n:type:ShaderForge.SFN_Multiply,id:2748,x:32282,y:32825,varname:node_2748,prsc:2|A-7523-OUT,B-7820-OUT;n:type:ShaderForge.SFN_Multiply,id:7820,x:31952,y:33144,varname:node_7820,prsc:2|A-9959-OUT,B-5341-OUT;n:type:ShaderForge.SFN_Panner,id:9358,x:31344,y:31802,varname:node_9358,prsc:2,spu:0.01,spv:0|UVIN-1447-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1447,x:31094,y:31755,varname:node_1447,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:9885,x:31590,y:31972,ptovrint:False,ptlb:GradientPanner,ptin:_GradientPanner,varname:_BorderTexture_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d9958350d1414ba4e9dc8e7b4f0f004c,ntxv:0,isnm:False|UVIN-4068-UVOUT;n:type:ShaderForge.SFN_Clamp01,id:8559,x:31800,y:32002,varname:node_8559,prsc:2|IN-9885-R;n:type:ShaderForge.SFN_Vector1,id:732,x:31787,y:31931,varname:node_732,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Add,id:9779,x:32425,y:32410,varname:node_9779,prsc:2|A-6053-OUT,B-3993-OUT;n:type:ShaderForge.SFN_Vector1,id:5341,x:31742,y:33268,varname:node_5341,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:3993,x:30764,y:32498,varname:node_3993,prsc:2|A-2562-OUT,B-3900-OUT;n:type:ShaderForge.SFN_Vector3,id:4277,x:29460,y:32561,varname:node_4277,prsc:2,v1:0.8308824,v2:0.1960978,v3:0.09775086;n:type:ShaderForge.SFN_UVTile,id:4068,x:31153,y:31968,varname:node_4068,prsc:2|UVIN-9358-UVOUT,WDT-5821-OUT,HGT-1124-OUT,TILE-8368-OUT;n:type:ShaderForge.SFN_Vector1,id:5821,x:30803,y:31998,varname:node_5821,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:1124,x:30805,y:32040,varname:node_1124,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8368,x:30795,y:32092,varname:node_8368,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:4809,x:32003,y:31948,varname:node_4809,prsc:2|A-732-OUT,B-8559-OUT;n:type:ShaderForge.SFN_Multiply,id:6053,x:32221,y:31936,varname:node_6053,prsc:2|A-4809-OUT,B-4809-OUT;n:type:ShaderForge.SFN_Divide,id:2735,x:29957,y:33411,varname:node_2735,prsc:2|A-6730-OUT,B-8601-T;proporder:6730-8576-3381-9885;pass:END;sub:END;*/

Shader "Shader Forge/Borders" {
    Properties {
        _PulseSpeed ("PulseSpeed", Float ) = 1
        _ColorIntensity ("ColorIntensity", Range(0, 1)) = 0.4441669
        _BorderTexture ("BorderTexture", 2D) = "white" {}
        _GradientPanner ("GradientPanner", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _PulseSpeed;
            uniform float _ColorIntensity;
            uniform sampler2D _BorderTexture; uniform float4 _BorderTexture_ST;
            uniform sampler2D _GradientPanner; uniform float4 _GradientPanner_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _BorderTexture_var = tex2D(_BorderTexture,TRANSFORM_TEX(i.uv0, _BorderTexture));
                float node_9959 = saturate(_BorderTexture_var.g);
                clip(node_9959 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_5821 = 0.5;
                float node_8368 = 1.0;
                float2 node_4068_tc_rcp = float2(1.0,1.0)/float2( node_5821, 1.0 );
                float node_4068_ty = floor(node_8368 * node_4068_tc_rcp.x);
                float node_4068_tx = node_8368 - node_5821 * node_4068_ty;
                float4 node_2878 = _Time + _TimeEditor;
                float2 node_4068 = ((i.uv0+node_2878.g*float2(0.01,0)) + float2(node_4068_tx, node_4068_ty)) * node_4068_tc_rcp;
                float4 _GradientPanner_var = tex2D(_GradientPanner,TRANSFORM_TEX(node_4068, _GradientPanner));
                float node_4809 = (0.2+saturate(_GradientPanner_var.r));
                float4 node_8601 = _Time + _TimeEditor;
                float3 node_2562 = (sin(lerp(float3(0.8,0,0),float3(0.8308824,0.1960978,0.09775086),(sin((_PulseSpeed/node_8601.g))*0.5+0.5)))*1.0); // ColorPulse
                float3 node_3900 = (node_2562*_ColorIntensity);
                float3 diffuseColor = ((node_4809*node_4809)+(node_2562*node_3900));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_3900;
/// Final Color:
                float3 finalColor = diffuse + emissive;
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
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _PulseSpeed;
            uniform float _ColorIntensity;
            uniform sampler2D _BorderTexture; uniform float4 _BorderTexture_ST;
            uniform sampler2D _GradientPanner; uniform float4 _GradientPanner_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 _BorderTexture_var = tex2D(_BorderTexture,TRANSFORM_TEX(i.uv0, _BorderTexture));
                float node_9959 = saturate(_BorderTexture_var.g);
                clip(node_9959 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_5821 = 0.5;
                float node_8368 = 1.0;
                float2 node_4068_tc_rcp = float2(1.0,1.0)/float2( node_5821, 1.0 );
                float node_4068_ty = floor(node_8368 * node_4068_tc_rcp.x);
                float node_4068_tx = node_8368 - node_5821 * node_4068_ty;
                float4 node_467 = _Time + _TimeEditor;
                float2 node_4068 = ((i.uv0+node_467.g*float2(0.01,0)) + float2(node_4068_tx, node_4068_ty)) * node_4068_tc_rcp;
                float4 _GradientPanner_var = tex2D(_GradientPanner,TRANSFORM_TEX(node_4068, _GradientPanner));
                float node_4809 = (0.2+saturate(_GradientPanner_var.r));
                float4 node_8601 = _Time + _TimeEditor;
                float3 node_2562 = (sin(lerp(float3(0.8,0,0),float3(0.8308824,0.1960978,0.09775086),(sin((_PulseSpeed/node_8601.g))*0.5+0.5)))*1.0); // ColorPulse
                float3 node_3900 = (node_2562*_ColorIntensity);
                float3 diffuseColor = ((node_4809*node_4809)+(node_2562*node_3900));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _BorderTexture; uniform float4 _BorderTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _BorderTexture_var = tex2D(_BorderTexture,TRANSFORM_TEX(i.uv0, _BorderTexture));
                float node_9959 = saturate(_BorderTexture_var.g);
                clip(node_9959 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
