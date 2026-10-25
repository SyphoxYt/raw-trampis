#version 120

varying vec2 TexCoords;

uniform sampler2D screen;
uniform vec2 screenSize;
uniform bool fast;
uniform bool first;
uniform float radius;

void main() {
    float scaledRadius = radius * screenSize.y * 0.5;
    vec2 texOffset = 1.0 / screenSize; // gets size of single texel
    vec2 direction = first ? vec2(texOffset.x, 0.0) : vec2(0.0, texOffset.y); // blur direction

    vec3 result = texture2D(screen, TexCoords).rgb;
    float weightSum = 1.0;

    if (fast) {
        float fastScale = radius * 10.0 / ((radius * 10.0 + 1.0) * (radius * 10.0 + 1.0) - 1.0);
        scaledRadius *= fastScale;

        // Pair neighbouring samples. The source texture uses linear filtering,
        // so one interpolated lookup represents the same weighted pair while
        // roughly halving texture reads in the full-screen blur pass.
        for (int i = 1; i < 64; i += 2) {
           if (float(i) >= scaledRadius) break;

           float firstWeight = 1.0 - float(i) / scaledRadius;
           float secondWeight = 1.0 - float(i + 1) / scaledRadius;
           if (firstWeight <= 0.0) break;

           float combinedWeight = firstWeight;
           float sampleDistance = float(i);
           if (secondWeight > 0.0) {
              combinedWeight += secondWeight;
              sampleDistance += secondWeight / combinedWeight;
           }

           vec2 offset = direction * sampleDistance;
           result += texture2D(screen, TexCoords + offset).rgb * combinedWeight;
           result += texture2D(screen, TexCoords - offset).rgb * combinedWeight;
           weightSum += 2.0 * combinedWeight;
        }
    } else {
        float firstWeight = 0.84089642 / pow(scaledRadius, 0.96);
        result *= firstWeight;
        weightSum = firstWeight;

        for (int i = 1; i < 64; i++) {
           float dist = float(i);
           if (dist > scaledRadius) break;

           float weight = firstWeight * exp(-dist * dist / (2.0 * scaledRadius));
           vec2 offset = direction * dist;

           result += texture2D(screen, TexCoords + offset).rgb * weight;
           result += texture2D(screen, TexCoords - offset).rgb * weight;
           weightSum += 2.0 * weight;
        }
    }

    result /= weightSum;
    gl_FragColor = vec4(result, 1.0);
}
