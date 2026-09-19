# Co Lau Hoa Lu — initial 2D assets

Generated with built-in ImageGen. Stylized game art, not a historical reconstruction.

- images/hoa_lu_meadow.png: 1536 x 1024 map, display at 3:2.
- images/bamboo.png: 1145 x 1374 transparent environment prop.
- images/reed_leader.png: 1024 x 1536 transparent character concept retained as reference.
- images/reed_leader_sheet.png: 1536 x 1024 transparent atlas, 4 columns x 2 rows. Each cell 384 x 512. Top row idle at 0.24 seconds/frame; bottom row walk at 0.14 seconds/frame.

PlayerComponent consumes the atlas directly. This first pass faces down for all movement directions. Rivers and bamboo have no collision yet.

## Generation prompts

### player

Use case: stylized-concept. Asset type: single transparent PNG sprite for a top-down 2D Flutter Flame Vietnamese history inspired game, Co Lau Hoa Lu. Create ONE full-body young village leader holding a small reed plume staff, muted brick-red simple cloth tunic, dark trousers, black tied hair, straw sash. Charming hand-painted 2D game art, bold readable silhouette, restrained moss green ochre brick red palette, orthographic three-quarter top-down view facing downward toward camera. Centered character fills 80 percent image height, entire feet and reed visible, equal empty padding, truly transparent alpha background. No scenery, no ground plane, no text, no watermark, no frame, no multiple poses. Stylized fictional game design, not a historical reconstruction.

### terrain

Use case: stylized-concept. Asset type: landscape background map for top-down 2D Vietnamese village adventure game Co Lau Hoa Lu. Create a single 1536x1024 landscape hand-painted 2D game map, orthographic top-down camera, entirely ground with NO horizon. Muted moss and sage green grassy clearing covering most of the map, ochre winding footpath across center, narrow calm blue stream along right fifth with one rustic wooden footbridge at mid-height. Small reeds, pebbles and patches of grass near edges, central 60 percent spacious and walkable. Charming readable painterly strategy-game aesthetic with crisp shapes and subtle texture, warm daylight. No people, no buildings, no large trees, no UI, no text, no labels, no frame. Opaque full-bleed image.

### tree

Use case: stylized-concept. Asset type: single transparent PNG environment prop for a top-down 2D Vietnamese village game Co Lau Hoa Lu. ONE compact cluster of bamboo, several slim ochre-green trunks and lush moss-green leaf canopy, hand-painted 2D game sprite, orthographic three-quarter top-down view matching a charming adventure map, crisp readable silhouette and subtle texture, muted sage moss ochre palette, warm daylight. Center the complete bamboo cluster filling 80 percent image height with generous empty padding; show trunk bases. Genuinely transparent alpha background. No landscape, no ground tile, no characters, no text, no watermark, no borders, no multiple objects or sprite sheet.

### animation

Use case: stylized-concept. Create production 2D GAME SPRITE SHEET with EXACTLY 8 frames in a strict 4 columns by 2 rows grid on a 1536x1024 PNG canvas with true transparent alpha background. Each cell EXACTLY 384x512 pixels. No visible grid, labels, ground, shadow, glow, text or background. All eight frames show the SAME full-body small chibi Vietnamese village boy adventurer with black hair bun, brick-red cloth tunic, dark trousers, straw belt, holding a short reed plume staff. Hand-painted game style with clean simplified shapes readable at 64px, sage/ochre/brick palette. Orthographic three-quarter view facing DOWN toward viewer, consistent face and outfit, no rotation. The character is centered at x=192 inside every cell, feet baseline y=456 in every cell, top of reed y=60, all content safely inside each cell with transparent margins. Top row frames 1-4: idle breathing cycle, only very slight chest and reed movement, feet planted. Bottom row frames 1-4: WALK CYCLE, left foot forward/right back; feet passing; right foot forward/left back; feet passing. Arms and reed move gently in counterbalance. Precise repeatable alignment, identical character proportions and scale in EVERY cell, no extra characters. This is an animation atlas to be cut automatically into 8 equal rectangles, not an illustration or character lineup.

