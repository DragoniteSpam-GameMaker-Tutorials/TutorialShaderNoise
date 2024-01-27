varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float random(vec2 value) {
    //return fract(sin(value.x * 129.898 + value.y * 78.233) * 43758.5453);
    //return fract(sin(value.x * 86.1340446 + value.y * 38.40795681) * 9517.106333);
    vec2 coefficients = vec2(0.861340446, 0.3840795681);
    return fract(sin(dot(value, coefficients)) * 9517.106333);
}

void main()
{
    gl_FragColor.rgb = vec3(random(gl_FragCoord.xy));
    gl_FragColor.a = 1.0;
}
