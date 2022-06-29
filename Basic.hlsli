cbuffer ConstBufferDataTransform : register(b1)
{
	matrix mat;
}


struct VSOutput
{
	float4 svpos :SV_POSITION;
	float3 normal:NORMAL;
	float2 uv  : TEXCOORD;
};