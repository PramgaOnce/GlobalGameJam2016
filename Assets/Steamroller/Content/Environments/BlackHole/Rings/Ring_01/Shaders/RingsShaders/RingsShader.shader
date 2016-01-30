// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32797,y:33360,varname:node_4013,prsc:2|diff-7743-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32426,y:32978,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Rotator,id:4796,x:32121,y:32861,varname:node_4796,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:654,x:32036,y:32660,ptovrint:False,ptlb:Ray,ptin:_Ray,varname:node_654,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d700c63c555fe274ba06f5d0ab9cf942,ntxv:0,isnm:False|UVIN-4934-UVOUT;n:type:ShaderForge.SFN_Panner,id:4934,x:31652,y:32537,varname:node_4934,prsc:2,spu:0.5,spv:0|UVIN-8583-UVOUT,DIST-6236-T;n:type:ShaderForge.SFN_TexCoord,id:8583,x:31450,y:32471,varname:node_8583,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:2192,x:32016,y:33975,ptovrint:False,ptlb:Distortion_copy,ptin:_Distortion_copy,varname:_Distortion_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:122c88158539dd14894def088a246365,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2587,x:31986,y:32350,ptovrint:False,ptlb:node_654_copy,ptin:_node_654_copy,varname:_node_654_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d700c63c555fe274ba06f5d0ab9cf942,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:1519,x:32031,y:32529,varname:node_1519,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7743,x:32347,y:32441,varname:node_7743,prsc:2|A-2587-G,B-1519-OUT;n:type:ShaderForge.SFN_Multiply,id:5816,x:32055,y:33714,varname:node_5816,prsc:2|A-1496-OUT,B-1406-OUT;n:type:ShaderForge.SFN_Power,id:1406,x:31798,y:33762,varname:node_1406,prsc:2|VAL-1951-OUT,EXP-4261-OUT;n:type:ShaderForge.SFN_Vector4,id:1496,x:31792,y:33582,varname:node_1496,prsc:2,v1:0,v2:1,v3:0.5,v4:0;n:type:ShaderForge.SFN_Slider,id:4261,x:31350,y:33896,ptovrint:False,ptlb:node_4261,ptin:_node_4261,varname:node_4261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:1951,x:31520,y:33632,varname:node_1951,prsc:2|IN-2239-OUT;n:type:ShaderForge.SFN_Dot,id:2239,x:31251,y:33599,varname:node_2239,prsc:2,dt:0|A-7631-OUT,B-1066-OUT;n:type:ShaderForge.SFN_ViewVector,id:7631,x:30997,y:33669,varname:node_7631,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1066,x:31045,y:33391,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:3639,x:32288,y:33769,varname:node_3639,prsc:2|A-5816-OUT,B-2192-G;n:type:ShaderForge.SFN_Add,id:6886,x:32276,y:33941,varname:node_6886,prsc:2|A-5816-OUT,B-2192-G;n:type:ShaderForge.SFN_Multiply,id:4910,x:32460,y:33856,varname:node_4910,prsc:2|A-3639-OUT,B-6886-OUT;n:type:ShaderForge.SFN_Time,id:6236,x:31408,y:32678,varname:node_6236,prsc:2;proporder:1304-654-2587-2192-4261;pass:END;sub:END;*/

Shader "Shader Forge/RingsShader" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _Ray ("Ray", 2D) = "white" {}
        _node_654_copy ("node_654_copy", 2D) = "white" {}
        _Distortion_copy ("Distortion_copy", 2D) = "white" {}
        _node_4261 ("node_4261", Range(0, 1)) = 1
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
            uniform sampler2D _node_654_copy; uniform float4 _node_654_copy_ST;
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
                float4 _node_654_copy_var = tex2D(_node_654_copy,TRANSFORM_TEX(i.uv0, _node_654_copy));
                float node_1519 = 2.0;
                float node_7743 = (_node_654_copy_var.g*node_1519);
                float3 diffuseColor = float3(node_7743,node_7743,node_7743);
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
            uniform sampler2D _node_654_copy; uniform float4 _node_654_copy_ST;
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
                float4 _node_654_copy_var = tex2D(_node_654_copy,TRANSFORM_TEX(i.uv0, _node_654_copy));
                float node_1519 = 2.0;
                float node_7743 = (_node_654_copy_var.g*node_1519);
                float3 diffuseColor = float3(node_7743,node_7743,node_7743);
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
