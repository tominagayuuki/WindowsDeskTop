#include "Basic.hlsli"

Texture2D<float4> tex : register(t0);  	// 0�ԃX���b�g�ɐݒ肳�ꂽ�e�N�X�`��
SamplerState smp : register(s0);      	// 0�ԃX���b�g�ɐݒ肳�ꂽ�T���v���[

float4 main(VSOutput input) : SV_TARGET{
    /* return float4(1,1,1,1);*/

     float4 color = {1,1,1,1};
     float3 light = normalize(float3(1,-1,1));
    /* float brightness = dot(-light, input.normal);*/
     float diffuse = saturate(dot(-light, input.normal));
     float brightness = diffuse + 0.3f;
     float4 texcolor = float4(tex.Sample(smp, input.uv));
     return float4(texcolor.rgb*brightness, texcolor.a)*color;

}