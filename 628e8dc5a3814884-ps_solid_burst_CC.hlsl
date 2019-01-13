// ---- Created with 3Dmigoto v1.3.14 on Sun Jan 13 01:43:30 2019

struct PointLight
{
    float4 position;               // Offset:    0
    float4 color;                  // Offset:   16
};

struct SpotLight
{
    float4 position;               // Offset:    0
    float4 direction;              // Offset:   16
    float4 color;                  // Offset:   32
    float4 attenuation;            // Offset:   48
};

cbuffer bool_register_block : register(b1)
{
  bool gLightScatterEnable : packoffset(c0);
  bool gFogEnable : packoffset(c0.y);
  int2 bool_register_block_padding : packoffset(c0.z);
}

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

cbuffer ps_light_cb : register(b6)
{
  float4 gAmbientColor[2] : packoffset(c0);
  float4 gHemisphereVector : packoffset(c2);
  row_major float3x4 gLightDirection : packoffset(c3);
  row_major float3x4 gLightColorDir : packoffset(c6);
  float4 gLightColorPoint[4] : packoffset(c9);
  float4 gLightPosition[4] : packoffset(c13);
}

cbuffer ps_scene_shadow_cb : register(b3)
{
  float4 gShadowDensityFactor : packoffset(c0);
  float4 gShadowDotDensityFactor : packoffset(c1);
  float4 gShadowDistanceFadeParam : packoffset(c2);
  float4 gShadowMethodParam[2] : packoffset(c3);
  float4 gShadowCsScaleAndSplit[4] : packoffset(c5);
  float4 gShadowCsOffsetAndParam[4] : packoffset(c9);
  float4 gShadowCsOffsetBiasScale : packoffset(c13);
  float4 gShadowCsOffsetSlopeScale : packoffset(c14);
  float4 gShadowCsScaleAndSplit1[4] : packoffset(c15);
  float4 gShadowCsOffsetAndParam1[4] : packoffset(c19);
  float4 gShadowCsOffsetBiasScale1 : packoffset(c23);
  float4 gShadowCsOffsetSlopeScale1 : packoffset(c24);
  float4 gShadowCsVector : packoffset(c25);
}

cbuffer ps_scene_fog_cb : register(b4)
{
  float4 gFogMiddle : packoffset(c0);
  float4 gFogFarMiddle : packoffset(c1);
  float4 gFogDistance : packoffset(c2);
  float4 gFogDensity : packoffset(c3);
  float4 gHeightFogMiddle : packoffset(c4);
  float4 gHeightFogFarMiddle : packoffset(c5);
  float4 gHeightFogDistance : packoffset(c6);
  float4 gHeightFogDensity : packoffset(c7);
  float4 gLScatterSunColor : packoffset(c8);
  float4 gLScatterSunDir : packoffset(c9);
  float4 gLScatterOutTmp : packoffset(c10);
  float4 gLScatterRayTmp : packoffset(c11);
  float4 gLScatterMieTmp : packoffset(c12);
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
SamplerState gIblDiffuseSampler_SamplerState_s : register(s8);
SamplerState gIblSpecularLowSampler_SamplerState_s : register(s9);
SamplerComparisonState gSecondShadowSamplerDepth_SamplerState_s : register(s7);
SamplerComparisonState gShadowSamplerDepth_SamplerState_s : register(s11);
Texture2D<float4> gTextureSampler0_Texture : register(t0);
Texture2D<float4> gTextureSampler1_Texture : register(t1);
Texture2D<float4> gTextureSampler2_Texture : register(t2);
Texture2D<float4> gSecondShadowSamplerDepth_Texture : register(t7);
TextureCube<float4> gIblDiffuseSampler_Texture : register(t8);
TextureCube<float4> gIblSpecularLowSampler_Texture : register(t9);
Texture2D<float4> gShadowSamplerDepth_Texture : register(t11);
StructuredBuffer<PointLight> gPointLightList : register(t16);
StructuredBuffer<SpotLight> gSpotLightList : register(t17);
Buffer<uint> gPointLightListIndices : register(t18);
Buffer<uint> gSpotLightListIndices : register(t19);


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
  linear centroid float4 v9 : TEXCOORD7,
  float4 v10 : VS_TO_FS_SECOND_SDWCOORD_SEMANTICS0,
  uint v11 : SV_IsFrontFace0,
  out float4 o0 : SV_Target0)
{
  const float4 icb[] = { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} };
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
  float4 tempLightDir,tempLightColor;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v11.x ? 1 : -1;
  r0.yzw = v8.xyz * r0.xxx;
  r1.x = v6.w;
  r1.y = v7.w;
  r1.z = v8.w;
  r2.xyz = -gEyePosition.xyz + r1.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r2.w);
  r2.xyz = r2.xyz / r2.www;
  r1.w = 1;
  r1.w = dot(gEyePlane.xyzw, r1.xyzw);
  r3.xyzw = gTextureSampler0_Texture.Sample(gTextureSampler0_SamplerState_s, v3.xy).xyzw;
  r4.x = cmp(gCCMaterialParam.z != 0.000000);
  r4.yz = ddx_coarse(v3.xy);
  r5.xy = ddy_coarse(v3.xy);
  r4.y = dot(r4.yz, r4.yz);
  r4.z = dot(r5.xy, r5.xy);
  r4.y = max(r4.y, r4.z);
  r4.y = log2(r4.y);
  r4.y = 0.5 * r4.y;
  r4.y = max(0, r4.y);
  r4.y = r4.y * 0.25 + 1;
  r4.z = r4.y * r3.w;
  r4.y = r3.w * r4.y + -gCCMaterialParam.w;
  r4.w = ddx_coarse(r4.z);
  r4.z = ddy_coarse(r4.z);
  r4.z = abs(r4.w) + abs(r4.z);
  r4.z = max(9.99999975e-005, r4.z);
  r4.y = r4.y / r4.z;
  r4.y = 0.5 + r4.y;
  r3.w = r4.x ? r4.y : r3.w;
  r3.xyz = r3.xyz * gCCMaterialMulColor.xyz + gCCMaterialAddColor.xyz;
  r3.w = saturate(gCCHDRRate.z + r3.w);
  r4.x = 1 + gCCHDRRate.y;
  r3.xyz = r4.xxx * r3.xyz;
  r4.xyz = gTextureSampler1_Texture.Sample(gTextureSampler1_SamplerState_s, v3.zw).xyz;
  r5.xyzw = gTextureSampler2_Texture.Sample(gTextureSampler2_SamplerState_s, v4.xy).xyzw;
  r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r6.xyz = v7.xyz * r4.yyy;
  r4.xyw = r4.xxx * v6.xyz + r6.xyz;
  r4.xyz = r4.zzz * r0.yzw + r4.xyw;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r4.xyz = r4.xyz * r4.www;
  r6.x = dot(r2.xyz, r4.xyz);
  r6.x = r6.x + r6.x;
  r6.xyz = r4.xyz * -r6.xxx + r2.xyz;
  r7.x = cmp(gShadowCsScaleAndSplit[3].w >= r1.w);
  if (r7.x != 0) {
    r7.x = dot(r0.yzw, r0.yzw);
    r7.x = rsqrt(r7.x);
    r0.yzw = r7.xxx * r0.yzw;
    r7.x = -gShadowCsOffsetAndParam[2].w + r1.w;
    r8.xyzw = gShadowCsOffsetBiasScale.xyzw * gShadowCsBias.zzzz;
    r9.xyzw = gShadowCsOffsetSlopeScale.xyzw * gShadowCsBias.zzzz;
    r10.x = cmp(r7.x >= gShadowCsScaleAndSplit[0].w);
    r10.y = cmp(r7.x >= gShadowCsScaleAndSplit[1].w);
    r10.z = cmp(r7.x >= gShadowCsScaleAndSplit[2].w);
    r10.w = cmp(r7.x >= gShadowCsScaleAndSplit[3].w);
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r7.y = dot(float4(1,1,1,1), r10.xyzw);
    r7.y = min(3, r7.y);
    r7.z = (uint)r7.y;
    r0.y = dot(r0.yzw, gShadowCsVector.xyz);
    r0.zw = cmp(gCCMaterialParam.yx != float2(0,0));
    if (r0.z != 0) {
      r10.xyz = gShadowCsOffsetAndParam[r7.z].xyz + v9.xyz;
      r10.xy = gShadowCsScaleAndSplit[r7.z].xy * r10.xy;
      r10.xy = saturate(r10.xy);
      r11.x = saturate(gShadowCsOffsetAndParam[1].w * r10.x);
      r7.y = gShadowCsOffsetAndParam[0].w * r7.y;
      r11.y = saturate(r10.y * gShadowCsOffsetAndParam[0].w + r7.y);
      r7.y = dot(r8.xyzw, icb[r7.z+0].xyzw);
      r7.w = dot(r9.xyzw, icb[r7.z+0].xyzw);
      r7.y = r7.w * abs(r0.y) + r7.y;
      r7.y = saturate(r10.z * gShadowCsScaleAndSplit[r7.z].z + r7.y);
      r7.w = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.y, int2(-1, -1)).x;
      r8.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.y, int2(-1, 0)).x;
      r7.w = r8.x + r7.w;
      r8.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.y, int2(0, -1)).x;
      r7.w = r8.x + r7.w;
      r7.y = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.y, int2(0, 0)).x;
      r7.y = r7.w + r7.y;
      r7.y = 0.25 * r7.y;
    } else {
      r7.y = 0;
    }
    r7.w = cmp((uint)r7.z < (uint)gShadowCsOffsetAndParam[3].w);
    if (r7.w != 0) {
      r7.x = gShadowCsScaleAndSplit[r7.z].w + -r7.x;
      r7.w = gShadowCsOffsetAndParam[2].w + gShadowCsOffsetAndParam[2].w;
      r8.x = cmp(r7.w >= abs(r7.x));
      if (r8.x != 0) {
        if (r0.z != 0) {
          r7.z = (int)r7.z + 1;
          r7.z = min(3, (uint)r7.z);
          r8.x = (uint)r7.z;
          r10.xyz = gShadowCsOffsetAndParam[r7.z].xyz + v9.xyz;
          r10.xy = gShadowCsScaleAndSplit[r7.z].xy * r10.xy;
          r10.xy = saturate(r10.xy);
          r11.x = saturate(gShadowCsOffsetAndParam[1].w * r10.x);
          r8.x = gShadowCsOffsetAndParam[0].w * r8.x;
          r11.y = saturate(r10.y * gShadowCsOffsetAndParam[0].w + r8.x);
          r8.x = (int)r7.z + -1;
          r8.y = dot(r8.yzw, icb[r8.x+0].xyz);
          r8.x = dot(r9.yzw, icb[r8.x+0].xyz);
          r8.x = r8.x * abs(r0.y) + r8.y;
          r7.z = saturate(r10.z * gShadowCsScaleAndSplit[r7.z].z + r8.x);
          r8.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(-1, -1)).x;
          r8.y = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(-1, 0)).x;
          r8.x = r8.x + r8.y;
          r8.y = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(0, -1)).x;
          r8.x = r8.x + r8.y;
          r7.z = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(0, 0)).x;
          r7.z = r8.x + r7.z;
          r8.x = 0.25 * r7.z;
          r7.w = 1 / r7.w;
          r7.x = saturate(abs(r7.x) * r7.w);
          r7.w = r7.x * -2 + 3;
          r7.x = r7.x * r7.x;
          r7.x = r7.w * r7.x;
          r7.z = -r7.z * 0.25 + r7.y;
          r7.y = r7.x * r7.z + r8.x;
        }
      }
    }
    r7.x = -gShadowCsOffsetAndParam1[2].w + r1.w;
    r8.x = cmp(r7.x >= gShadowCsScaleAndSplit1[0].w);
    r8.y = cmp(r7.x >= gShadowCsScaleAndSplit1[1].w);
    r8.z = cmp(r7.x >= gShadowCsScaleAndSplit1[2].w);
    r8.w = cmp(r7.x >= gShadowCsScaleAndSplit1[3].w);
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r7.z = dot(float4(1,1,1,1), r8.xyzw);
    r7.z = min(3, r7.z);
    r7.w = (uint)r7.z;
    r8.x = cmp((uint)r7.w < (uint)gShadowCsOffsetAndParam1[3].w);
    if (r8.x != 0) {
      r8.xyzw = gShadowCsOffsetBiasScale1.xyzw * gShadowCsBias.zzzz;
      r9.xyzw = gShadowCsOffsetSlopeScale1.xyzw * gShadowCsBias.zzzz;
      if (r0.z != 0) {
        r10.xyz = gShadowCsOffsetAndParam1[r7.w].xyz + v9.xyz;
        r10.xy = gShadowCsScaleAndSplit1[r7.w].xy * r10.xy;
        r10.xy = saturate(r10.xy);
        r11.x = saturate(r10.x * gShadowCsOffsetAndParam1[1].w + gShadowCsOffsetAndParam[1].w);
        r7.z = gShadowCsOffsetAndParam1[0].w * r7.z;
        r11.y = saturate(r10.y * gShadowCsOffsetAndParam1[0].w + r7.z);
        r7.z = dot(r8.xyzw, icb[r7.w+0].xyzw);
        r8.x = dot(r9.xyzw, icb[r7.w+0].xyzw);
        r7.z = r8.x * abs(r0.y) + r7.z;
        r7.z = saturate(r10.z * gShadowCsScaleAndSplit1[r7.w].z + r7.z);
        r8.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(-1, -1)).x;
        r9.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(-1, 0)).x;
        r8.x = r9.x + r8.x;
        r9.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(0, -1)).x;
        r8.x = r9.x + r8.x;
        r7.z = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r7.z, int2(0, 0)).x;
        r7.z = r8.x + r7.z;
        r7.z = 0.25 * r7.z;
      } else {
        r7.z = 0;
      }
      r8.x = (int)r7.w + 1;
      r8.x = min(3, (uint)r8.x);
      r9.x = cmp((uint)r8.x < (uint)gShadowCsOffsetAndParam1[3].w);
      if (r9.x != 0) {
        r7.x = gShadowCsScaleAndSplit1[r7.w].w + -r7.x;
        r7.w = gShadowCsOffsetAndParam1[2].w + gShadowCsOffsetAndParam1[2].w;
        r9.x = cmp(r7.w >= abs(r7.x));
        if (r9.x != 0) {
          if (r0.z != 0) {
            r0.z = (uint)r8.x;
            r10.xyz = gShadowCsOffsetAndParam1[r8.x].xyz + v9.xyz;
            r10.xy = gShadowCsScaleAndSplit1[r8.x].xy * r10.xy;
            r10.xy = saturate(r10.xy);
            r11.x = saturate(r10.x * gShadowCsOffsetAndParam1[1].w + gShadowCsOffsetAndParam[1].w);
            r0.z = gShadowCsOffsetAndParam1[0].w * r0.z;
            r11.y = saturate(r10.y * gShadowCsOffsetAndParam1[0].w + r0.z);
            r0.z = (int)r8.x + -1;
            r8.y = dot(r8.yzw, icb[r0.z+0].xyz);
            r0.z = dot(r9.yzw, icb[r0.z+0].xyz);
            r0.y = r0.z * abs(r0.y) + r8.y;
            r0.y = saturate(r10.z * gShadowCsScaleAndSplit1[r8.x].z + r0.y);
            r0.z = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r0.y, int2(-1, -1)).x;
            r8.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r0.y, int2(-1, 0)).x;
            r0.z = r8.x + r0.z;
            r8.x = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r0.y, int2(0, -1)).x;
            r0.z = r8.x + r0.z;
            r0.y = gShadowSamplerDepth_Texture.SampleCmpLevelZero(gShadowSamplerDepth_SamplerState_s, r11.xy, r0.y, int2(0, 0)).x;
            r0.y = r0.z + r0.y;
            r0.z = 0.25 * r0.y;
            r7.w = 1 / r7.w;
            r7.x = saturate(abs(r7.x) * r7.w);
            r7.w = r7.x * -2 + 3;
            r7.x = r7.x * r7.x;
            r7.x = r7.w * r7.x;
            r0.y = -r0.y * 0.25 + r7.z;
            r7.z = r7.x * r0.y + r0.z;
          }
        }
      }
      r0.y = r7.y + r7.z;
      r7.y = min(1, r0.y);
    }
    r0.x = saturate(v1.w * r0.x);
    if (r0.w != 0) {
      r0.yzw = saturate(v10.xyz);
      r7.x = gSecondShadowSamplerDepth_Texture.SampleCmpLevelZero(gSecondShadowSamplerDepth_SamplerState_s, r0.yz, r0.w, int2(-1, -1)).x;
      r7.z = gSecondShadowSamplerDepth_Texture.SampleCmpLevelZero(gSecondShadowSamplerDepth_SamplerState_s, r0.yz, r0.w, int2(-1, 0)).x;
      r7.x = r7.x + r7.z;
      r7.z = gSecondShadowSamplerDepth_Texture.SampleCmpLevelZero(gSecondShadowSamplerDepth_SamplerState_s, r0.yz, r0.w, int2(0, -1)).x;
      r7.x = r7.x + r7.z;
      r0.y = gSecondShadowSamplerDepth_Texture.SampleCmpLevelZero(gSecondShadowSamplerDepth_SamplerState_s, r0.yz, r0.w, int2(0, 0)).x;
      r0.y = r7.x + r0.y;
      r0.y = 0.25 * r0.y;
      r7.y = max(r7.y, r0.y);
    }
    r0.yzw = r7.yyy * gShadowDensityFactor.xyz + gShadowDensityFactor.www;
    r0.x = r7.y * r0.x;
    r7.xyz = r0.xxx * gShadowDotDensityFactor.xyz + gShadowDotDensityFactor.www;
  } else {
    r0.yzw = float3(1,1,1);
    r7.xyz = float3(1,1,1);
  }
  r8.xy = float2(0.0625,0.0625) * v0.xy;
  r8.xy = floor(r8.xy);
  r0.x = r8.y * 120 + r8.x;
  r0.x = (uint)r0.x;
  r7.w = mad((int)r0.x, 516, 2);
  r8.x = dot(r4.xyz, -r2.xyz);
  r8.y = saturate(abs(r8.x) * gCCVelvetyRimParam.z + gCCVelvetyRimParam.w);
  r8.z = gCCSpecularColor.y * gCCSpecularColor.y;
  r8.z = 0.159999996 * r8.z;
  r9.xyz = saturate(r3.xyz * gCCSpecularColor.xxx + r8.zzz);
  r8.z = 1 + -gCCSpecularColor.x;
  r3.xyz = r8.zzz * r3.xyz;
  r8.z = dot(r4.xyz, gHemisphereVector.xyz);
  r10.xyz = r8.zzz * gAmbientColor[1].xyz + gAmbientColor[0].xyz;
  r8.z = -gCCSpecularColor.w * r5.w + 1;
  r8.w = r8.z * r8.z;
  r9.w = r8.w * r8.w;
  r10.w = r8.w * r8.w + -1;
  r8.w = 0.5 * r8.w;
  r11.x = r8.w * r8.w;
  r8.w = -r8.w * r8.w + 1;
  r11.yzw = float3(1,1,1) + -r9.xyz;
  r12.xyz = r10.xyz;
  r13.xyz = float3(0,0,0);
  r12.w = 0;
  while (true) {
    r13.w = cmp((int)r12.w >= 3);
    if (r13.w != 0) break;
    tempLightDir = gLightDirection[r12.w];
    r13.w = dot(tempLightDir.xyz, r4.xyz);
    r14.x = saturate(r13.w);
    r14.y = cmp(0 < r13.w);
    if (r14.y != 0) {
      tempLightColor = gLightColorDir[r12.w];
      r14.yzw = tempLightColor.xyz * r0.yzw;
      r15.xyz = tempLightColor.xyz * r7.xyz;
      r14.yzw = r12.www ? r15.xyz : r14.yzw;
      r15.x = tempLightColor.w * gCCSpecularColor.z;
      r15.y = 0.318310142 * r14.x;
      r12.xyz = r15.yyy * r14.yzw + r12.xyz;
      r15.yzw = tempLightDir.xyz + -r2.xyz;
      r16.x = dot(r15.yzw, r15.yzw);
      r16.x = rsqrt(r16.x);
      r15.yzw = r16.xxx * r15.yzw;
      r16.x = saturate(dot(tempLightDir.xyz, r15.yzw));
      r15.y = saturate(dot(r15.yzw, r4.xyz));
      r15.y = r15.y * r15.y;
      r15.y = r15.y * r10.w + 1;
      r15.y = r15.y * r15.y;
      r15.y = r15.y * 3.14159012 + 9.99999975e-006;
      r15.y = r9.w / r15.y;
      r15.z = 1 + -r16.x;
      r15.w = r15.z * r15.z;
      r15.w = r15.w * r15.w;
      r15.z = r15.w * r15.z;
      r15.w = r16.x * r16.x;
      r15.w = r15.w * r8.w + r11.x;
      r15.w = rcp(r15.w);
      r15.z = r15.z * r15.w;
      r16.xyz = r15.zzz * r11.yzw;
      r16.xyz = r9.xyz * r15.www + r16.xyz;
      r15.x = r15.x * r14.x;
      r15.x = r15.x * r15.y;
      r15.xyz = r15.xxx * r16.xyz;
      r14.yzw = r15.xyz * r14.yzw + r13.xyz;
      r13.xyz = max(float3(0,0,0), r14.yzw);
    }
    r14.y = saturate(r13.w * gCCVelvetyRimParam.x + gCCVelvetyRimParam.y);
    r14.x = r14.y + -r14.x;
    r14.xyz = tempLightColor.xyz * r14.xxx;
    r14.xyz = r14.xyz * gCCVelvetyColor.xyz + r12.xyz;
    r14.w = saturate(dot(tempLightDir.xyz, r2.xyz));
    r13.w = 1 + -r13.w;
    r13.w = saturate(0.5 * r13.w);
    r13.w = r14.w * r13.w;
    r13.w = r13.w * r8.y;
    r15.xyz = tempLightColor.xyz * r13.www;
    r12.xyz = r15.xyz * gCCRimColor.xyz + r14.xyz;
    r12.w = (int)r12.w + 1;
  }
  r0.y = gPointLightListIndices.Load(r7.w).x;
  r0.z = (int)r7.w + 2;
  r10.xyz = r12.xyz;
  r14.xyz = r13.xyz;
  r0.w = 0;
  while (true) {
    r8.y = cmp((uint)r0.w >= (uint)r0.y);
    if (r8.y != 0) break;
    r8.y = (int)r0.z + (int)r0.w;
    r8.y = gPointLightListIndices.Load(r8.y).x;
    r15.x = gPointLightList[r8.y].position.x;
    r15.y = gPointLightList[r8.y].position.y;
    r15.z = gPointLightList[r8.y].position.z;
    r15.w = gPointLightList[r8.y].position.w;
    r16.x = gPointLightList[r8.y].color.x;
    r16.y = gPointLightList[r8.y].color.y;
    r16.z = gPointLightList[r8.y].color.z;
    r16.w = gPointLightList[r8.y].color.w;
    r15.xyz = r15.xyz + -r1.xyz;
    r8.y = dot(r15.xyz, r15.xyz);
    r12.w = rsqrt(r8.y);
    r17.xyz = r15.xyz * r12.www;
    r8.y = -r8.y * r12.w + r15.w;
    r8.y = saturate(r8.y * r16.w);
    r8.y = r8.y * r8.y;
    r16.xyz = r16.xyz * r8.yyy;
    r8.y = dot(r17.xyz, r4.xyz);
    r13.w = saturate(r8.y);
    r8.y = cmp(0 < r8.y);
    r14.w = 0.318310142 * r13.w;
    r18.xyz = r14.www * r16.xyz + r10.xyz;
    r15.xyz = r15.xyz * r12.www + -r2.xyz;
    r12.w = dot(r15.xyz, r15.xyz);
    r12.w = rsqrt(r12.w);
    r15.xyz = r15.xyz * r12.www;
    r12.w = saturate(dot(r17.xyz, r15.xyz));
    r14.w = saturate(dot(r15.xyz, r4.xyz));
    r14.w = r14.w * r14.w;
    r14.w = r14.w * r10.w + 1;
    r14.w = r14.w * r14.w;
    r14.w = r14.w * 3.14159012 + 9.99999975e-006;
    r14.w = r9.w / r14.w;
    r15.x = 1 + -r12.w;
    r15.y = r15.x * r15.x;
    r15.y = r15.y * r15.y;
    r15.x = r15.y * r15.x;
    r12.w = r12.w * r12.w;
    r12.w = r12.w * r8.w + r11.x;
    r12.w = rcp(r12.w);
    r15.x = r15.x * r12.w;
    r15.xyz = r15.xxx * r11.yzw;
    r15.xyz = r9.xyz * r12.www + r15.xyz;
    r12.w = gCCSpecularColor.z * r13.w;
    r12.w = r12.w * r14.w;
    r15.xyz = r12.www * r15.xyz;
    r15.xyz = r15.xyz * r16.xyz + r14.xyz;
    r15.xyz = max(float3(0,0,0), r15.xyz);
    r10.xyz = r8.yyy ? r18.xyz : r10.xyz;
    r14.xyz = r8.yyy ? r15.xyz : r14.xyz;
    r0.w = (int)r0.w + 1;
  }
  r0.y = gSpotLightListIndices.Load(r7.w).x;
  r12.xyz = r10.xyz;
  r13.xyz = r14.xyz;
  r0.w = 0;
  while (true) {
    r7.w = cmp((uint)r0.w >= (uint)r0.y);
    if (r7.w != 0) break;
    r7.w = (int)r0.z + (int)r0.w;
    r7.w = gSpotLightListIndices.Load(r7.w).x;
    r15.x = gSpotLightList[r7.w].position.x;
    r15.y = gSpotLightList[r7.w].position.y;
    r15.z = gSpotLightList[r7.w].position.z;
    r15.w = gSpotLightList[r7.w].position.w;
    r16.x = gSpotLightList[r7.w].direction.x;
    r16.y = gSpotLightList[r7.w].direction.y;
    r16.z = gSpotLightList[r7.w].direction.z;
    r17.x = gSpotLightList[r7.w].color.x;
    r17.y = gSpotLightList[r7.w].color.y;
    r17.z = gSpotLightList[r7.w].color.z;
    r17.w = gSpotLightList[r7.w].color.w;
    r18.x = gSpotLightList[r7.w].attenuation.x;
    r18.y = gSpotLightList[r7.w].attenuation.y;
    r15.xyz = r15.xyz + -r1.xyz;
    r7.w = dot(r15.xyz, r15.xyz);
    r8.y = rsqrt(r7.w);
    r19.xyz = r15.xyz * r8.yyy;
    r12.w = dot(r19.xyz, r16.xyz);
    r12.w = r12.w + -r18.x;
    r12.w = saturate(r12.w * r18.y);
    r12.w = r12.w * r12.w;
    r7.w = -r7.w * r8.y + r15.w;
    r7.w = saturate(r7.w * r17.w);
    r7.w = r7.w * r7.w;
    r7.w = r7.w * r12.w;
    r16.xyz = r17.xyz * r7.www;
    r7.w = dot(r19.xyz, r4.xyz);
    r12.w = saturate(r7.w);
    r7.w = cmp(0 < r7.w);
    r13.w = 0.318310142 * r12.w;
    r17.xyz = r13.www * r16.xyz + r12.xyz;
    r15.xyz = r15.xyz * r8.yyy + -r2.xyz;
    r8.y = dot(r15.xyz, r15.xyz);
    r8.y = rsqrt(r8.y);
    r15.xyz = r15.xyz * r8.yyy;
    r8.y = saturate(dot(r19.xyz, r15.xyz));
    r13.w = saturate(dot(r15.xyz, r4.xyz));
    r13.w = r13.w * r13.w;
    r13.w = r13.w * r10.w + 1;
    r13.w = r13.w * r13.w;
    r13.w = r13.w * 3.14159012 + 9.99999975e-006;
    r13.w = r9.w / r13.w;
    r14.w = 1 + -r8.y;
    r15.x = r14.w * r14.w;
    r15.x = r15.x * r15.x;
    r14.w = r15.x * r14.w;
    r8.y = r8.y * r8.y;
    r8.y = r8.y * r8.w + r11.x;
    r8.y = rcp(r8.y);
    r14.w = r14.w * r8.y;
    r15.xyz = r14.www * r11.yzw;
    r15.xyz = r9.xyz * r8.yyy + r15.xyz;
    r8.y = gCCSpecularColor.z * r12.w;
    r8.y = r8.y * r13.w;
    r15.xyz = r8.yyy * r15.xyz;
    r15.xyz = r15.xyz * r16.xyz + r13.xyz;
    r15.xyz = max(float3(0,0,0), r15.xyz);
    r12.xyz = r7.www ? r17.xyz : r12.xyz;
    r13.xyz = r7.www ? r15.xyz : r13.xyz;
    r0.w = (int)r0.w + 1;
  }
  r0.z = cmp(0 < gCCIDandFresnel.w);
  if (r0.z != 0) {
    r0.x = mad((int)r0.x, 516, 3);
    r0.z = gSpotLightListIndices.Load(r0.x).x;
    r0.x = (int)r0.x + (int)r0.y;
    r0.x = (int)r0.x + 1;
    r10.xyz = r12.xyz;
    r14.xyz = r13.xyz;
    r0.y = 0;
    while (true) {
      r0.w = cmp((uint)r0.y >= (uint)r0.z);
      if (r0.w != 0) break;
      r0.w = (int)r0.x + (int)r0.y;
      r0.w = gSpotLightListIndices.Load(r0.w).x;
      r15.x = gSpotLightList[r0.w].position.x;
      r15.y = gSpotLightList[r0.w].position.y;
      r15.z = gSpotLightList[r0.w].position.z;
      r15.w = gSpotLightList[r0.w].position.w;
      r16.x = gSpotLightList[r0.w].direction.x;
      r16.y = gSpotLightList[r0.w].direction.y;
      r16.z = gSpotLightList[r0.w].direction.z;
      r17.x = gSpotLightList[r0.w].color.x;
      r17.y = gSpotLightList[r0.w].color.y;
      r17.z = gSpotLightList[r0.w].color.z;
      r17.w = gSpotLightList[r0.w].color.w;
      r18.x = gSpotLightList[r0.w].attenuation.x;
      r18.y = gSpotLightList[r0.w].attenuation.y;
      r15.xyz = r15.xyz + -r1.xyz;
      r0.w = dot(r15.xyz, r15.xyz);
      r7.w = rsqrt(r0.w);
      r19.xyz = r15.xyz * r7.www;
      r8.y = dot(r19.xyz, r16.xyz);
      r8.y = r8.y + -r18.x;
      r8.y = saturate(r8.y * r18.y);
      r8.y = r8.y * r8.y;
      r0.w = -r0.w * r7.w + r15.w;
      r0.w = saturate(r0.w * r17.w);
      r0.w = r0.w * r0.w;
      r0.w = r0.w * r8.y;
      r16.xyz = r17.xyz * r0.www;
      r0.w = dot(r19.xyz, r4.xyz);
      r8.y = saturate(r0.w);
      r0.w = cmp(0 < r0.w);
      r12.w = 0.318310142 * r8.y;
      r17.xyz = r12.www * r16.xyz + r10.xyz;
      r15.xyz = r15.xyz * r7.www + -r2.xyz;
      r7.w = dot(r15.xyz, r15.xyz);
      r7.w = rsqrt(r7.w);
      r15.xyz = r15.xyz * r7.www;
      r7.w = saturate(dot(r19.xyz, r15.xyz));
      r12.w = saturate(dot(r15.xyz, r4.xyz));
      r12.w = r12.w * r12.w;
      r12.w = r12.w * r10.w + 1;
      r12.w = r12.w * r12.w;
      r12.w = r12.w * 3.14159012 + 9.99999975e-006;
      r12.w = r9.w / r12.w;
      r13.w = 1 + -r7.w;
      r14.w = r13.w * r13.w;
      r14.w = r14.w * r14.w;
      r13.w = r14.w * r13.w;
      r7.w = r7.w * r7.w;
      r7.w = r7.w * r8.w + r11.x;
      r7.w = rcp(r7.w);
      r13.w = r13.w * r7.w;
      r15.xyz = r13.www * r11.yzw;
      r15.xyz = r9.xyz * r7.www + r15.xyz;
      r7.w = gCCSpecularColor.z * r8.y;
      r7.w = r7.w * r12.w;
      r15.xyz = r7.www * r15.xyz;
      r15.xyz = r15.xyz * r16.xyz + r14.xyz;
      r15.xyz = max(float3(0,0,0), r15.xyz);
      r10.xyz = r0.www ? r17.xyz : r10.xyz;
      r14.xyz = r0.www ? r15.xyz : r14.xyz;
      r0.y = (int)r0.y + 1;
    }
    r12.xyz = r10.xyz;
    r13.xyz = r14.xyz;
  }
  r4.w = -r4.z;
  r0.xyz = gIblDiffuseSampler_Texture.Sample(gIblDiffuseSampler_SamplerState_s, r4.xyw).xyz;
  r0.xyz = gIblDiffuseColor.xyz * r0.xyz;
  r0.w = saturate(gCCSpecularColor.w * r5.w + gCCSpecularColor.y);
  r8.x = saturate(r8.x);
  r1.x = 6 * r8.z;
  r6.w = -r6.z;
  r1.xyz = gIblSpecularLowSampler_Texture.SampleLevel(gIblSpecularLowSampler_SamplerState_s, r6.xyw, r1.x).xyz;
  r4.x = 1 + -r8.x;
  r4.y = r4.x * r4.x;
  r4.y = r4.y * r4.y;
  r4.x = r4.y * r4.x;
  r4.yzw = r0.www + -r9.xyz;
  r4.xyz = r4.xxx * r4.yzw + r9.xyz;
  r1.xyz = r4.xyz * r1.xyz;
  r1.xyz = r1.xyz * gIblSpecularColor.xyz + v1.xyz;
  r0.xyz = r0.xyz * r7.xyz + r12.xyz;
  r1.xyz = r1.xyz * r7.xyz + r13.xyz;
  r0.xyz = r0.xyz * r3.xyz;
  r1.xyz = r1.xyz * r5.xyz;
  r0.xyz = r0.xyz * v2.xyz + r1.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.w = gCCLScatterHighFreq.y + r2.w;
  r1.xyz = gLScatterOutTmp.xyz * r0.www;
  r1.xyz = exp2(r1.xyz);
  r3.xyz = float3(-1,-1,-1) + r1.xyz;
  r3.xyz = gCCLScatterHighFreq.xxx * r3.xyz + float3(1,1,1);
  r0.w = dot(gLScatterSunDir.xyz, r2.xyz);
  r2.x = r0.w * r0.w + 1;
  r0.w = gLScatterMieTmp.w * r0.w + gLScatterRayTmp.w;
  r2.y = r0.w * r0.w;
  r0.w = r2.y * r0.w;
  r0.w = sqrt(r0.w);
  r2.yzw = gLScatterMieTmp.xyz / r0.www;
  r2.xyz = gLScatterRayTmp.xyz * r2.xxx + r2.yzw;
  r1.xyz = float3(1,1,1) + -r1.xyz;
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = gLScatterSunColor.xyz * r1.xyz;
  r1.xyz = gLightScatterEnable ? r1.xyz : float3(0,0,0);
  r2.xyz = gLightScatterEnable ? r3.xyz : float3(1,1,1);
  r3.xy = gLightScatterEnable ? gFogDensity.xy : float2(0,0);
  r4.xy = -gFogDistance.xy + r1.ww;
  r4.xy = saturate(gFogDistance.zw * r4.xy);
  r0.w = dot(r4.xy, r3.xy);
  r3.xyz = gFogFarMiddle.xyz * r4.yyy + gFogMiddle.xyz;
  r1.w = 1 + -r0.w;
  r3.xyz = r3.xyz * r0.www;
  r4.xy = gLightScatterEnable ? gHeightFogDensity.xy : float2(0,0);
  r4.zw = -gHeightFogDistance.xy + v7.ww;
  r4.zw = saturate(gHeightFogDistance.zw * r4.zw);
  r0.w = dot(r4.zw, r4.xy);
  r4.xyz = gHeightFogFarMiddle.xyz * r4.www + gHeightFogMiddle.xyz;
  r2.w = 1 + -r0.w;
  r4.xyz = r4.xyz * r0.www;
  r2.xyz = r2.xyz * r2.www;
  r2.xyz = r2.xyz * r1.www;
  r1.xyz = r1.xyz * r2.www + r4.xyz;
  r1.xyz = r1.xyz * r1.www + r3.xyz;
  o0.xyz = r0.xyz * r2.xyz + r1.xyz;
  r0.x = gCCHDRRate.w * r3.w + gCCHDRRate.y;
  r0.y = cmp(gCCMaterialParam2.x != 0.000000);
  o0.w = r0.y ? r3.w : r0.x;
  return;
}

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//   using 3Dmigoto v1.3.14 on Sun Jan 13 01:43:30 2019
//
//
// Buffer Definitions:
//
// cbuffer bool_register_block
// {
//
//   bool gLightScatterEnable;          // Offset:    0 Size:     4
//   bool gFogEnable;                   // Offset:    4 Size:     4
//   int2 bool_register_block_padding;  // Offset:    8 Size:     8 [unused]
//
// }
//
// cbuffer ps_default_cb
// {
//
//   float4 gHDRRate;                   // Offset:    0 Size:    16
//   float4 gAlphaParam;                // Offset:   16 Size:    16 [unused]
//   float4 gTexBlendAlpha[2];          // Offset:   32 Size:    32 [unused]
//   float4 gTexBlendScaleBias[2];      // Offset:   64 Size:    32 [unused]
//   float4 gNormalTexBlendAlpha;       // Offset:   96 Size:    16 [unused]
//   float4 gNormalTexBlendScaleBias;   // Offset:  112 Size:    16 [unused]
//   float4 gShadowCsBias;              // Offset:  128 Size:    16
//   float4 gIDandFresnel;              // Offset:  144 Size:    16
//   float4 gReflectionColor;           // Offset:  160 Size:    16 [unused]
//   float4 gReflectionVisibilityParam; // Offset:  176 Size:    16 [unused]
//   float4 gEyePosition;               // Offset:  192 Size:    16
//   float4 gEyePlane;                  // Offset:  208 Size:    16
//   float4 gIblDiffuseColor;           // Offset:  224 Size:    16
//   float4 gIblSpecularColor;          // Offset:  240 Size:    16
//   float4 gVelvetyRimParam;           // Offset:  256 Size:    16
//   float4 gSpecularColor;             // Offset:  272 Size:    16
//   float4 gSpecularVisibilityParam;   // Offset:  288 Size:    16 [unused]
//   float4 gVelvetyColor;              // Offset:  304 Size:    16
//   float4 gRimColor;                  // Offset:  320 Size:    16
//   float4 gLScatterHighFreq;          // Offset:  336 Size:    16
//   float4 gMaterialMulColor;          // Offset:  352 Size:    16
//   float4 gMaterialAddColor;          // Offset:  368 Size:    16
//   float4 gMaterialParam;             // Offset:  384 Size:    16
//   float4 gMaterialParam2;            // Offset:  400 Size:    16
//
// }
//
// cbuffer ps_light_cb
// {
//
//   float4 gAmbientColor[2];           // Offset:    0 Size:    32
//   float4 gHemisphereVector;          // Offset:   32 Size:    16
//   row_major float3x4 gLightDirection;// Offset:   48 Size:    48
//   row_major float3x4 gLightColorDir; // Offset:   96 Size:    48
//   float4 gLightColorPoint[4];        // Offset:  144 Size:    64 [unused]
//   float4 gLightPosition[4];          // Offset:  208 Size:    64 [unused]
//
// }
//
// cbuffer ps_scene_shadow_cb
// {
//
//   float4 gShadowDensityFactor;       // Offset:    0 Size:    16
//   float4 gShadowDotDensityFactor;    // Offset:   16 Size:    16
//   float4 gShadowDistanceFadeParam;   // Offset:   32 Size:    16 [unused]
//   float4 gShadowMethodParam[2];      // Offset:   48 Size:    32 [unused]
//   float4 gShadowCsScaleAndSplit[4];  // Offset:   80 Size:    64
//   float4 gShadowCsOffsetAndParam[4]; // Offset:  144 Size:    64
//   float4 gShadowCsOffsetBiasScale;   // Offset:  208 Size:    16
//   float4 gShadowCsOffsetSlopeScale;  // Offset:  224 Size:    16
//   float4 gShadowCsScaleAndSplit1[4]; // Offset:  240 Size:    64
//   float4 gShadowCsOffsetAndParam1[4];// Offset:  304 Size:    64
//   float4 gShadowCsOffsetBiasScale1;  // Offset:  368 Size:    16
//   float4 gShadowCsOffsetSlopeScale1; // Offset:  384 Size:    16
//   float4 gShadowCsVector;            // Offset:  400 Size:    16
//
// }
//
// cbuffer ps_scene_fog_cb
// {
//
//   float4 gFogMiddle;                 // Offset:    0 Size:    16
//   float4 gFogFarMiddle;              // Offset:   16 Size:    16
//   float4 gFogDistance;               // Offset:   32 Size:    16
//   float4 gFogDensity;                // Offset:   48 Size:    16
//   float4 gHeightFogMiddle;           // Offset:   64 Size:    16
//   float4 gHeightFogFarMiddle;        // Offset:   80 Size:    16
//   float4 gHeightFogDistance;         // Offset:   96 Size:    16
//   float4 gHeightFogDensity;          // Offset:  112 Size:    16
//   float4 gLScatterSunColor;          // Offset:  128 Size:    16
//   float4 gLScatterSunDir;            // Offset:  144 Size:    16
//   float4 gLScatterOutTmp;            // Offset:  160 Size:    16
//   float4 gLScatterRayTmp;            // Offset:  176 Size:    16
//   float4 gLScatterMieTmp;            // Offset:  192 Size:    16
//
// }
//
// Resource bind info for gPointLightList
// {
//
//   struct PointLight
//   {
//
//       float4 position;               // Offset:    0
//       float4 color;                  // Offset:   16
//
//   } $Element;                        // Offset:    0 Size:    32
//
// }
//
// Resource bind info for gSpotLightList
// {
//
//   struct SpotLight
//   {
//
//       float4 position;               // Offset:    0
//       float4 direction;              // Offset:   16
//       float4 color;                  // Offset:   32
//       float4 attenuation;            // Offset:   48
//
//   } $Element;                        // Offset:    0 Size:    64
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
// gSecondShadowSamplerDepth_SamplerState  sampler_c      NA          NA    7        1
// gIblDiffuseSampler_SamplerState    sampler      NA          NA    8        1
// gIblSpecularLowSampler_SamplerState    sampler      NA          NA    9        1
// gShadowSamplerDepth_SamplerState  sampler_c      NA          NA   11        1
// gTextureSampler0_Texture          texture  float4          2d    0        1
// gTextureSampler1_Texture          texture  float4          2d    1        1
// gTextureSampler2_Texture          texture  float4          2d    2        1
// gSecondShadowSamplerDepth_Texture    texture  float4          2d    7        1
// gIblDiffuseSampler_Texture        texture  float4        cube    8        1
// gIblSpecularLowSampler_Texture    texture  float4        cube    9        1
// gShadowSamplerDepth_Texture       texture  float4          2d   11        1
// gPointLightList                   texture  struct         r/o   16        1
// gSpotLightList                    texture  struct         r/o   17        1
// gPointLightListIndices            texture    uint         buf   18        1
// gSpotLightListIndices             texture    uint         buf   19        1
// bool_register_block               cbuffer      NA          NA    1        1
// ps_default_cb                     cbuffer      NA          NA    2        1
// ps_scene_shadow_cb                cbuffer      NA          NA    3        1
// ps_scene_fog_cb                   cbuffer      NA          NA    4        1
// ps_light_cb                       cbuffer      NA          NA    6        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xy
// COLOR                    1   xyzw        1     NONE   float   xyzw
// COLOR                    0   xyz         2     NONE   float   xyz
// TEXCOORD                 0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 1   xyzw        4     NONE   float   xy
// TEXCOORD                 2   xyzw        5     NONE   float
// TEXCOORD                 3   xyzw        6     NONE   float   xyzw
// TEXCOORD                 4   xyzw        7     NONE   float   xyzw
// TEXCOORD                 5   xyzw        8     NONE   float   xyzw
// TEXCOORD                 7   xyzw        9     NONE   float   xyz
// VS_TO_FS_SECOND_SDWCOORD_SEMANTICS     0   xyzw       10     NONE   float   xyz
// SV_IsFrontFace           0   x          11    FFACE    uint   x
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 1.000000, 0, 0, 0},
                              { 0, 1.000000, 0, 0},
                              { 0, 0, 1.000000, 0},
                              { 0, 0, 0, 1.000000} }
dcl_constantbuffer cb1[1], immediateIndexed
dcl_constantbuffer cb2[26], immediateIndexed
dcl_constantbuffer cb6[9], dynamicIndexed
dcl_constantbuffer cb3[26], dynamicIndexed
dcl_constantbuffer cb4[13], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s7, mode_comparison
dcl_sampler s8, mode_default
dcl_sampler s9, mode_default
dcl_sampler s11, mode_comparison
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texturecube (float,float,float,float) t8
dcl_resource_texturecube (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_structured t16, 32
dcl_resource_structured t17, 64
dcl_resource_buffer (uint,uint,uint,uint) t18
dcl_resource_buffer (uint,uint,uint,uint) t19
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear centroid v1.xyzw
dcl_input_ps linear centroid v2.xyz
dcl_input_ps linear centroid v3.xyzw
dcl_input_ps linear centroid v4.xy
dcl_input_ps linear centroid v6.xyzw
dcl_input_ps linear centroid v7.xyzw
dcl_input_ps linear centroid v8.xyzw
dcl_input_ps linear centroid v9.xyz
dcl_input_ps linear v10.xyz
dcl_input_ps_sgv v11.x, is_front_face
dcl_output o0.xyzw
dcl_temps 20
movc r0.x, v11.x, l(1.000000), l(-1.000000)
mul r0.yzw, r0.xxxx, v8.xxyz
mov r1.x, v6.w
mov r1.y, v7.w
mov r1.z, v8.w
add r2.xyz, r1.xyzx, -cb2[12].xyzx
dp3 r2.w, r2.xyzx, r2.xyzx
sqrt r2.w, r2.w
div r2.xyz, r2.xyzx, r2.wwww
mov r1.w, l(1.000000)
dp4 r1.w, cb2[13].xyzw, r1.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v3.xyxx, t0.xyzw, s0
ne r4.x, cb2[24].z, l(0.000000)
deriv_rtx_coarse r4.yz, v3.xxyx
deriv_rty_coarse r5.xy, v3.xyxx
dp2 r4.y, r4.yzyy, r4.yzyy
dp2 r4.z, r5.xyxx, r5.xyxx
max r4.y, r4.z, r4.y
log r4.y, r4.y
mul r4.y, r4.y, l(0.500000)
max r4.y, r4.y, l(0.000000)
mad r4.y, r4.y, l(0.250000), l(1.000000)
mul r4.z, r3.w, r4.y
mad r4.y, r3.w, r4.y, -cb2[24].w
deriv_rtx_coarse r4.w, r4.z
deriv_rty_coarse r4.z, r4.z
add r4.z, |r4.z|, |r4.w|
max r4.z, r4.z, l(0.000100)
div r4.y, r4.y, r4.z
add r4.y, r4.y, l(0.500000)
movc r3.w, r4.x, r4.y, r3.w
mad r3.xyz, r3.xyzx, cb2[22].xyzx, cb2[23].xyzx
add_sat r3.w, r3.w, cb2[0].z
add r4.x, cb2[0].y, l(1.000000)
mul r3.xyz, r3.xyzx, r4.xxxx
sample_indexable(texture2d)(float,float,float,float) r4.xyz, v3.zwzz, t1.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, v4.xyxx, t2.xyzw, s2
mad r4.xyz, r4.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r6.xyz, r4.yyyy, v7.xyzx
mad r4.xyw, r4.xxxx, v6.xyxz, r6.xyxz
mad r4.xyz, r4.zzzz, r0.yzwy, r4.xywx
dp3 r4.w, r4.xyzx, r4.xyzx
rsq r4.w, r4.w
mul r4.xyz, r4.wwww, r4.xyzx
dp3 r6.x, r2.xyzx, r4.xyzx
add r6.x, r6.x, r6.x
mad r6.xyz, r4.xyzx, -r6.xxxx, r2.xyzx
ge r7.x, cb3[8].w, r1.w
if_nz r7.x
  dp3 r7.x, r0.yzwy, r0.yzwy
  rsq r7.x, r7.x
  mul r0.yzw, r0.yyzw, r7.xxxx
  add r7.x, r1.w, -cb3[11].w
  mul r8.xyzw, cb2[8].zzzz, cb3[13].xyzw
  mul r9.xyzw, cb2[8].zzzz, cb3[14].xyzw
  ge r10.x, r7.x, cb3[5].w
  ge r10.y, r7.x, cb3[6].w
  ge r10.z, r7.x, cb3[7].w
  ge r10.w, r7.x, cb3[8].w
  and r10.xyzw, r10.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  dp4 r7.y, l(1.000000, 1.000000, 1.000000, 1.000000), r10.xyzw
  min r7.y, r7.y, l(3.000000)
  ftou r7.z, r7.y
  dp3 r0.y, r0.yzwy, cb3[25].xyzx
  ne r0.zw, cb2[24].yyyx, l(0.000000, 0.000000, 0.000000, 0.000000)
  if_nz r0.z
    add r10.xyz, v9.xyzx, cb3[r7.z + 9].xyzx
    mul r10.xy, r10.xyxx, cb3[r7.z + 5].xyxx
    mov_sat r10.xy, r10.xyxx
    mul_sat r11.x, r10.x, cb3[10].w
    mul r7.y, r7.y, cb3[9].w
    mad_sat r11.y, r10.y, cb3[9].w, r7.y
    dp4 r7.y, r8.xyzw, icb[r7.z + 0].xyzw
    dp4 r7.w, r9.xyzw, icb[r7.z + 0].xyzw
    mad r7.y, r7.w, |r0.y|, r7.y
    mad_sat r7.y, r10.z, cb3[r7.z + 5].z, r7.y
    sample_c_lz_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r7.w, r11.xyxx, t11.xxxx, s11, r7.y
    sample_c_lz_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r8.x, r11.xyxx, t11.xxxx, s11, r7.y
    add r7.w, r7.w, r8.x
    sample_c_lz_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r8.x, r11.xyxx, t11.xxxx, s11, r7.y
    add r7.w, r7.w, r8.x
    sample_c_lz_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r7.y, r11.xyxx, t11.xxxx, s11, r7.y
    add r7.y, r7.y, r7.w
    mul r7.y, r7.y, l(0.250000)
  else
    mov r7.y, l(0)
  endif
  ult r7.w, r7.z, cb3[12].w
  if_nz r7.w
    add r7.x, -r7.x, cb3[r7.z + 5].w
    add r7.w, cb3[11].w, cb3[11].w
    ge r8.x, r7.w, |r7.x|
    if_nz r8.x
      if_nz r0.z
        iadd r7.z, r7.z, l(1)
        umin r7.z, r7.z, l(3)
        utof r8.x, r7.z
        add r10.xyz, v9.xyzx, cb3[r7.z + 9].xyzx
        mul r10.xy, r10.xyxx, cb3[r7.z + 5].xyxx
        mov_sat r10.xy, r10.xyxx
        mul_sat r11.x, r10.x, cb3[10].w
        mul r8.x, r8.x, cb3[9].w
        mad_sat r11.y, r10.y, cb3[9].w, r8.x
        iadd r8.x, r7.z, l(-1)
        dp3 r8.y, r8.yzwy, icb[r8.x + 0].xyzx
        dp3 r8.x, r9.yzwy, icb[r8.x + 0].xyzx
        mad r8.x, r8.x, |r0.y|, r8.y
        mad_sat r7.z, r10.z, cb3[r7.z + 5].z, r8.x
        sample_c_lz_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r8.x, r11.xyxx, t11.xxxx, s11, r7.z
        sample_c_lz_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r8.y, r11.xyxx, t11.xxxx, s11, r7.z
        add r8.x, r8.y, r8.x
        sample_c_lz_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r8.y, r11.xyxx, t11.xxxx, s11, r7.z
        add r8.x, r8.y, r8.x
        sample_c_lz_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r7.z, r11.xyxx, t11.xxxx, s11, r7.z
        add r7.z, r7.z, r8.x
        mul r8.x, r7.z, l(0.250000)
        div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w
        mul_sat r7.x, r7.w, |r7.x|
        mad r7.w, r7.x, l(-2.000000), l(3.000000)
        mul r7.x, r7.x, r7.x
        mul r7.x, r7.x, r7.w
        mad r7.z, -r7.z, l(0.250000), r7.y
        mad r7.y, r7.x, r7.z, r8.x
      endif
    endif
  endif
  add r7.x, r1.w, -cb3[21].w
  ge r8.x, r7.x, cb3[15].w
  ge r8.y, r7.x, cb3[16].w
  ge r8.z, r7.x, cb3[17].w
  ge r8.w, r7.x, cb3[18].w
  and r8.xyzw, r8.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  dp4 r7.z, l(1.000000, 1.000000, 1.000000, 1.000000), r8.xyzw
  min r7.z, r7.z, l(3.000000)
  ftou r7.w, r7.z
  ult r8.x, r7.w, cb3[22].w
  if_nz r8.x
    mul r8.xyzw, cb2[8].zzzz, cb3[23].xyzw
    mul r9.xyzw, cb2[8].zzzz, cb3[24].xyzw
    if_nz r0.z
      add r10.xyz, v9.xyzx, cb3[r7.w + 19].xyzx
      mul r10.xy, r10.xyxx, cb3[r7.w + 15].xyxx
      mov_sat r10.xy, r10.xyxx
      mad_sat r11.x, r10.x, cb3[20].w, cb3[10].w
      mul r7.z, r7.z, cb3[19].w
      mad_sat r11.y, r10.y, cb3[19].w, r7.z
      dp4 r7.z, r8.xyzw, icb[r7.w + 0].xyzw
      dp4 r8.x, r9.xyzw, icb[r7.w + 0].xyzw
      mad r7.z, r8.x, |r0.y|, r7.z
      mad_sat r7.z, r10.z, cb3[r7.w + 15].z, r7.z
      sample_c_lz_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r8.x, r11.xyxx, t11.xxxx, s11, r7.z
      sample_c_lz_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r9.x, r11.xyxx, t11.xxxx, s11, r7.z
      add r8.x, r8.x, r9.x
      sample_c_lz_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r9.x, r11.xyxx, t11.xxxx, s11, r7.z
      add r8.x, r8.x, r9.x
      sample_c_lz_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r7.z, r11.xyxx, t11.xxxx, s11, r7.z
      add r7.z, r7.z, r8.x
      mul r7.z, r7.z, l(0.250000)
    else
      mov r7.z, l(0)
    endif
    iadd r8.x, r7.w, l(1)
    umin r8.x, r8.x, l(3)
    ult r9.x, r8.x, cb3[22].w
    if_nz r9.x
      add r7.x, -r7.x, cb3[r7.w + 15].w
      add r7.w, cb3[21].w, cb3[21].w
      ge r9.x, r7.w, |r7.x|
      if_nz r9.x
        if_nz r0.z
          utof r0.z, r8.x
          add r10.xyz, v9.xyzx, cb3[r8.x + 19].xyzx
          mul r10.xy, r10.xyxx, cb3[r8.x + 15].xyxx
          mov_sat r10.xy, r10.xyxx
          mad_sat r11.x, r10.x, cb3[20].w, cb3[10].w
          mul r0.z, r0.z, cb3[19].w
          mad_sat r11.y, r10.y, cb3[19].w, r0.z
          iadd r0.z, r8.x, l(-1)
          dp3 r8.y, r8.yzwy, icb[r0.z + 0].xyzx
          dp3 r0.z, r9.yzwy, icb[r0.z + 0].xyzx
          mad r0.y, r0.z, |r0.y|, r8.y
          mad_sat r0.y, r10.z, cb3[r8.x + 15].z, r0.y
          sample_c_lz_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r0.z, r11.xyxx, t11.xxxx, s11, r0.y
          sample_c_lz_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r8.x, r11.xyxx, t11.xxxx, s11, r0.y
          add r0.z, r0.z, r8.x
          sample_c_lz_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r8.x, r11.xyxx, t11.xxxx, s11, r0.y
          add r0.z, r0.z, r8.x
          sample_c_lz_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r0.y, r11.xyxx, t11.xxxx, s11, r0.y
          add r0.y, r0.y, r0.z
          mul r0.z, r0.y, l(0.250000)
          div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w
          mul_sat r7.x, r7.w, |r7.x|
          mad r7.w, r7.x, l(-2.000000), l(3.000000)
          mul r7.x, r7.x, r7.x
          mul r7.x, r7.x, r7.w
          mad r0.y, -r0.y, l(0.250000), r7.z
          mad r7.z, r7.x, r0.y, r0.z
        endif
      endif
    endif
    add r0.y, r7.z, r7.y
    min r7.y, r0.y, l(1.000000)
  endif
  mul_sat r0.x, r0.x, v1.w
  if_nz r0.w
    mov_sat r0.yzw, v10.xxyz
    sample_c_lz_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r7.x, r0.yzyy, t7.xxxx, s7, r0.w
    sample_c_lz_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r7.z, r0.yzyy, t7.xxxx, s7, r0.w
    add r7.x, r7.z, r7.x
    sample_c_lz_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r7.z, r0.yzyy, t7.xxxx, s7, r0.w
    add r7.x, r7.z, r7.x
    sample_c_lz_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r0.y, r0.yzyy, t7.xxxx, s7, r0.w
    add r0.y, r0.y, r7.x
    mul r0.y, r0.y, l(0.250000)
    max r7.y, r0.y, r7.y
  endif
  mad r0.yzw, r7.yyyy, cb3[0].xxyz, cb3[0].wwww
  mul r0.x, r0.x, r7.y
  mad r7.xyz, r0.xxxx, cb3[1].xyzx, cb3[1].wwww
else
  mov r0.yzw, l(0,1.000000,1.000000,1.000000)
  mov r7.xyz, l(1.000000,1.000000,1.000000,0)
endif
mul r8.xy, v0.xyxx, l(0.062500, 0.062500, 0.000000, 0.000000)
round_ni r8.xy, r8.xyxx
mad r0.x, r8.y, l(120.000000), r8.x
ftou r0.x, r0.x
imad r7.w, r0.x, l(516), l(2)
dp3 r8.x, r4.xyzx, -r2.xyzx
mad_sat r8.y, |r8.x|, cb2[16].z, cb2[16].w
mul r8.z, cb2[17].y, cb2[17].y
mul r8.z, r8.z, l(0.160000)
mad_sat r9.xyz, r3.xyzx, cb2[17].xxxx, r8.zzzz
add r8.z, -cb2[17].x, l(1.000000)
mul r3.xyz, r3.xyzx, r8.zzzz
dp3 r8.z, r4.xyzx, cb6[2].xyzx
mad r10.xyz, r8.zzzz, cb6[1].xyzx, cb6[0].xyzx
mad r8.z, -cb2[17].w, r5.w, l(1.000000)
mul r8.w, r8.z, r8.z
mul r9.w, r8.w, r8.w
mad r10.w, r8.w, r8.w, l(-1.000000)
mul r8.w, r8.w, l(0.500000)
mul r11.x, r8.w, r8.w
mad r8.w, -r8.w, r8.w, l(1.000000)
add r11.yzw, -r9.xxyz, l(0.000000, 1.000000, 1.000000, 1.000000)
mov r12.xyz, r10.xyzx
mov r13.xyz, l(0,0,0,0)
mov r12.w, l(0)
loop
  ige r13.w, r12.w, l(3)
  breakc_nz r13.w
  dp3 r13.w, cb6[r12.w + 3].xyzx, r4.xyzx
  mov_sat r14.x, r13.w
  lt r14.y, l(0.000000), r13.w
  if_nz r14.y
    mul r14.yzw, r0.yyzw, cb6[r12.w + 6].xxyz
    mul r15.xyz, r7.xyzx, cb6[r12.w + 6].xyzx
    movc r14.yzw, r12.wwww, r15.xxyz, r14.yyzw
    mul r15.x, cb2[17].z, cb6[r12.w + 6].w
    mul r15.y, r14.x, l(0.318310142)
    mad r12.xyz, r15.yyyy, r14.yzwy, r12.xyzx
    add r15.yzw, -r2.xxyz, cb6[r12.w + 3].xxyz
    dp3 r16.x, r15.yzwy, r15.yzwy
    rsq r16.x, r16.x
    mul r15.yzw, r15.yyzw, r16.xxxx
    dp3_sat r16.x, cb6[r12.w + 3].xyzx, r15.yzwy
    dp3_sat r15.y, r15.yzwy, r4.xyzx
    mul r15.y, r15.y, r15.y
    mad r15.y, r15.y, r10.w, l(1.000000)
    mul r15.y, r15.y, r15.y
    mad r15.y, r15.y, l(3.141590), l(0.000010)
    div r15.y, r9.w, r15.y
    add r15.z, -r16.x, l(1.000000)
    mul r15.w, r15.z, r15.z
    mul r15.w, r15.w, r15.w
    mul r15.z, r15.z, r15.w
    mul r15.w, r16.x, r16.x
    mad r15.w, r15.w, r8.w, r11.x
    rcp r15.w, r15.w
    mul r15.z, r15.w, r15.z
    mul r16.xyz, r11.yzwy, r15.zzzz
    mad r16.xyz, r9.xyzx, r15.wwww, r16.xyzx
    mul r15.x, r14.x, r15.x
    mul r15.x, r15.y, r15.x
    mul r15.xyz, r16.xyzx, r15.xxxx
    mad r14.yzw, r15.xxyz, r14.yyzw, r13.xxyz
    max r13.xyz, r14.yzwy, l(0.000000, 0.000000, 0.000000, 0.000000)
  endif
  mad_sat r14.y, r13.w, cb2[16].x, cb2[16].y
  add r14.x, -r14.x, r14.y
  mul r14.xyz, r14.xxxx, cb6[r12.w + 6].xyzx
  mad r14.xyz, r14.xyzx, cb2[19].xyzx, r12.xyzx
  dp3_sat r14.w, cb6[r12.w + 3].xyzx, r2.xyzx
  add r13.w, -r13.w, l(1.000000)
  mul_sat r13.w, r13.w, l(0.500000)
  mul r13.w, r13.w, r14.w
  mul r13.w, r8.y, r13.w
  mul r15.xyz, r13.wwww, cb6[r12.w + 6].xyzx
  mad r12.xyz, r15.xyzx, cb2[20].xyzx, r14.xyzx
  iadd r12.w, r12.w, l(1)
endloop
ld_indexable(buffer)(uint,uint,uint,uint) r0.y, r7.wwww, t18.yxzw
iadd r0.z, r7.w, l(2)
mov r10.xyz, r12.xyzx
mov r14.xyz, r13.xyzx
mov r0.w, l(0)
loop
  uge r8.y, r0.w, r0.y
  breakc_nz r8.y
  iadd r8.y, r0.z, r0.w
  ld_indexable(buffer)(uint,uint,uint,uint) r8.y, r8.yyyy, t18.yxzw
  ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r15.xyzw, r8.y, l(0), t16.xyzw
  ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r16.xyzw, r8.y, l(16), t16.xyzw
  add r15.xyz, -r1.xyzx, r15.xyzx
  dp3 r8.y, r15.xyzx, r15.xyzx
  rsq r12.w, r8.y
  mul r17.xyz, r12.wwww, r15.xyzx
  mad r8.y, -r8.y, r12.w, r15.w
  mul_sat r8.y, r16.w, r8.y
  mul r8.y, r8.y, r8.y
  mul r16.xyz, r8.yyyy, r16.xyzx
  dp3 r8.y, r17.xyzx, r4.xyzx
  mov_sat r13.w, r8.y
  lt r8.y, l(0.000000), r8.y
  mul r14.w, r13.w, l(0.318310142)
  mad r18.xyz, r14.wwww, r16.xyzx, r10.xyzx
  mad r15.xyz, r15.xyzx, r12.wwww, -r2.xyzx
  dp3 r12.w, r15.xyzx, r15.xyzx
  rsq r12.w, r12.w
  mul r15.xyz, r12.wwww, r15.xyzx
  dp3_sat r12.w, r17.xyzx, r15.xyzx
  dp3_sat r14.w, r15.xyzx, r4.xyzx
  mul r14.w, r14.w, r14.w
  mad r14.w, r14.w, r10.w, l(1.000000)
  mul r14.w, r14.w, r14.w
  mad r14.w, r14.w, l(3.141590), l(0.000010)
  div r14.w, r9.w, r14.w
  add r15.x, -r12.w, l(1.000000)
  mul r15.y, r15.x, r15.x
  mul r15.y, r15.y, r15.y
  mul r15.x, r15.x, r15.y
  mul r12.w, r12.w, r12.w
  mad r12.w, r12.w, r8.w, r11.x
  rcp r12.w, r12.w
  mul r15.x, r12.w, r15.x
  mul r15.xyz, r11.yzwy, r15.xxxx
  mad r15.xyz, r9.xyzx, r12.wwww, r15.xyzx
  mul r12.w, r13.w, cb2[17].z
  mul r12.w, r14.w, r12.w
  mul r15.xyz, r15.xyzx, r12.wwww
  mad r15.xyz, r15.xyzx, r16.xyzx, r14.xyzx
  max r15.xyz, r15.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  movc r10.xyz, r8.yyyy, r18.xyzx, r10.xyzx
  movc r14.xyz, r8.yyyy, r15.xyzx, r14.xyzx
  iadd r0.w, r0.w, l(1)
endloop
ld_indexable(buffer)(uint,uint,uint,uint) r0.y, r7.wwww, t19.yxzw
mov r12.xyz, r10.xyzx
mov r13.xyz, r14.xyzx
mov r0.w, l(0)
loop
  uge r7.w, r0.w, r0.y
  breakc_nz r7.w
  iadd r7.w, r0.z, r0.w
  ld_indexable(buffer)(uint,uint,uint,uint) r7.w, r7.wwww, t19.yzwx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r15.xyzw, r7.w, l(0), t17.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r16.xyz, r7.w, l(16), t17.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r17.xyzw, r7.w, l(32), t17.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r18.xy, r7.w, l(48), t17.xyxx
  add r15.xyz, -r1.xyzx, r15.xyzx
  dp3 r7.w, r15.xyzx, r15.xyzx
  rsq r8.y, r7.w
  mul r19.xyz, r8.yyyy, r15.xyzx
  dp3 r12.w, r19.xyzx, r16.xyzx
  add r12.w, -r18.x, r12.w
  mul_sat r12.w, r18.y, r12.w
  mul r12.w, r12.w, r12.w
  mad r7.w, -r7.w, r8.y, r15.w
  mul_sat r7.w, r17.w, r7.w
  mul r7.w, r7.w, r7.w
  mul r7.w, r12.w, r7.w
  mul r16.xyz, r7.wwww, r17.xyzx
  dp3 r7.w, r19.xyzx, r4.xyzx
  mov_sat r12.w, r7.w
  lt r7.w, l(0.000000), r7.w
  mul r13.w, r12.w, l(0.318310142)
  mad r17.xyz, r13.wwww, r16.xyzx, r12.xyzx
  mad r15.xyz, r15.xyzx, r8.yyyy, -r2.xyzx
  dp3 r8.y, r15.xyzx, r15.xyzx
  rsq r8.y, r8.y
  mul r15.xyz, r8.yyyy, r15.xyzx
  dp3_sat r8.y, r19.xyzx, r15.xyzx
  dp3_sat r13.w, r15.xyzx, r4.xyzx
  mul r13.w, r13.w, r13.w
  mad r13.w, r13.w, r10.w, l(1.000000)
  mul r13.w, r13.w, r13.w
  mad r13.w, r13.w, l(3.141590), l(0.000010)
  div r13.w, r9.w, r13.w
  add r14.w, -r8.y, l(1.000000)
  mul r15.x, r14.w, r14.w
  mul r15.x, r15.x, r15.x
  mul r14.w, r14.w, r15.x
  mul r8.y, r8.y, r8.y
  mad r8.y, r8.y, r8.w, r11.x
  rcp r8.y, r8.y
  mul r14.w, r8.y, r14.w
  mul r15.xyz, r11.yzwy, r14.wwww
  mad r15.xyz, r9.xyzx, r8.yyyy, r15.xyzx
  mul r8.y, r12.w, cb2[17].z
  mul r8.y, r13.w, r8.y
  mul r15.xyz, r15.xyzx, r8.yyyy
  mad r15.xyz, r15.xyzx, r16.xyzx, r13.xyzx
  max r15.xyz, r15.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  movc r12.xyz, r7.wwww, r17.xyzx, r12.xyzx
  movc r13.xyz, r7.wwww, r15.xyzx, r13.xyzx
  iadd r0.w, r0.w, l(1)
endloop
lt r0.z, l(0.000000), cb2[9].w
if_nz r0.z
  imad r0.x, r0.x, l(516), l(3)
  ld_indexable(buffer)(uint,uint,uint,uint) r0.z, r0.xxxx, t19.yzxw
  iadd r0.x, r0.x, r0.y
  iadd r0.x, r0.x, l(1)
  mov r10.xyz, r12.xyzx
  mov r14.xyz, r13.xyzx
  mov r0.y, l(0)
  loop
    uge r0.w, r0.y, r0.z
    breakc_nz r0.w
    iadd r0.w, r0.x, r0.y
    ld_indexable(buffer)(uint,uint,uint,uint) r0.w, r0.wwww, t19.yzwx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r15.xyzw, r0.w, l(0), t17.xyzw
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r16.xyz, r0.w, l(16), t17.xyzx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r17.xyzw, r0.w, l(32), t17.xyzw
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r18.xy, r0.w, l(48), t17.xyxx
    add r15.xyz, -r1.xyzx, r15.xyzx
    dp3 r0.w, r15.xyzx, r15.xyzx
    rsq r7.w, r0.w
    mul r19.xyz, r7.wwww, r15.xyzx
    dp3 r8.y, r19.xyzx, r16.xyzx
    add r8.y, -r18.x, r8.y
    mul_sat r8.y, r18.y, r8.y
    mul r8.y, r8.y, r8.y
    mad r0.w, -r0.w, r7.w, r15.w
    mul_sat r0.w, r17.w, r0.w
    mul r0.w, r0.w, r0.w
    mul r0.w, r8.y, r0.w
    mul r16.xyz, r0.wwww, r17.xyzx
    dp3 r0.w, r19.xyzx, r4.xyzx
    mov_sat r8.y, r0.w
    lt r0.w, l(0.000000), r0.w
    mul r12.w, r8.y, l(0.318310142)
    mad r17.xyz, r12.wwww, r16.xyzx, r10.xyzx
    mad r15.xyz, r15.xyzx, r7.wwww, -r2.xyzx
    dp3 r7.w, r15.xyzx, r15.xyzx
    rsq r7.w, r7.w
    mul r15.xyz, r7.wwww, r15.xyzx
    dp3_sat r7.w, r19.xyzx, r15.xyzx
    dp3_sat r12.w, r15.xyzx, r4.xyzx
    mul r12.w, r12.w, r12.w
    mad r12.w, r12.w, r10.w, l(1.000000)
    mul r12.w, r12.w, r12.w
    mad r12.w, r12.w, l(3.141590), l(0.000010)
    div r12.w, r9.w, r12.w
    add r13.w, -r7.w, l(1.000000)
    mul r14.w, r13.w, r13.w
    mul r14.w, r14.w, r14.w
    mul r13.w, r13.w, r14.w
    mul r7.w, r7.w, r7.w
    mad r7.w, r7.w, r8.w, r11.x
    rcp r7.w, r7.w
    mul r13.w, r7.w, r13.w
    mul r15.xyz, r11.yzwy, r13.wwww
    mad r15.xyz, r9.xyzx, r7.wwww, r15.xyzx
    mul r7.w, r8.y, cb2[17].z
    mul r7.w, r12.w, r7.w
    mul r15.xyz, r15.xyzx, r7.wwww
    mad r15.xyz, r15.xyzx, r16.xyzx, r14.xyzx
    max r15.xyz, r15.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
    movc r10.xyz, r0.wwww, r17.xyzx, r10.xyzx
    movc r14.xyz, r0.wwww, r15.xyzx, r14.xyzx
    iadd r0.y, r0.y, l(1)
  endloop
  mov r12.xyz, r10.xyzx
  mov r13.xyz, r14.xyzx
endif
mov r4.w, -r4.z
sample_indexable(texturecube)(float,float,float,float) r0.xyz, r4.xywx, t8.xyzw, s8
mul r0.xyz, r0.xyzx, cb2[14].xyzx
mad_sat r0.w, cb2[17].w, r5.w, cb2[17].y
mov_sat r8.x, r8.x
mul r1.x, r8.z, l(6.000000)
mov r6.w, -r6.z
sample_l_indexable(texturecube)(float,float,float,float) r1.xyz, r6.xywx, t9.xyzw, s9, r1.x
add r4.x, -r8.x, l(1.000000)
mul r4.y, r4.x, r4.x
mul r4.y, r4.y, r4.y
mul r4.x, r4.x, r4.y
add r4.yzw, -r9.xxyz, r0.wwww
mad r4.xyz, r4.xxxx, r4.yzwy, r9.xyzx
mul r1.xyz, r1.xyzx, r4.xyzx
mad r1.xyz, r1.xyzx, cb2[15].xyzx, v1.xyzx
mad r0.xyz, r0.xyzx, r7.xyzx, r12.xyzx
mad r1.xyz, r1.xyzx, r7.xyzx, r13.xyzx
mul r0.xyz, r3.xyzx, r0.xyzx
mul r1.xyz, r5.xyzx, r1.xyzx
mad r0.xyz, r0.xyzx, v2.xyzx, r1.xyzx
max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
add r0.w, r2.w, cb2[21].y
mul r1.xyz, r0.wwww, cb4[10].xyzx
exp r1.xyz, r1.xyzx
add r3.xyz, r1.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r3.xyz, cb2[21].xxxx, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
dp3 r0.w, cb4[9].xyzx, r2.xyzx
mad r2.x, r0.w, r0.w, l(1.000000)
mad r0.w, cb4[12].w, r0.w, cb4[11].w
mul r2.y, r0.w, r0.w
mul r0.w, r0.w, r2.y
sqrt r0.w, r0.w
div r2.yzw, cb4[12].xxyz, r0.wwww
mad r2.xyz, cb4[11].xyzx, r2.xxxx, r2.yzwy
add r1.xyz, -r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.xyz, r1.xyzx, r2.xyzx
mul r1.xyz, r1.xyzx, cb4[8].xyzx
movc r1.xyz, cb1[0].xxxx, r1.xyzx, l(0,0,0,0)
movc r2.xyz, cb1[0].xxxx, r3.xyzx, l(1.000000,1.000000,1.000000,0)
movc r3.xy, cb1[0].yyyy, cb4[3].xyxx, l(0,0,0,0)
add r4.xy, r1.wwww, -cb4[2].xyxx
mul_sat r4.xy, r4.xyxx, cb4[2].zwzz
dp2 r0.w, r4.xyxx, r3.xyxx
mad r3.xyz, cb4[1].xyzx, r4.yyyy, cb4[0].xyzx
add r1.w, -r0.w, l(1.000000)
mul r3.xyz, r0.wwww, r3.xyzx
movc r4.xy, cb1[0].yyyy, cb4[7].xyxx, l(0,0,0,0)
add r4.zw, v7.wwww, -cb4[6].xxxy
mul_sat r4.zw, r4.zzzw, cb4[6].zzzw
dp2 r0.w, r4.zwzz, r4.xyxx
mad r4.xyz, cb4[5].xyzx, r4.wwww, cb4[4].xyzx
add r2.w, -r0.w, l(1.000000)
mul r4.xyz, r0.wwww, r4.xyzx
mul r2.xyz, r2.wwww, r2.xyzx
mul r2.xyz, r1.wwww, r2.xyzx
mad r1.xyz, r1.xyzx, r2.wwww, r4.xyzx
mad r1.xyz, r1.xyzx, r1.wwww, r3.xyzx
mad o0.xyz, r0.xyzx, r2.xyzx, r1.xyzx
mad r0.x, cb2[0].w, r3.w, cb2[0].y
ne r0.y, cb2[25].x, l(0.000000)
movc o0.w, r0.y, r3.w, r0.x
ret
// Approximately 549 instruction slots used

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
