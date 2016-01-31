// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-1304-RGB,emission-3566-OUT,alpha-2-G,clip-2-G,olwid-8949-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32443,y:32712,ptovrint:False,ptlb:TrailColor,ptin:_TrailColor,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9632353,c2:0.6756324,c3:0.0566609,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2,x:31863,y:32450,ptovrint:False,ptlb:Ray,ptin:_Ray,varname:node_9132,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d700c63c555fe274ba06f5d0ab9cf942,ntxv:0,isnm:False|UVIN-376-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:8861,x:31863,y:32267,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_9372,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:122c88158539dd14894def088a246365,ntxv:0,isnm:False|UVIN-376-UVOUT;n:type:ShaderForge.SFN_Panner,id:376,x:31694,y:32448,varname:node_376,prsc:2,spu:0.01,spv:0|UVIN-5467-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5467,x:31499,y:32333,varname:node_5467,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:2906,x:31230,y:33242,varname:node_2906,prsc:2|IN-4093-OUT;n:type:ShaderForge.SFN_Multiply,id:4093,x:31064,y:33206,varname:node_4093,prsc:2|A-8722-OUT,B-1704-T;n:type:ShaderForge.SFN_ValueProperty,id:8722,x:30925,y:33124,ptovrint:False,ptlb:PulseSpeed,ptin:_PulseSpeed,varname:node_8498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Time,id:1704,x:30869,y:33236,varname:node_1704,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:9257,x:31436,y:33269,varname:node_9257,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2906-OUT;n:type:ShaderForge.SFN_Lerp,id:5947,x:31655,y:33197,varname:node_5947,prsc:2|A-213-OUT,B-2461-OUT,T-9257-OUT;n:type:ShaderForge.SFN_Vector3,id:2461,x:31358,y:33144,varname:node_2461,prsc:2,v1:0,v2:0.9926471,v3:0.3354464;n:type:ShaderForge.SFN_Vector3,id:213,x:31338,y:33032,varname:node_213,prsc:2,v1:0.08931659,v2:0.8676471,v3:0.8676471;n:type:ShaderForge.SFN_Slider,id:427,x:31338,y:32955,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_7880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9265382,max:1;n:type:ShaderForge.SFN_Multiply,id:1953,x:31739,y:32976,varname:node_1953,prsc:2|A-427-OUT,B-5947-OUT;n:type:ShaderForge.SFN_Multiply,id:1301,x:32127,y:32590,varname:node_1301,prsc:2|A-2-G,B-2829-RGB;n:type:ShaderForge.SFN_Color,id:2829,x:31837,y:32670,ptovrint:False,ptlb:RayColor,ptin:_RayColor,varname:node_5852,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.25,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3999,x:31995,y:33243,cmnt:OutlineColor,varname:node_3999,prsc:2|A-7028-OUT,B-7002-OUT;n:type:ShaderForge.SFN_Sin,id:7028,x:31860,y:33131,varname:node_7028,prsc:2|IN-1953-OUT;n:type:ShaderForge.SFN_Vector1,id:7002,x:31797,y:33300,varname:node_7002,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3566,x:32001,y:32912,cmnt:Emmision,varname:node_3566,prsc:2|A-1301-OUT,B-3999-OUT;n:type:ShaderForge.SFN_Vector1,id:8949,x:32437,y:33082,varname:node_8949,prsc:2,v1:0.001;proporder:1304-2-8722-427-2829;pass:END;sub:END;*/

Shader "Shader Forge/LogoTrail" {
    Properties {
        _TrailColor ("TrailColor", Color) = (0.9632353,0.6756324,0.0566609,1)
        _Ray ("Ray", 2D) = "white" {}
        _PulseSpeed ("PulseSpeed", Float ) = 2
        _ColorIntensity ("ColorIntensity", Range(0, 1)) = 0.9265382
        _RayColor ("RayColor", Color) = (0.25,0,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Ray; uniform float4 _Ray_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, float4(v.vertex.xyz + v.normal*0.001,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_1813 = _Time + _TimeEditor;
                float2 node_376 = (i.uv0+node_1813.g*float2(0.01,0));
                float4 _Ray_var = tex2D(_Ray,TRANSFORM_TEX(node_376, _Ray));
                clip(_Ray_var.g - 0.5);
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _TrailColor;
            uniform sampler2D _Ray; uniform float4 _Ray_ST;
            uniform float _PulseSpeed;
            uniform float _ColorIntensity;
            uniform float4 _RayColor;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_8951 = _Time + _TimeEditor;
                float2 node_376 = (i.uv0+node_8951.g*float2(0.01,0));
                float4 _Ray_var = tex2D(_Ray,TRANSFORM_TEX(node_376, _Ray));
                clip(_Ray_var.g - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _TrailColor.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_1704 = _Time + _TimeEditor;
                float3 emissive = ((_Ray_var.g*_RayColor.rgb)*(sin((_ColorIntensity*lerp(float3(0.08931659,0.8676471,0.8676471),float3(0,0.9926471,0.3354464),(sin((_PulseSpeed*node_1704.g))*0.5+0.5))))*2.0));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Ray_var.g);
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float4 _TrailColor;
            uniform sampler2D _Ray; uniform float4 _Ray_ST;
            uniform float _PulseSpeed;
            uniform float _ColorIntensity;
            uniform float4 _RayColor;
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
                float4 node_4519 = _Time + _TimeEditor;
                float2 node_376 = (i.uv0+node_4519.g*float2(0.01,0));
                float4 _Ray_var = tex2D(_Ray,TRANSFORM_TEX(node_376, _Ray));
                clip(_Ray_var.g - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _TrailColor.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * _Ray_var.g,0);
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
            uniform float4 _TimeEditor;
            uniform sampler2D _Ray; uniform float4 _Ray_ST;
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
                float4 node_9115 = _Time + _TimeEditor;
                float2 node_376 = (i.uv0+node_9115.g*float2(0.01,0));
                float4 _Ray_var = tex2D(_Ray,TRANSFORM_TEX(node_376, _Ray));
                clip(_Ray_var.g - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
