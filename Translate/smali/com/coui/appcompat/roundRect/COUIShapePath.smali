.class public Lcom/coui/appcompat/roundRect/COUIShapePath;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 63
    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FF)Landroid/graphics/Path;
    .locals 43

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    cmpg-float v3, p3, v1

    if-gez v3, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move/from16 v8, p3

    .line 34
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    .line 35
    iget v9, v0, Landroid/graphics/RectF;->left:F

    .line 36
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 37
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 38
    iget v10, v0, Landroid/graphics/RectF;->top:F

    sub-float v11, v1, v9

    sub-float v12, v3, v10

    const/high16 v0, 0x40000000    # 2.0f

    div-float v13, v11, v0

    div-float v14, v12, v0

    .line 39
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v2, v0

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v3, v5

    const v3, 0x3e0e1bf0

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v1, :cond_2

    sub-float v1, v0, v15

    div-float/2addr v1, v4

    .line 40
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v3

    sub-float v1, v5, v1

    goto :goto_2

    :cond_2
    move v1, v5

    .line 41
    :goto_2
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float v6, v8, v6

    float-to-double v3, v6

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v17

    if-lez v3, :cond_3

    sub-float v3, v6, v15

    const v4, 0x3ecccccd    # 0.4f

    div-float/2addr v3, v4

    .line 42
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3e0e1bf0

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    move v15, v3

    goto :goto_3

    :cond_3
    move v15, v5

    :goto_3
    const v3, 0x3f19999a    # 0.6f

    cmpl-float v4, v0, v3

    const v16, 0x3d2de440

    const v17, 0x3e99999a    # 0.3f

    if-lez v4, :cond_4

    sub-float/2addr v0, v3

    div-float v0, v0, v17

    .line 43
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v0, v0, v16

    add-float/2addr v0, v5

    goto :goto_4

    :cond_4
    move v0, v5

    :goto_4
    cmpl-float v4, v6, v3

    if-lez v4, :cond_5

    sub-float/2addr v6, v3

    div-float v6, v6, v17

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v3, v3, v16

    add-float/2addr v5, v3

    :cond_5
    move/from16 v16, v5

    add-float v3, v9, v13

    .line 45
    invoke-virtual {v7, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v18, v2, v17

    const v19, 0x430030a4    # 128.19f

    mul-float v2, v18, v19

    mul-float v6, v2, v1

    sub-float v1, v11, v6

    .line 46
    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v9

    invoke-virtual {v7, v1, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v5, v9, v11

    const v20, 0x42a73d71    # 83.62f

    mul-float v1, v18, v20

    mul-float v21, v1, v0

    sub-float v1, v5, v21

    const v22, 0x4286e666    # 67.45f

    mul-float v23, v18, v22

    sub-float v3, v5, v23

    const v24, 0x40947ae1    # 4.64f

    mul-float v25, v18, v24

    add-float v26, v10, v25

    const v27, 0x424ca3d7    # 51.16f

    mul-float v28, v18, v27

    sub-float v29, v5, v28

    const v30, 0x4155c28f    # 13.36f

    mul-float v31, v18, v30

    add-float v32, v10, v31

    move-object/from16 v0, p0

    move v2, v10

    move/from16 v4, v26

    move/from16 p2, v9

    move v9, v5

    move/from16 v5, v29

    move/from16 p1, v13

    move v13, v6

    move/from16 v6, v32

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v29, 0x420b70a4    # 34.86f

    mul-float v33, v18, v29

    sub-float v1, v9, v33

    const v34, 0x41b08f5c    # 22.07f

    mul-float v18, v18, v34

    add-float v35, v10, v18

    sub-float v3, v9, v18

    add-float v36, v10, v33

    sub-float v5, v9, v31

    add-float v37, v10, v28

    move/from16 v2, v35

    move/from16 v4, v36

    move/from16 v6, v37

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v9, v25

    add-float v38, v10, v23

    add-float v39, v10, v21

    .line 49
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v6, v10, v0

    move-object/from16 v0, p0

    move/from16 v2, v38

    move v3, v9

    move/from16 v4, v39

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v8, v8, v17

    mul-float v19, v19, v8

    mul-float v15, v15, v19

    sub-float v6, v12, v15

    .line 50
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v7, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v12, v10

    mul-float v20, v20, v8

    mul-float v20, v20, v16

    sub-float v16, v12, v20

    mul-float v24, v24, v8

    sub-float v3, v9, v24

    mul-float v22, v22, v8

    sub-float v17, v12, v22

    mul-float v30, v30, v8

    sub-float v5, v9, v30

    mul-float v27, v27, v8

    sub-float v19, v12, v27

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v4, v17

    move/from16 p3, v13

    move v13, v6

    move/from16 v6, v19

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v34, v34, v8

    sub-float v1, v9, v34

    mul-float v8, v8, v29

    sub-float v29, v12, v8

    sub-float v3, v9, v8

    sub-float v40, v12, v34

    sub-float v5, v9, v27

    sub-float v41, v12, v30

    move/from16 v2, v29

    move/from16 v4, v40

    move/from16 v6, v41

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v9, v22

    sub-float v42, v12, v24

    sub-float v3, v9, v20

    sub-float/2addr v11, v15

    move/from16 v9, p1

    .line 53
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v5, p2, v0

    move-object/from16 v0, p0

    move/from16 v2, v42

    move v4, v12

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 54
    invoke-static {v9, v15}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v0, p2, v0

    invoke-virtual {v7, v0, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v1, p2, v20

    add-float v3, p2, v22

    add-float v5, p2, v27

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v4, v42

    move/from16 v6, v41

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, p2, v8

    add-float v3, p2, v34

    add-float v5, p2, v30

    move/from16 v2, v40

    move/from16 v4, v29

    move/from16 v6, v19

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, p2, v24

    .line 57
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v6, v10, v0

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v8, p3

    .line 58
    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v10

    move/from16 v11, p2

    invoke-virtual {v7, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v3, v11, v25

    add-float v5, v11, v31

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v39

    move/from16 v4, v38

    move/from16 v6, v37

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v11, v18

    add-float v3, v11, v33

    add-float v5, v11, v28

    move/from16 v2, v36

    move/from16 v4, v35

    move/from16 v6, v32

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v11, v23

    add-float v3, v11, v21

    .line 61
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v5, v11, v0

    move-object/from16 v0, p0

    move/from16 v2, v26

    move v4, v10

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-object v7
.end method

.method public static getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;
    .locals 34

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p2

    .line 1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget v9, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget v10, v0, Landroid/graphics/RectF;->top:F

    sub-float v11, v1, v9

    sub-float v12, v2, v10

    const/high16 v0, 0x40000000    # 2.0f

    div-float v13, v11, v0

    div-float v14, v12, v0

    .line 6
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    .line 7
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v2

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3e0e1bf0

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    move v15, v0

    goto :goto_1

    :cond_1
    move v15, v1

    .line 9
    :goto_1
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    const v2, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 10
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v0, v8, v0

    sub-float/2addr v0, v2

    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v0, v2

    .line 11
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3d2de440

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    :cond_2
    move/from16 v16, v1

    add-float v0, v9, v13

    .line 12
    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const v17, 0x41b08f5c    # 22.07f

    const v18, 0x420b70a4    # 34.86f

    const v19, 0x4155c28f    # 13.36f

    const v20, 0x424ca3d7    # 51.16f

    const v21, 0x40947ae1    # 4.64f

    const v22, 0x4286e666    # 67.45f

    const v23, 0x42a73d71    # 83.62f

    const v24, 0x430030a4    # 128.19f

    const/high16 v25, 0x42c80000    # 100.0f

    if-nez p4, :cond_3

    add-float v0, v9, v11

    .line 13
    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 p1, v13

    goto :goto_2

    :cond_3
    div-float v26, v8, v25

    mul-float v0, v26, v24

    mul-float v6, v0, v15

    sub-float v0, v11, v6

    .line 14
    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v9

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v27, v9, v11

    mul-float v0, v26, v23

    mul-float v28, v0, v16

    sub-float v1, v27, v28

    mul-float v29, v26, v22

    sub-float v3, v27, v29

    mul-float v30, v26, v21

    add-float v4, v10, v30

    mul-float v31, v26, v20

    sub-float v5, v27, v31

    mul-float v32, v26, v19

    add-float v33, v10, v32

    move-object/from16 v0, p0

    move v2, v10

    move/from16 p1, v13

    move v13, v6

    move/from16 v6, v33

    .line 15
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v0, v26, v18

    sub-float v1, v27, v0

    mul-float v26, v26, v17

    add-float v2, v10, v26

    sub-float v3, v27, v26

    add-float v4, v10, v0

    sub-float v5, v27, v32

    add-float v6, v10, v31

    move-object/from16 v0, p0

    .line 16
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v27, v30

    add-float v2, v10, v29

    add-float v4, v10, v28

    .line 17
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v6, v10, v0

    move-object/from16 v0, p0

    move/from16 v3, v27

    move/from16 v5, v27

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_2
    if-nez p6, :cond_4

    add-float/2addr v11, v9

    add-float v0, v10, v12

    .line 18
    invoke-virtual {v7, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v13, p1

    goto :goto_3

    :cond_4
    add-float v13, v9, v11

    div-float v26, v8, v25

    mul-float v0, v26, v24

    mul-float v27, v0, v15

    sub-float v0, v12, v27

    .line 19
    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v7, v13, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v28, v10, v12

    mul-float v0, v26, v23

    mul-float v29, v0, v16

    sub-float v2, v28, v29

    mul-float v30, v26, v21

    sub-float v3, v13, v30

    mul-float v31, v26, v22

    sub-float v4, v28, v31

    mul-float v32, v26, v19

    sub-float v5, v13, v32

    mul-float v33, v26, v20

    sub-float v6, v28, v33

    move-object/from16 v0, p0

    move v1, v13

    .line 20
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v0, v26, v17

    sub-float v1, v13, v0

    mul-float v26, v26, v18

    sub-float v2, v28, v26

    sub-float v3, v13, v26

    sub-float v4, v28, v0

    sub-float v5, v13, v33

    sub-float v6, v28, v32

    move-object/from16 v0, p0

    .line 21
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v13, v31

    sub-float v2, v28, v30

    sub-float v3, v13, v29

    sub-float v11, v11, v27

    move/from16 v13, p1

    .line 22
    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v5, v9, v0

    move-object/from16 v0, p0

    move/from16 v4, v28

    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_3
    if-nez p5, :cond_5

    add-float/2addr v12, v10

    .line 23
    invoke-virtual {v7, v9, v12}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_5
    div-float v11, v8, v25

    mul-float v0, v11, v24

    mul-float v6, v0, v15

    .line 24
    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v9

    add-float v5, v10, v12

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v0, v11, v23

    mul-float v26, v0, v16

    add-float v1, v9, v26

    mul-float v27, v11, v22

    add-float v3, v9, v27

    mul-float v28, v11, v21

    sub-float v4, v5, v28

    mul-float v29, v11, v20

    add-float v30, v9, v29

    mul-float v31, v11, v19

    sub-float v32, v5, v31

    move-object/from16 v0, p0

    move v2, v5

    move/from16 v33, v5

    move/from16 v5, v30

    move/from16 v30, v6

    move/from16 v6, v32

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v0, v11, v18

    add-float v1, v9, v0

    mul-float v11, v11, v17

    sub-float v2, v33, v11

    add-float v3, v9, v11

    sub-float v4, v33, v0

    add-float v5, v9, v31

    sub-float v6, v33, v29

    move-object/from16 v0, p0

    .line 26
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v9, v28

    sub-float v2, v33, v27

    sub-float v4, v33, v26

    sub-float v12, v12, v30

    .line 27
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v6, v10, v0

    move-object/from16 v0, p0

    move v3, v9

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_4
    if-nez p3, :cond_6

    .line 28
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_6
    div-float v8, v8, v25

    mul-float v24, v24, v8

    mul-float v11, v24, v15

    .line 29
    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v10

    invoke-virtual {v7, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v23, v23, v8

    mul-float v23, v23, v16

    add-float v2, v10, v23

    mul-float v21, v21, v8

    add-float v3, v9, v21

    mul-float v22, v22, v8

    add-float v4, v10, v22

    mul-float v19, v19, v8

    add-float v5, v9, v19

    mul-float v20, v20, v8

    add-float v6, v10, v20

    move-object/from16 v0, p0

    move v1, v9

    .line 30
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    mul-float v17, v17, v8

    add-float v1, v9, v17

    mul-float v8, v8, v18

    add-float v2, v10, v8

    add-float v3, v9, v8

    add-float v4, v10, v17

    add-float v5, v9, v20

    add-float v6, v10, v19

    .line 31
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v9, v22

    add-float v2, v10, v21

    add-float v3, v9, v23

    .line 32
    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v5, v9, v0

    move-object/from16 v0, p0

    move v4, v10

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 33
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-object v7
.end method

.method public static getSmoothRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FF)Landroid/graphics/Path;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 14
    invoke-static/range {v0 .. v7}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getSmoothRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZZZ)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getSmoothRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZZZ)Landroid/graphics/Path;
    .locals 2

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    move p4, p2

    goto :goto_0

    :cond_1
    move p4, v1

    :goto_0
    if-eqz p5, :cond_2

    move p5, p2

    goto :goto_1

    :cond_2
    move p5, v1

    :goto_1
    if-eqz p6, :cond_3

    move p6, p2

    goto :goto_2

    :cond_3
    move p6, v1

    :goto_2
    if-eqz p7, :cond_4

    goto :goto_3

    :cond_4
    move p2, v1

    :goto_3
    const/4 p7, 0x1

    .line 3
    aput p4, v0, p7

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 p4, 0x3

    .line 4
    aput p5, v0, p4

    const/4 p4, 0x2

    aput p5, v0, p4

    const/4 p4, 0x5

    .line 5
    aput p6, v0, p4

    const/4 p4, 0x4

    aput p6, v0, p4

    const/4 p4, 0x7

    .line 6
    aput p2, v0, p4

    const/4 p4, 0x6

    aput p2, v0, p4

    .line 7
    invoke-static {p3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->isWeightValid(F)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 8
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p2

    if-ne p2, p7, :cond_5

    .line 9
    new-instance p2, Lcom/oplus/graphics/OplusPathAdapter;

    invoke-direct {p2, p0, p7}, Lcom/oplus/graphics/OplusPathAdapter;-><init>(Landroid/graphics/Path;I)V

    .line 10
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v0, p3}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 11
    :cond_5
    new-instance p2, Lcom/oplus/graphics/OplusPath;

    invoke-direct {p2, p0}, Lcom/oplus/graphics/OplusPath;-><init>(Landroid/graphics/Path;)V

    .line 12
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, v0, p4, p3}, Lcom/oplus/graphics/OplusPath;->addSmoothRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;F)V

    goto :goto_4

    .line 13
    :cond_6
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p1, v0, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_7
    :goto_4
    return-object p0
.end method

.method private static isWeightValid(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
