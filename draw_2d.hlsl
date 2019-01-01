Texture1D<float4> IniParams : register(t120);

#define amplify (IniParams[7].w ? IniParams[7].w : 1)
#define flip IniParams[7].z

struct vs2ps {
	float4 pos : SV_Position0;
	float2 uv : TEXCOORD1;
};

#ifdef VERTEX_SHADER
void main(
		out vs2ps output,
		uint vertex : SV_VertexID)
{
	// Not using vertex buffers so manufacture our own coordinates.
	switch(vertex) {
		case 0:
			output.pos.xy = float2(IniParams[5].x, IniParams[5].y);
			output.uv = float2(0,1);
			break;
		case 1:
			output.pos.xy = float2(IniParams[5].x, IniParams[6].y);
			output.uv = float2(0,0);
			break;
		case 2:
			output.pos.xy = float2(IniParams[6].x, IniParams[5].y);
			output.uv = float2(1,1);
			break;
		case 3:
			output.pos.xy = float2(IniParams[6].x, IniParams[6].y);
			output.uv = float2(1,0);
			break;
		default:
			output.pos.xy = 0;
			output.uv = float2(0,0);
			break;
	};
	output.pos.zw = float2(0, 1);
	//output.uv = output.pos.xy * float2(0.5,-0.5) + 0.5;
}
#endif

#ifdef PIXEL_SHADER
Texture2D<float4> tex : register(t100);

void main(vs2ps input, out float4 result : SV_Target0)
{
	uint width, height;
	tex.GetDimensions(width, height);
	if (!width || !height)
		discard;

	if (flip)
		input.uv.y = 1 - input.uv.y;

	result = tex.Load(int3(input.uv.xy * float2(width, height), 0)) * amplify;
}
#endif
