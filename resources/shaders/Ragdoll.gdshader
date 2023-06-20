shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;
uniform vec4 body_color : source_color = vec4(1);

void fragment() {
	COLOR.rgb = body_color.rgb;
	COLOR.a = texture(SCREEN_TEXTURE, SCREEN_UV).a;
}