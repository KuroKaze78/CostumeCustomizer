// ---- Created with 3Dmigoto v1.3.14 on Mon Jan 07 08:03:36 2019

cbuffer vector_register_block : register(b0)
{
  float4 gSuntanTextureOffset : packoffset(c0);
  float4 gSuntanParam : packoffset(c1);
}

SamplerState gSuntanTextureSampler_SamplerState_s : register(s0);
SamplerState gPrevSuntanTextureSampler_SamplerState_s : register(s1);
Texture2D<float4> gSuntanTextureSampler_Texture : register(t0);
Texture2D<float4> gPrevSuntanTextureSampler_Texture : register(t1);

Texture2D<float4> gBreastSuntanTextureSampler_Texture : register(t2);
Texture2D<float4> gGroinSuntanTextureSampler_Texture : register(t3);
Texture2D<float4> gLegsSuntanTextureSampler_Texture : register(t4);
Texture2D<float4> gArmsSuntanTextureSampler_Texture : register(t5);
Texture2D<float4> gFingerNailsSuntanTextureSampler_Texture : register(t6);
Texture2D<float4> gToeNailsSuntanTextureSampler_Texture : register(t7);



// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);

float mixTan(float2 tanPos)
{
  float retTan,tempTan;
  
  retTan = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  
  // Mix with Breast Tan
  tempTan = gBreastSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  retTan = min(retTan, tempTan);
  
  // Mix with Groin Tan
  tempTan = gGroinSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  retTan = min(retTan, tempTan);
  
  // Mix with Legs Tan
  tempTan = gLegsSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  retTan = min(retTan, tempTan);
  
  // Mix with Arms Tan
  tempTan = gArmsSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  retTan = min(retTan, tempTan);
  
  // Mix with Finger Nails Tan
  tempTan = gFingerNailsSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  retTan = min(retTan, tempTan);
  
  // Mix with Toe Nails Tan
  tempTan = gToeNailsSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, tanPos).x;
  retTan = min(retTan, tempTan);
  
  return retTan;
}

void main(
  float4 v0 : SV_Position0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_Target0,
  out float4 o1 : SV_Target1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = gSuntanTextureOffset.xyxy * float4(-2,-2,-1,-2) + v1.xyxy;
  r0.xyzw = -gSuntanTextureOffset.zwzw + r0.xyzw;
  r1.x = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r0.xy).x;
  r1.x = saturate(r1.x);
  r1.y = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r0.zw).x;
  r1.y = saturate(r1.y);
  r1.x = r1.x + r1.y;
  r2.xyzw = gSuntanTextureOffset.xyxy * float4(0,-2,1,-2) + v1.xyxy;
  r2.xyzw = -gSuntanTextureOffset.zwzw + r2.xyzw;
  r1.y = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r2.xy).x;
  r1.y = saturate(r1.y);
  r1.x = r1.x + r1.y;
  r1.y = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r2.zw).x;
  r1.y = saturate(r1.y);
  r1.x = r1.x + r1.y;
  r3.xyzw = gSuntanTextureOffset.xyxy * float4(2,-2,-2,-1) + v1.xyxy;
  r3.xyzw = -gSuntanTextureOffset.zwzw + r3.xyzw;
  r1.y = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r3.xy).x;
  r1.y = saturate(r1.y);
  r1.x = r1.x + r1.y;
  r1.y = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r3.zw).x;
  r1.y = saturate(r1.y);
  r1.x = r1.x + r1.y;
  r4.xyzw = -gSuntanTextureOffset.xyzw + v1.xyxy;
  r1.yz = -gSuntanTextureOffset.zw + r4.xy;
  r1.w = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r1.yz).x;
  
  //r1.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r1.yz).x;
  r1.y = mixTan(r1.yz);
  
  r1.w = saturate(r1.w);
  r1.x = r1.x + r1.w;
  r5.xyzw = gSuntanTextureOffset.xyxy * float4(0,-1,1,-1) + v1.xyxy;
  r5.xyzw = -gSuntanTextureOffset.zwzw + r5.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r5.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r5.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r6.xyzw = gSuntanTextureOffset.xyxy * float4(2,-1,-2,0) + v1.xyxy;
  r6.xyzw = -gSuntanTextureOffset.zwzw + r6.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r6.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r6.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r7.xyzw = gSuntanTextureOffset.xyxy * float4(-1,0,1,0) + v1.xyxy;
  r7.xyzw = -gSuntanTextureOffset.zwzw + r7.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r7.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r4.zw).x;
  
  //r1.w = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r4.zw).x;
  r1.w = mixTan(r4.zw);
  
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r7.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r4.xyzw = gSuntanTextureOffset.xyxy * float4(2,0,-2,1) + v1.xyxy;
  r4.xyzw = -gSuntanTextureOffset.zwzw + r4.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r4.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r4.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r8.xyzw = gSuntanTextureOffset.xyxy * float4(-1,1,0,1) + v1.xyxy;
  r8.xyzw = -gSuntanTextureOffset.zwzw + r8.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r8.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r8.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r9.xy = gSuntanTextureOffset.xy + v1.xy;
  r9.xy = -gSuntanTextureOffset.zw + r9.xy;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r9.xy).x;
  
  //r9.x = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r9.xy).x;
  r9.x = mixTan(r9.xy);
  
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r10.xyzw = gSuntanTextureOffset.xyxy * float4(2,1,-2,2) + v1.xyxy;
  r10.xyzw = -gSuntanTextureOffset.zwzw + r10.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r10.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r10.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r11.xyzw = gSuntanTextureOffset.xyxy * float4(-1,2,0,2) + v1.xyxy;
  r11.xyzw = -gSuntanTextureOffset.zwzw + r11.xyzw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r11.xy).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r11.zw).x;
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r9.yz = gSuntanTextureOffset.xy * float2(1,2) + v1.xy;
  r9.yz = -gSuntanTextureOffset.zw + r9.yz;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r9.yz).x;
  
  //r9.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r9.yz).x;
  r9.y = mixTan(r9.yz);
  
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r9.zw = gSuntanTextureOffset.xy * float2(2,2) + v1.xy;
  r9.zw = -gSuntanTextureOffset.zw + r9.zw;
  r1.z = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, r9.zw).x;
  
  //r9.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r9.zw).x;
  r9.z = mixTan(r9.zw);
  
  r1.z = saturate(r1.z);
  r1.x = r1.x + r1.z;
  r1.x = gSuntanParam.y * r1.x;
  r1.x = 0.0399999991 * r1.x;
  
  //r0.x = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r0.xy).x;
  r0.x = mixTan(r0.xy);
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r0.zw).x;
  r0.y = mixTan(r0.zw);
  
  r0.x = r0.x + r0.y;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r2.xy).x;
  r0.y = mixTan(r2.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r2.zw).x;
  r0.z = mixTan(r2.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r3.xy).x;
  r0.y = mixTan(r3.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r3.zw).x;
  r0.z = mixTan(r3.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.x = r0.x + r1.y;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r5.xy).x;
  r0.y = mixTan(r5.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r5.zw).x;
  r0.z = mixTan(r5.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r6.xy).x;
  r0.y = mixTan(r6.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r6.zw).x;
  r0.z = mixTan(r6.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r7.xy).x;
  r0.y = mixTan(r7.xy);
  
  r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r7.zw).x;
  r0.z = mixTan(r7.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r1.w;
  r0.x = r0.x + r0.z;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r4.xy).x;
  r0.y = mixTan(r4.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r4.zw).x;
  r0.z = mixTan(r4.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r8.xy).x;
  r0.y = mixTan(r8.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r8.zw).x;
  r0.z = mixTan(r8.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.x = r0.x + r9.x;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r10.xy).x;
  r0.y = mixTan(r10.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r10.zw).x;
  r0.z = mixTan(r10.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r11.xy).x;
  r0.y = mixTan(r11.xy);
  
  //r0.z = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, r11.zw).x;
  r0.z = mixTan(r11.zw);
  
  r0.x = r0.x + r0.y;
  r0.x = r0.x + r0.z;
  r0.x = r0.x + r9.y;
  r0.x = r0.x + r9.z;
  r0.x = gSuntanParam.x * r0.x;
  r0.x = r0.x * 0.0399999991 + r1.x;
  o0.xyz = saturate(r0.xxx);
  o0.w = 1;
  r0.x = gPrevSuntanTextureSampler_Texture.Sample(gPrevSuntanTextureSampler_SamplerState_s, v1.xy).x;
  r0.x = saturate(r0.x);
  r0.x = gSuntanParam.y * r0.x;
  
  //r0.y = gSuntanTextureSampler_Texture.Sample(gSuntanTextureSampler_SamplerState_s, v1.xy).x;
  r0.y = mixTan(v1.xy);
  
  r0.x = r0.y * gSuntanParam.x + r0.x;
  o1.xyz = saturate(r0.xxx);
  o1.w = 1;
  return;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//   using 3Dmigoto v1.3.14 on Mon Jan 07 08:03:35 2019
//
//
// Buffer Definitions:
//
// cbuffer vector_register_block
// {
//
//   float4 gSuntanTextureOffset;       // Offset:    0 Size:    16
//   float4 gSuntanParam;               // Offset:   16 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// gSuntanTextureSampler_SamplerState    sampler      NA          NA    0        1
// gPrevSuntanTextureSampler_SamplerState    sampler      NA          NA    1        1
// gSuntanTextureSampler_Texture     texture  float4          2d    0        1
// gPrevSuntanTextureSampler_Texture    texture  float4          2d    1        1
// vector_register_block             cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float
// TEXCOORD                 0   xy          1     NONE   float   xy
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[2], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 12
mad r0.xyzw, cb0[0].xyxy, l(-2.000000, -2.000000, -1.000000, -2.000000), v1.xyxy
add r0.xyzw, r0.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.x, r0.xyxx, t1.xyzw, s1
mov_sat r1.x, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.y, r0.zwzz, t1.yxzw, s1
mov_sat r1.y, r1.y
add r1.x, r1.y, r1.x
mad r2.xyzw, cb0[0].xyxy, l(0.000000, -2.000000, 1.000000, -2.000000), v1.xyxy
add r2.xyzw, r2.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t1.yxzw, s1
mov_sat r1.y, r1.y
add r1.x, r1.y, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.y, r2.zwzz, t1.yxzw, s1
mov_sat r1.y, r1.y
add r1.x, r1.y, r1.x
mad r3.xyzw, cb0[0].xyxy, l(2.000000, -2.000000, -2.000000, -1.000000), v1.xyxy
add r3.xyzw, r3.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.y, r3.xyxx, t1.yxzw, s1
mov_sat r1.y, r1.y
add r1.x, r1.y, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.y, r3.zwzz, t1.yxzw, s1
mov_sat r1.y, r1.y
add r1.x, r1.y, r1.x
add r4.xyzw, v1.xyxy, -cb0[0].xyzw
add r1.yz, r4.xxyx, -cb0[0].zzwz
sample_indexable(texture2d)(float,float,float,float) r1.w, r1.yzyy, t1.yzwx, s1
sample_indexable(texture2d)(float,float,float,float) r1.y, r1.yzyy, t0.yxzw, s0
mov_sat r1.w, r1.w
add r1.x, r1.w, r1.x
mad r5.xyzw, cb0[0].xyxy, l(0.000000, -1.000000, 1.000000, -1.000000), v1.xyxy
add r5.xyzw, r5.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r5.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r5.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r6.xyzw, cb0[0].xyxy, l(2.000000, -1.000000, -2.000000, 0.000000), v1.xyxy
add r6.xyzw, r6.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r6.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r6.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r7.xyzw, cb0[0].xyxy, l(-1.000000, 0.000000, 1.000000, 0.000000), v1.xyxy
add r7.xyzw, r7.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r7.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r4.zwzz, t1.yzxw, s1
sample_indexable(texture2d)(float,float,float,float) r1.w, r4.zwzz, t0.yzwx, s0
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r7.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r4.xyzw, cb0[0].xyxy, l(2.000000, 0.000000, -2.000000, 1.000000), v1.xyxy
add r4.xyzw, r4.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r4.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r4.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r8.xyzw, cb0[0].xyxy, l(-1.000000, 1.000000, 0.000000, 1.000000), v1.xyxy
add r8.xyzw, r8.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r8.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r8.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
add r9.xy, v1.xyxx, cb0[0].xyxx
add r9.xy, r9.xyxx, -cb0[0].zwzz
sample_indexable(texture2d)(float,float,float,float) r1.z, r9.xyxx, t1.yzxw, s1
sample_indexable(texture2d)(float,float,float,float) r9.x, r9.xyxx, t0.xyzw, s0
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r10.xyzw, cb0[0].xyxy, l(2.000000, 1.000000, -2.000000, 2.000000), v1.xyxy
add r10.xyzw, r10.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r10.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r10.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r11.xyzw, cb0[0].xyxy, l(-1.000000, 2.000000, 0.000000, 2.000000), v1.xyxy
add r11.xyzw, r11.xyzw, -cb0[0].zwzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r11.xyxx, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.z, r11.zwzz, t1.yzxw, s1
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r9.yz, cb0[0].xxyx, l(0.000000, 1.000000, 2.000000, 0.000000), v1.xxyx
add r9.yz, r9.yyzy, -cb0[0].zzwz
sample_indexable(texture2d)(float,float,float,float) r1.z, r9.yzyy, t1.yzxw, s1
sample_indexable(texture2d)(float,float,float,float) r9.y, r9.yzyy, t0.yxzw, s0
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mad r9.zw, cb0[0].xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), v1.xxxy
add r9.zw, r9.zzzw, -cb0[0].zzzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r9.zwzz, t1.yzxw, s1
sample_indexable(texture2d)(float,float,float,float) r9.z, r9.zwzz, t0.yzxw, s0
mov_sat r1.z, r1.z
add r1.x, r1.z, r1.x
mul r1.x, r1.x, cb0[1].y
mul r1.x, r1.x, l(0.040000)
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t0.yxzw, s0
add r0.x, r0.y, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r2.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r2.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r3.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r3.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
add r0.x, r1.y, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r5.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r5.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r6.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r6.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r7.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r7.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r1.w, r0.x
add r0.x, r0.z, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r4.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r8.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r8.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
add r0.x, r9.x, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r10.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r10.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r11.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r11.zwzz, t0.yzxw, s0
add r0.x, r0.y, r0.x
add r0.x, r0.z, r0.x
add r0.x, r9.y, r0.x
add r0.x, r9.z, r0.x
mul r0.x, r0.x, cb0[1].x
mad r0.x, r0.x, l(0.040000), r1.x
mov_sat o0.xyz, r0.xxxx
mov o0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t1.xyzw, s1
mov_sat r0.x, r0.x
mul r0.x, r0.x, cb0[1].y
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.xyxx, t0.yxzw, s0
mad r0.x, r0.y, cb0[1].x, r0.x
mov_sat o1.xyz, r0.xxxx
mov o1.w, l(1.000000)
ret
// Approximately 165 instruction slots used

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
