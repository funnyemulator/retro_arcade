�GSN    ���w��Sq6=Z==h��Z�q!�1u���5%�����(�6��$�tx�oL<32�PYM:pj���Rj��p���*�-D�~t�}��ΰ�lՌ��l&�Dl�u�?�|"�хEj��@{#%��q�<�V7��퉗~�	V��>/������z����,���T��T|�𙾛nCl*��r8�1)������"��V����jM>�������2`�5xpv��݁��9iS����]�L{ 4[~������9y��G��tn�wKE�X����Ɛc�}��e0𣂅;~�L�T�s��^Ja��#�n?�B8������Io�9���r�e�cP�|��q"i�̂k�$�Y��ܟ,�<=�iB����J���%$,���0e�T�����оB��d�.���=��XR<H��"Ӫ;���9���4u��a�[4M?��𗟏a���@����l���F:U���ʡ}^d0�CQ��r�8R Ϛ���[RAX_SPLIT_COUNT
#define MAX_SPLIT_COUNT 3
#endif

// light position
uniform vec4 u_lightPosition;
// light direction
unif�rm vec4 u_lightDirection;
// light color
uniform vec4 u_lightColor;
// light info : type ,shadow split count
uniform vec4 ulightInfo;
// light view projections
uniform mat4 u_lightSpaceMatries[MAX_SPLIT_COUNT];
// shadow viewports (for split in on� texture)
uniform mat4 u_shadowViewports[MAX_SPLIT_COUNT];
// shadow splits
uniform vec4 u_shadowSplits;
// direction lightZcascaded
uniform vec4 u_lightShadowCascaded;
// cascaded viewport for shadow pass write
uniform vec4 u_cascadedViewport;

c
#if defined(SKINNING)
uniform vec4 u_matrixPalette[180];
#if !defined(SKINNING_JOINT_COUNT)
#define SKINNING_JOINT_COUNT 60�
#endif
#endif

#if defined GPU_SKINNING
uniform vec4 u_matrixPalette[2];
#endif


/// Fragment shader uniform

unifom vec4 u_sceneHemisphericColor[3];
uniform vec4 u_ambientColor;

uniform vec4 u_matDiffColor;
uniform vec4 u_matEmissiveCol�r;
uniform vec4 u_matEnvMapColor;
uniform vec4 u_matSpecColor;

#ifdef PBR
uniform vec4 cRoughness;
uniform vec4 cMetalli�;
uniform vec4 cLightRad;
uniform vec4 cLightLength;
#endif
