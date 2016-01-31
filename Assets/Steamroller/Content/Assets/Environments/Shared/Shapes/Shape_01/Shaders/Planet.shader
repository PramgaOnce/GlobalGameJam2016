// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-5960-OUT,emission-7683-OUT;n:type:ShaderForge.SFN_Sin,id:9871,x:31502,y:32760,varname:node_9871,prsc:2|IN-3176-OUT;n:type:ShaderForge.SFN_Multiply,id:3176,x:31336,y:32724,varname:node_3176,prsc:2|A-3685-OUT,B-5651-T;n:type:ShaderForge.SFN_ValueProperty,id:3685,x:31197,y:32642,ptovrint:False,ptlb:PulseSpeed,ptin:_PulseSpeed,varname:node_8498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Time,id:5651,x:31141,y:32754,varname:node_5651,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:96,x:31708,y:32787,varname:node_96,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9871-OUT;n:type:ShaderForge.SFN_Lerp,id:8017,x:31927,y:32715,varname:node_8017,prsc:2|A-1126-RGB,B-1347-RGB,T-96-OUT;n:type:ShaderForge.SFN_Slider,id:1187,x:31720,y:32423,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_7880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4564527,max:1;n:type:ShaderForge.SFN_Multiply,id:8093,x:32011,y:32494,varname:node_8093,prsc:2|A-1187-OUT,B-8017-OUT;n:type:ShaderForge.SFN_Multiply,id:7683,x:32283,y:32724,varname:node_7683,prsc:2|A-2747-OUT,B-4050-OUT;n:type:ShaderForge.SFN_Sin,id:2747,x:32132,y:32649,varname:node_2747,prsc:2|IN-8093-OUT;n:type:ShaderForge.SFN_Vector1,id:4050,x:32069,y:32818,varname:node_4050,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:5207,x:32193,y:33208,varname:node_5207,prsc:2,v1:5;n:type:ShaderForge.SFN_Color,id:1126,x:31374,y:32398,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_1126,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0.6000004,c4:1;n:type:ShaderForge.SFN_Color,id:1347,x:31459,y:32574,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_1347,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.78892,c2:0.2509191,c3:0.875,c4:1;n:type:ShaderForge.SFN_Sin,id:4780,x:32473,y:32836,varname:node_4780,prsc:2|IN-7683-OUT;n:type:ShaderForge.SFN_TexCoord,id:9641,x:31882,y:32995,varname:node_9641,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector2,id:2319,x:31882,y:33148,varname:node_2319,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Distance,id:6126,x:32137,y:33066,varname:node_6126,prsc:2|A-9641-UVOUT,B-2319-OUT;n:type:ShaderForge.SFN_Posterize,id:2159,x:32337,y:33066,varname:node_2159,prsc:2|IN-6126-OUT,STPS-5207-OUT;n:type:ShaderForge.SFN_Multiply,id:5960,x:32528,y:33016,varname:node_5960,prsc:2|A-4780-OUT,B-2159-OUT;proporder:3685-1187-1126-1347;pass:END;sub:END;*/

Shader "Shader Forge/Planet" {
    Properties {
        _PulseSpeed ("PulseSpeed", Float ) = 5
        _ColorIntensity ("ColorIntensity", Range(0, 1)) = 0.4564527
        _Color1 ("Color1", Color) = (1,0,0.6000004,1)
        _Color2 ("Color2", Color) = (0.78892,0.2509191,0.875,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float4 _Color1;
            uniform float4 _Color2;
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
                float4 node_5651 = _Time + _TimeEditor;
                float3 node_7683 = (sin((_ColorIntensity*lerp(_Color1.rgb,_Color2.rgb,(sin((_PulseSpeed*node_5651.g))*0.5+0.5))))*2.0);
                float node_5207 = 5.0;
                float3 diffuseColor = (sin(node_7683)*floor(distance(i.uv0,float2(0.5,0.5)) * node_5207) / (node_5207 - 1));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_7683;
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
            uniform float4 _Color1;
            uniform float4 _Color2;
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
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_5651 = _Time + _TimeEditor;
                float3 node_7683 = (sin((_ColorIntensity*lerp(_Color1.rgb,_Color2.rgb,(sin((_PulseSpeed*node_5651.g))*0.5+0.5))))*2.0);
                float node_5207 = 5.0;
                float3 diffuseColor = (sin(node_7683)*floor(distance(i.uv0,float2(0.5,0.5)) * node_5207) / (node_5207 - 1));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
