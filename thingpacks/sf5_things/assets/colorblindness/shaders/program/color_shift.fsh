#version 150

uniform sampler2D DiffuseSampler;

in vec2 texCoord;
in vec2 oneTexel;

out vec4 fragColor;

uniform vec3 RedMatrix;
uniform vec3 GreenMatrix;
uniform vec3 BlueMatrix;

void main() {
    vec4 InTexel = texture(DiffuseSampler, texCoord);

    // Color Matrix
    float RedValue = dot(InTexel.rgb, RedMatrix);
    float GreenValue = dot(InTexel.rgb, GreenMatrix);
    float BlueValue = dot(InTexel.rgb, BlueMatrix);
    vec3 OutColor = vec3(RedValue, GreenValue, BlueValue);

    fragColor = vec4(OutColor, 1.0);
}
