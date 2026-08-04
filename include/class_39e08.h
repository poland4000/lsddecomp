#ifndef CLASS_39E08_H
#define CLASS_39E08_H

#include "common.h"

/*
 * class_39e08 — 3D Rendering Engine
 *
 * Three classes identified in this module:
 *   1. RenderController (vtable D_800865C8) — top-level coordinator
 *   2. RenderSubObject (vtable D_80086668) — sub-object/resource handle
 *   3. Renderer        (vtable D_800866E8) — main 3D renderer (80+ vtable entries)
 *
 * See research-docs/class_39e08.md for full architecture analysis.
 */

/* =========================================================================
 * Class 1: RenderController (vtable D_800865C8)
 * Factory: func_80049608 — allocates 0x50 (80) bytes
 * ========================================================================= */

struct vtable_RenderController;

typedef struct RenderController {
    struct vtable_RenderController *vt;  /* 0x00 */
    s8 pad_0x4[0x8];                     /* 0x04 — BasicClass inherited */
    void *subObject;                     /* 0x0C — linked sub-object (arg1) */
    s8 pad_0x10[0x28];                   /* 0x10–0x37 */
    void *linkedObj;                     /* 0x38 — parent/linked object (arg2) */
    void *sysHandle1;                    /* 0x40 — from func_800398E0 */
    void *sysHandle2;                    /* 0x44 — coordinate system */
    void *sysHandle3;                    /* 0x48 — from func_80043840 */
    s8 pad_0x4C[0x4];                    /* 0x4C */
} RenderController;                      /* size = 0x50 */

/* Factory */
extern s32 func_80049608(s32 arg0, void *arg1, void *arg2);

/* =========================================================================
 * Class 2: RenderSubObject (vtable D_80086668)
 * Constructor: func_8004A19C
 * ========================================================================= */

struct vtable_RenderSubObject;

typedef struct RenderSubObject {
    struct vtable_RenderSubObject *vt;   /* 0x00 */
    s8 pad_0x4[0x2C];                    /* 0x04–0x2F */
    s32 field_0x30;                      /* 0x30 — config value (arg1) */
    void *field_0x34;                    /* 0x34 — resource handle */
} RenderSubObject;

/* =========================================================================
 * Class 3: Renderer (vtable D_800866E8) — THE MAIN RENDERER
 * Constructor: func_8004A534
 * Size: at least 0x1E4 bytes
 * 80+ vtable entries — the richest class in the game
 * ========================================================================= */

/* Sub-renderer entry (0x1C bytes, 7 instances at offset 0xEC) */
typedef struct SubRenderer {
    s32 field_0x00;          /* init 0 */
    s16 index;               /* 0–6 */
    s16 pad_0x04;
    void *renderHandle;      /* from func_80048894() */
    void *matrixHandle;      /* from func_8002C12C(0) */
    void *coordSystem;       /* from func_8004D38C() */
    void *polygonBuffer;     /* 0x668 bytes, coordinate-indexed tile data */
    s32 field_0x14;          /* init 0 */
    s32 field_0x18;          /* init 0 */
} SubRenderer;               /* size = 0x1C */

struct vtable_Renderer;

/*
 * Renderer struct — expanded from Wave 1 decompilation (69 functions).
 * Field names use functional prefixes where purpose is inferred.
 * Many offsets discovered from m2c output; types are best-guess.
 *
 * Offset map (hex → name → source):
 * 0x28: stateValue  — state machine (values 1,2,3,4 seen)
 * 0x2C: threshold   — compared unsigned against stateValue
 * 0x34: linkedPtr   — checked for NULL in delegation
 * 0x36: flagsByte   — bit 0x80 checked in conditional teardown
 * 0x38: viewportObj — pointer to viewport/camera object
 * 0x3C: state       — render state (0=idle, 1=setup, 2=active, 3=transition)
 * 0x60: setterVal1  — set by func_8004ADC4
 * 0x64: setterVal2  — set by func_8004ADC4
 * 0x68: lodOrScale  — set by func_8004B344, used in tile coord math
 * 0x74: gridDimX    — grid dimension X (used in scroll math)
 * 0x78: gridDimY    — s16, grid dimension Y
 * 0x7A: gridDimYShift — s16, derived: gridDimX >> 11
 * 0x7C: scrollX     — u16, scroll offset X
 * 0x7E: scrollY     — u16, scroll offset Y
 * 0x80: orientFlag  — flag controlling speed table selection
 * 0x84: dirtyFlag   — set to 1 when state changes
 * 0x88: chunkCount  — number of active chunks
 * 0x8C: chunkHandle — handle from vt->unk124
 * 0x90: boundMinX   — s16, grid bounds
 * 0x92: boundMinY   — s16
 * 0x94: boundMaxX   — s16
 * 0x96: boundMaxY   — s16 (also start of per-chunk dimension array)
 * 0xBC: srcPosX     — s32, from position data arg
 * 0xC0: srcPosY     — s32
 * 0xC4: srcPosZ     — s16
 */
typedef struct Renderer {
    struct vtable_Renderer *vt;          /* 0x00 */
    s8 pad_0x4[0x24];                    /* 0x04–0x27 — BasicClass inherited */
    s32 stateValue;                      /* 0x28 — state machine value */
    s32 threshold;                       /* 0x2C — compared against stateValue */
    void *linkedPtr;                     /* 0x34 — nullable linked object */
    u8 flagsByte;                        /* 0x36 — bit flags (0x80 = teardown) */
    s8 pad_0x37;                         /* 0x37 */
    void *viewportObj;                   /* 0x38 — viewport/camera */
    s32 renderState;                     /* 0x3C — 0=idle,1=setup,2=active,3=xition */
    s8 pad_0x40[0x14];                   /* 0x40–0x53 */
    s32 posX;                            /* 0x54 — 3D position X */
    s32 posY;                            /* 0x58 — 3D position Y */
    s32 posZ;                            /* 0x5C — 3D position Z */
    s32 setterVal1;                      /* 0x60 */
    s32 setterVal2;                      /* 0x64 */
    s32 lodOrScale;                      /* 0x68 — level-of-detail / scale */
    s32 field_0x6C;                      /* 0x6C — init 0, chunk param */
    s32 activeFlag;                      /* 0x70 — init 0, flag (0/1) */
    s32 gridDimX;                        /* 0x74 — grid dimension X */
    s16 gridDimY;                        /* 0x78 — grid dimension Y */
    s16 gridDimYShift;                   /* 0x7A — derived: gridDimX >> 11 */
    u16 scrollX;                         /* 0x7C — scroll offset X */
    u16 scrollY;                         /* 0x7E — scroll offset Y */
    s32 orientFlag;                      /* 0x80 — orientation flag */
    s32 dirtyFlag;                       /* 0x84 — set to 1 on state change */
    s32 chunkCount;                      /* 0x88 — active chunk count */
    void *chunkHandle;                   /* 0x8C — from vt->unk124 */
    s16 boundMinX;                       /* 0x90 */
    s16 boundMinY;                       /* 0x92 */
    s16 boundMaxX;                       /* 0x94 */
    s16 boundMaxY;                       /* 0x96 — also per-chunk dims start */
    s8 pad_0x98[0x24];                   /* 0x98–0xBB */
    s32 srcPosX;                         /* 0xBC — source position from arg */
    s32 srcPosY;                         /* 0xC0 */
    s16 srcPosZ;                         /* 0xC4 */
    s8 pad_0xC6[0x22];                   /* 0xC6–0xE7 */
    s32 field_0xE8;                      /* 0xE8 — init 0 / linked list ptr */
    SubRenderer subRenderers[7];         /* 0xEC — 7 sub-renderers (0xEC–0x1AF) */
    s32 field_0x1B0;                     /* 0x1B0 — init 0 */
    s32 field_0x1B4;                     /* 0x1B4 — init 0 */
    s32 chunkDirty;                      /* 0x1B8 — init 0, dirty flag */
    void *callbackEntity;                /* 0x1BC — set in event case 7 */
    s8 pad_0x1C0[0x8];                   /* 0x1C0–0x1C7 */
    void *field_0x1C8;                   /* 0x1C8 */
    s32 sentinel_0x1CC;                  /* 0x1CC — init -1 */
    s32 sentinel_0x1D0;                  /* 0x1D0 — init -1 */
    s32 sentinel_0x1D4;                  /* 0x1D4 — init -1 */
    s32 sentinel_0x1D8;                  /* 0x1D8 — init -1 */
    s32 field_0x1DC;                     /* 0x1DC — setter value */
    s32 countdown;                       /* 0x1E0 — init 0, countdown/decrement */
    void *speedTable;                    /* 0x1E4 — direction speed table ptr */
} Renderer;                              /* size >= 0x1E8 */

/* Constructor */
extern void func_8004A534(Renderer *this, void *positionData, s32 arg2);

/* Vtable accessor (returns &D_800866E8) */
extern struct vtable_Renderer *func_8004D244(void);

/* =========================================================================
 * Data Tables (from 76DC8.data.s)
 * ========================================================================= */

/* Bounding box pairs — likely view frustum or collision bounds */
extern s32 D_80086838[];      /* pairs of (min, max) coords with negative values */

/* Bit flags — powers of 2 (1,2,4,8,16,32,64) */
extern s32 D_8008688C[];

/* Configuration flags */
extern s32 D_800868A8[];

/* Byte lookup tables — possibly color/channel remapping */
extern u8 D_800868FC[];
extern u8 D_80086904[];

#endif /* CLASS_39E08_H */
