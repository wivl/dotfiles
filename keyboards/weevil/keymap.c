// this is the style you want to emulate.
// This is the canonical layout file for the Quantum project. If you want to add another keyboard,

#include QMK_KEYBOARD_H

// Each layer gets a name for readability, which is then used in the keymap matrix below.
// The underscores don't mean anything - you can have a layer called STUFF or any other name.
// Layer names don't all need to be of the same length, obviously, and you can also skip them
// entirely and just use numbers.

// enum ferris_layers {
//   _QWERTY,
//   _LOWER,
//   _RAISE
// };

#define _QWERTY 0
#define _SYMBOL 1
#define _EXT 2

enum ferris_tap_dances {
  TD_Q_ESC
};

// #define KC_CTSC RCTL_T(KC_SCLN)
// #define KC_CTLA LCTL_T(KC_A)
// #define KC_LSHZ LSFT_T(KC_Z)
// #define KC_RLSH RSFT_T(KC_SLSH)
// #define KC_SPM2 LT(2, KC_SPC)
// #define KC_BSM1 LT(1, KC_BSPC)
// #define KC_GUTA GUI_T(KC_TAB)
// #define KC_CLGV CTL_T(KC_GRV)

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  /*
  
 | Q | W | E | R | T |       | Y | U | I | O | P |
 | A | S | D | F | G |       | H | J | K | L | ; |
 | Z | X | C | V | B |       | N | M | , | . | : |
      | EXT | BACKSPACE | | SPACE | SYMBOL |
  */
  [_QWERTY] = LAYOUT( /* QWERTY */
    KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,            KC_Y,    KC_U,  KC_I,    KC_O,   KC_P,
    KC_A,    KC_S,    KC_D,    KC_F,    KC_G,            KC_H,    KC_J,  KC_K,    KC_L,   KC_SCLN,
    KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,            KC_N,    KC_M,  KC_COMM, KC_DOT, KC_COLN,
                                    MO(_EXT), KC_LSFT, KC_SPC, MO(_SYMBOL)
  ),

  /*
  
 | 1 | 2 | 3 | 4 | 5 |       | 6 | 7 | 8 | 9 | 0 |
 | < | % | ( | { | [ |       | = | ? | ' | + | * |
 | > | $ | ) | } | ] |       | @ | ! | " | - | / |
      | EXT | BACKSPACE | | SPACE | SYMBOL |
  */
  [_SYMBOL] = LAYOUT( /* [> LOWER <] */
    KC_1,    KC_2,    KC_3,    KC_4,    KC_5,            KC_6,    KC_7,    KC_8,    KC_9,    KC_0,
    KC_LABK, KC_PERC, KC_LPRN, KC_LCBR, KC_LBRC,         KC_EQL , KC_QUES, KC_QUOT,   KC_PLUS, KC_ASTR,
    KC_RABK, KC_DLR , KC_RPRN, KC_RCBR, KC_RBRC,         KC_AT, KC_EXLM, KC_DQUO, KC_MINS, KC_SLSH,
                                    _______, KC_LCMD, _______, _______
  ),

  /*
  
 | ESC |   |   |   |   |           | ` | # | & | \ |   |
 | TAB |   |   |   |   |           | ~ | ^ | _ | | |   |
 | CAP | CTL | OPT |   |   |       |   |   |   |   |   |
      | EXT | BSP |           | SPC | SYM |
  */
  [_EXT] = LAYOUT( /* [> RAISE <] */
    KC_ESC,  _______, _______, _______, _______,         KC_GESC, KC_HASH, KC_AMPR, KC_BSLS, _______,
    KC_TAB,  _______, _______, _______, _______,         KC_TILD, KC_CIRC, KC_UNDS, KC_PIPE, _______,
    KC_CAPS, KC_LCTL, KC_LOPT, _______, _______,         _______, _______, _______, _______, _______,
                                    _______, _______, KC_BSPC, KC_ENT
  )
};

// Tap Dance Definitions
qk_tap_dance_action_t tap_dance_actions[] = {
    // Tap once for Q, twice for ESC
    [TD_Q_ESC] = ACTION_TAP_DANCE_DOUBLE(KC_Q, KC_ESC)
};
