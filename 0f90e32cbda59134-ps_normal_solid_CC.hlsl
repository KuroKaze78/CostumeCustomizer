// ---- Created with 3Dmigoto v1.3.12 on Thu Dec 20 21:39:59 2018

cbuffer ps_default_cb : register(b2)
{
  float4 gOLDHDRRate : packoffset(c0);
  float4 gOLDAlphaParam : packoffset(c1);
  float4 gOLDTexBlendAlpha[2] : packoffset(c2);
  float4 gOLDTexBlendScaleBias[2] : packoffset(c4);
  float4 gOLDNormalTexBlendAlpha : packoffset(c6);
  float4 gOLDNormalTexBlendScaleBias : packoffset(c7);
  float4 gShadowCsBias : packoffset(c8);
  float4 gOLDIDandFresnel : packoffset(c9);
  float4 gOLDReflectionColor : packoffset(c10);
  float4 gOLDReflectionVisibilityParam : packoffset(c11);
  float4 gEyePosition : packoffset(c12);
  float4 gEyePlane : packoffset(c13);
  float4 gIblDiffuseColor : packoffset(c14);
  float4 gIblSpecularColor : packoffset(c15);
  float4 gOLDVelvetyRimParam : packoffset(c16);
  float4 gOLDSpecularColor : packoffset(c17);
  float4 gOLDSpecularVisibilityParam : packoffset(c18);
  float4 gOLDVelvetyColor : packoffset(c19);
  float4 gOLDRimColor : packoffset(c20);
  float4 gOLDLScatterHighFreq : packoffset(c21);
  float4 gOLDMaterialMulColor : packoffset(c22);
  float4 gOLDMaterialAddColor : packoffset(c23);
  float4 gOLDMaterialParam : packoffset(c24);
  float4 gOLDMaterialParam2 : packoffset(c25);
}

cbuffer ps_default_cb : register(b13)
{
  float4 gCCHDRRate : packoffset(c0);
  float4 gCCAlphaParam : packoffset(c1);
  float4 gCCTexBlendAlpha[2] : packoffset(c2);
  float4 gCCTexBlendScaleBias[2] : packoffset(c4);
  float4 gCCNormalTexBlendAlpha : packoffset(c6);
  float4 gCCNormalTexBlendScaleBias : packoffset(c7);
  float4 gCCRESERVED0 : packoffset(c8);
  float4 gCCIDandFresnel : packoffset(c9);
  float4 gCCReflectionColor : packoffset(c10);
  float4 gCCReflectionVisibilityParam : packoffset(c11);
  float4 gCCRESERVED1 : packoffset(c12);
  float4 gCCRESERVED2 : packoffset(c13);
  float4 gCCRESERVED3 : packoffset(c14);
  float4 gCCRESERVED4 : packoffset(c15);
  float4 gCCVelvetyRimParam : packoffset(c16);
  float4 gCCSpecularColor : packoffset(c17);
  float4 gCCSpecularVisibilityParam : packoffset(c18);
  float4 gCCVelvetyColor : packoffset(c19);
  float4 gCCRimColor : packoffset(c20);
  float4 gCCLScatterHighFreq : packoffset(c21);
  float4 gCCMaterialMulColor : packoffset(c22);
  float4 gCCMaterialAddColor : packoffset(c23);
  float4 gCCMaterialParam : packoffset(c24);
  float4 gCCMaterialParam2 : packoffset(c25);
}

SamplerState gTextureSampler0_SamplerState_s : register(s0);
SamplerState gTextureSampler1_SamplerState_s : register(s1);
SamplerState gTextureSampler2_SamplerState_s : register(s2);
Texture2D<float4> gTextureSampler0_Texture : register(t0);
Texture2D<float4> gTextureSampler1_Texture : register(t1);
Texture2D<float4> gTextureSampler2_Texture : register(t2);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main(
  float4 v0 : SV_Position0,
  linear centroid float4 v1 : COLOR1,
  linear centroid float3 v2 : COLOR0,
  linear centroid float4 v3 : TEXCOORD0,
  linear centroid float4 v4 : TEXCOORD1,
  float4 v5 : TEXCOORD2,
  linear centroid float4 v6 : TEXCOORD3,
  linear centroid float4 v7 : TEXCOORD4,
  linear centroid float4 v8 : TEXCOORD5,
  uint v9 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1,
  out float4 o2 : SV_Target2,
  out float4 o3 : SV_Target3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = gTextureSampler0_Texture.Sample(gTextureSampler0_SamplerState_s, v3.xy).xyz;
  r0.xyz = r0.xyz * gCCMaterialMulColor.xyz + gCCMaterialAddColor.xyz;
  o0.xyz = v2.xyz * r0.xyz;
  r0.x = v9.x ? 1 : -1;
  o0.w = saturate(v1.w * r0.x);
  r0.xyz = v8.xyz * r0.xxx;
  r1.xyz = gTextureSampler1_Texture.Sample(gTextureSampler1_SamplerState_s, v3.zw).xyz;
  r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r2.xyz = v7.xyz * r1.yyy;
  r1.xyw = r1.xxx * v6.xyz + r2.xyz;
  r0.xyz = r1.zzz * r0.xyz + r1.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  o1.xyz = r0.xyz * r0.www;
  o1.w = gShadowCsBias.z;
  o2.xyzw = gTextureSampler2_Texture.Sample(gTextureSampler2_SamplerState_s, v4.xy).xyzw;
  o3.xyz = gCCIDandFresnel.xyw;
  o3.w = 0;
  return;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//   using 3Dmigoto v1.3.12 on Thu Dec 20 21:39:59 2018
//
//
// Buffer Definitions:
//
// cbuffer ps_default_cb
// {
//
//   float4 gHDRRate;                   // Offset:    0 Size:    16 [unused]
//   float4 gAlphaParam;                // Offset:   16 Size:    16 [unused]
//   float4 gTexBlendAlpha[2];          // Offset:   32 Size:    32 [unused]
//   float4 gTexBlendScaleBias[2];      // Offset:   64 Size:    32 [unused]
//   float4 gNormalTexBlendAlpha;       // Offset:   96 Size:    16 [unused]
//   float4 gNormalTexBlendScaleBias;   // Offset:  112 Size:    16 [unused]
//   float4 gShadowCsBias;              // Offset:  128 Size:    16
//   float4 gIDandFresnel;              // Offset:  144 Size:    16
//   float4 gReflectionColor;           // Offset:  160 Size:    16 [unused]
//   float4 gReflectionVisibilityParam; // Offset:  176 Size:    16 [unused]
//   float4 gEyePosition;               // Offset:  192 Size:    16 [unused]
//   float4 gEyePlane;                  // Offset:  208 Size:    16 [unused]
//   float4 gIblDiffuseColor;           // Offset:  224 Size:    16 [unused]
//   float4 gIblSpecularColor;          // Offset:  240 Size:    16 [unused]
//   float4 gVelvetyRimParam;           // Offset:  256 Size:    16 [unused]
//   float4 gSpecularColor;             // Offset:  272 Size:    16 [unused]
//   float4 gSpecularVisibilityParam;   // Offset:  288 Size:    16 [unused]
//   float4 gVelvetyColor;              // Offset:  304 Size:    16 [unused]
//   float4 gRimColor;                  // Offset:  320 Size:    16 [unused]
//   float4 gLScatterHighFreq;          // Offset:  336 Size:    16 [unused]
//   float4 gMaterialMulColor;          // Offset:  352 Size:    16
//   float4 gMaterialAddColor;          // Offset:  368 Size:    16
//   float4 gMaterialParam;             // Offset:  384 Size:    16 [unused]
//   float4 gMaterialParam2;            // Offset:  400 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// gTextureSampler0_SamplerState     sampler      NA          NA    0        1
// gTextureSampler1_SamplerState     sampler      NA          NA    1        1
// gTextureSampler2_SamplerState     sampler      NA          NA    2        1
// gTextureSampler0_Texture          texture  float4          2d    0        1
// gTextureSampler1_Texture          texture  float4          2d    1        1
// gTextureSampler2_Texture          texture  float4          2d    2        1
// ps_default_cb                     cbuffer      NA          NA    2        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float
// COLOR                    1   xyzw        1     NONE   float      w
// COLOR                    0   xyz         2     NONE   float   xyz
// TEXCOORD                 0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 1   xyzw        4     NONE   float   xy
// TEXCOORD                 2   xyzw        5     NONE   float
// TEXCOORD                 3   xyzw        6     NONE   float   xyz
// TEXCOORD                 4   xyzw        7     NONE   float   xyz
// TEXCOORD                 5   xyzw        8     NONE   float   xyz
// SV_IsFrontFace           0   x           9    FFACE    uint   x
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
// SV_Target                2   xyzw        2   TARGET   float   xyzw
// SV_Target                3   xyzw        3   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb2[24], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear centroid v1.w
dcl_input_ps linear centroid v2.xyz
dcl_input_ps linear centroid v3.xyzw
dcl_input_ps linear centroid v4.xy
dcl_input_ps linear centroid v6.xyz
dcl_input_ps linear centroid v7.xyz
dcl_input_ps linear centroid v8.xyz
dcl_input_ps_sgv v9.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v3.xyxx, t0.xyzw, s0
mad r0.xyz, r0.xyzx, cb2[22].xyzx, cb2[23].xyzx
mul o0.xyz, r0.xyzx, v2.xyzx
movc r0.x, v9.x, l(1.000000), l(-1.000000)
mul_sat o0.w, r0.x, v1.w
mul r0.xyz, r0.xxxx, v8.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v3.zwzz, t1.xyzw, s1
mad r1.xyz, r1.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r2.xyz, r1.yyyy, v7.xyzx
mad r1.xyw, r1.xxxx, v6.xyxz, r2.xyxz
mad r0.xyz, r1.zzzz, r0.xyzx, r1.xywx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul o1.xyz, r0.wwww, r0.xyzx
mov o1.w, cb2[8].z
sample_indexable(texture2d)(float,float,float,float) o2.xyzw, v4.xyxx, t2.xyzw, s2
mov o3.xyz, cb2[9].xywx
mov o3.w, l(0)
ret
// Approximately 19 instruction slots used

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/