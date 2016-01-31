// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-2574-RGB;n:type:ShaderForge.SFN_TexCoord,id:1553,x:31936,y:32721,varname:node_1553,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:4176,x:32124,y:32741,varname:node_4176,prsc:2,spu:0.1,spv:0|UVIN-1553-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2574,x:32312,y:32734,ptovrint:False,ptlb:DifuseTexture,ptin:_DifuseTexture,varname:node_2574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0a4e23c7a257b594594f1c20bf2dfde8,ntxv:0,isnm:False|UVIN-4176-UVOUT;n:type:ShaderForge.SFN_Slider,id:5561,x:32243,y:32588,ptovrint:False,ptlb:RotateAngle,ptin:_RotateAngle,varname:node_5561,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector2,id:5400,x:31768,y:32406,varname:node_5400,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Distance,id:1438,x:32016,y:32360,varname:node_1438,prsc:2|A-4943-UVOUT,B-5400-OUT;n:type:ShaderForge.SFN_Vector1,id:1912,x:32035,y:32533,varname:node_1912,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1565,x:32206,y:32414,varname:node_1565,prsc:2|A-1438-OUT,B-1912-OUT;n:type:ShaderForge.SFN_OneMinus,id:8657,x:32400,y:32404,varname:node_8657,prsc:2|IN-1565-OUT;n:type:ShaderForge.SFN_Clamp01,id:7940,x:32599,y:32404,varname:node_7940,prsc:2|IN-8657-OUT;n:type:ShaderForge.SFN_Multiply,id:5329,x:32783,y:32411,varname:node_5329,prsc:2|A-7940-OUT,B-5561-OUT,C-1020-OUT;n:type:ShaderForge.SFN_TexCoord,id:4943,x:32005,y:32126,varname:node_4943,prsc:2,uv:0;n:type:ShaderForge.SFN_Tau,id:1020,x:32665,y:32557,varname:node_1020,prsc:2;n:type:ShaderForge.SFN_Rotator,id:1436,x:33041,y:32453,varname:node_1436,prsc:2|UVIN-7669-UVOUT,ANG-5329-OUT;n:type:ShaderForge.SFN_TexCoord,id:7669,x:32916,y:32251,varname:node_7669,prsc:2,uv:0;n:type:ShaderForge.SFN_Normalize,id:1569,x:33034,y:32672,varname:node_1569,prsc:2|IN-1436-UVOUT;proporder:2574-5561;pass:END;sub:END;*/

Shader "Shader Forge/Rotator" {
    Properties {
        _DifuseTexture ("DifuseTexture", 2D) = "white" {}
        _RotateAngle ("RotateAngle", Range(0, 1)) = 0
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
            uniform sampler2D _DifuseTexture; uniform float4 _DifuseTexture_ST;
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
                float4 node_9393 = _Time + _TimeEditor;
                float2 node_4176 = (i.uv0+node_9393.g*float2(0.1,0));
                float4 _DifuseTexture_var = tex2D(_DifuseTexture,TRANSFORM_TEX(node_4176, _DifuseTexture));
                float3 diffuseColor = _DifuseTexture_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            uniform sampler2D _DifuseTexture; uniform float4 _DifuseTexture_ST;
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
                float4 node_336 = _Time + _TimeEditor;
                float2 node_4176 = (i.uv0+node_336.g*float2(0.1,0));
                float4 _DifuseTexture_var = tex2D(_DifuseTexture,TRANSFORM_TEX(node_4176, _DifuseTexture));
                float3 diffuseColor = _DifuseTexture_var.rgb;
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
