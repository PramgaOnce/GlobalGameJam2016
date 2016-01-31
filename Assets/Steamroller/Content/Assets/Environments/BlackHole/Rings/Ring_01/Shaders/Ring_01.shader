// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33407,y:31298,varname:node_3138,prsc:2|emission-2005-OUT,olcol-4723-OUT;n:type:ShaderForge.SFN_Tex2d,id:9132,x:32907,y:30832,ptovrint:False,ptlb:Ray,ptin:_Ray,varname:node_9132,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d700c63c555fe274ba06f5d0ab9cf942,ntxv:0,isnm:False|UVIN-5305-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:9372,x:32907,y:30649,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_9372,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:122c88158539dd14894def088a246365,ntxv:0,isnm:False|UVIN-5305-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3864,x:31499,y:31410,varname:node_3864,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:818,x:31003,y:32835,ptovrint:False,ptlb:Distortion_copy,ptin:_Distortion_copy,varname:_Distortion_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:122c88158539dd14894def088a246365,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:9020,x:31439,y:32344,varname:node_9020,prsc:2,spu:1,spv:1;n:type:ShaderForge.SFN_Slider,id:7909,x:31967,y:31039,ptovrint:False,ptlb:SpeedControl,ptin:_SpeedControl,varname:node_7909,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5199056,max:1;n:type:ShaderForge.SFN_Time,id:51,x:32254,y:30897,varname:node_51,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:8320,x:32346,y:31037,varname:node_8320,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:10|IN-7909-OUT;n:type:ShaderForge.SFN_Panner,id:5305,x:32738,y:30830,varname:node_5305,prsc:2,spu:0.01,spv:0|UVIN-2613-UVOUT,DIST-1311-OUT;n:type:ShaderForge.SFN_TexCoord,id:2613,x:32543,y:30715,varname:node_2613,prsc:2,uv:0;n:type:ShaderForge.SFN_Sin,id:5328,x:32274,y:31624,varname:node_5328,prsc:2|IN-2934-OUT;n:type:ShaderForge.SFN_Multiply,id:2934,x:32108,y:31588,varname:node_2934,prsc:2|A-8498-OUT,B-1357-T;n:type:ShaderForge.SFN_ValueProperty,id:8498,x:31969,y:31506,ptovrint:False,ptlb:PulseSpeed,ptin:_PulseSpeed,varname:node_8498,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Time,id:1357,x:31913,y:31618,varname:node_1357,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:4267,x:32480,y:31651,varname:node_4267,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-5328-OUT;n:type:ShaderForge.SFN_Lerp,id:8270,x:32699,y:31579,varname:node_8270,prsc:2|A-4090-OUT,B-2111-OUT,T-4267-OUT;n:type:ShaderForge.SFN_Vector3,id:2111,x:32402,y:31526,varname:node_2111,prsc:2,v1:0,v2:0.9926471,v3:0.3354464;n:type:ShaderForge.SFN_Vector3,id:4090,x:32382,y:31414,varname:node_4090,prsc:2,v1:0.08931659,v2:0.8676471,v3:0.8676471;n:type:ShaderForge.SFN_Slider,id:7880,x:32382,y:31337,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_7880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4564527,max:1;n:type:ShaderForge.SFN_Multiply,id:577,x:32783,y:31358,varname:node_577,prsc:2|A-7880-OUT,B-8270-OUT;n:type:ShaderForge.SFN_Vector1,id:5264,x:33004,y:31791,varname:node_5264,prsc:2,v1:0.05;n:type:ShaderForge.SFN_Multiply,id:7463,x:33171,y:30972,varname:node_7463,prsc:2|A-9372-B,B-5852-RGB;n:type:ShaderForge.SFN_Divide,id:1311,x:32536,y:30976,varname:node_1311,prsc:2|A-51-T,B-8320-OUT;n:type:ShaderForge.SFN_Color,id:5852,x:32881,y:31052,ptovrint:False,ptlb:RayColor,ptin:_RayColor,varname:node_5852,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.25,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4723,x:33039,y:31625,varname:node_4723,prsc:2|A-9446-OUT,B-3479-OUT;n:type:ShaderForge.SFN_Sin,id:9446,x:32904,y:31513,varname:node_9446,prsc:2|IN-577-OUT;n:type:ShaderForge.SFN_Vector1,id:3479,x:32841,y:31682,varname:node_3479,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:9448,x:33132,y:31919,varname:node_9448,prsc:2,v1:0.05;n:type:ShaderForge.SFN_Tex2d,id:6684,x:32990,y:30478,ptovrint:False,ptlb:Ray_copy,ptin:_Ray_copy,varname:_Ray_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d700c63c555fe274ba06f5d0ab9cf942,ntxv:0,isnm:False|UVIN-3400-UVOUT;n:type:ShaderForge.SFN_Panner,id:3400,x:32703,y:30466,varname:node_3400,prsc:2,spu:0.1,spv:0|UVIN-509-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:509,x:32505,y:30466,varname:node_509,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2005,x:33045,y:31294,varname:node_2005,prsc:2|A-7463-OUT,B-4723-OUT;proporder:9132-9372-818-7909-8498-7880-5852-6684;pass:END;sub:END;*/

Shader "Shader Forge/Ring_01" {
    Properties {
        _Ray ("Ray", 2D) = "white" {}
        _Distortion ("Distortion", 2D) = "white" {}
        _Distortion_copy ("Distortion_copy", 2D) = "white" {}
        _SpeedControl ("SpeedControl", Range(0, 1)) = 0.5199056
        _PulseSpeed ("PulseSpeed", Float ) = 5
        _ColorIntensity ("ColorIntensity", Range(0, 1)) = 0.4564527
        _RayColor ("RayColor", Color) = (0.25,0,1,1)
        _Ray_copy ("Ray_copy", 2D) = "white" {}
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _SpeedControl;
            uniform float _PulseSpeed;
            uniform float _ColorIntensity;
            uniform float4 _RayColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_51 = _Time + _TimeEditor;
                float2 node_5305 = (i.uv0+(node_51.g/(_SpeedControl*2.0+-1.0))*float2(0.01,0));
                float4 _Distortion_var = tex2D(_Distortion,TRANSFORM_TEX(node_5305, _Distortion));
                float4 node_1357 = _Time + _TimeEditor;
                float3 node_4723 = (sin((_ColorIntensity*lerp(float3(0.08931659,0.8676471,0.8676471),float3(0,0.9926471,0.3354464),(sin((_PulseSpeed*node_1357.g))*0.5+0.5))))*2.0);
                float3 emissive = ((_Distortion_var.b*_RayColor.rgb)*node_4723);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
