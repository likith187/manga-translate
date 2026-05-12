.class public Lcom/coui/appcompat/lunarutil/COUILunarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_SC_SOLAR_TERM_NAMES:[Ljava/lang/String;

.field private static final ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field public static final DECREATE_A_LUANR_YEAR:I = -0x1

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HIGH_BIT_VALUE:I = 0x8000

.field public static final INCREASE_A_LUANR_YEAR:I = 0x1

.field private static final LAUN_LEAP_MONTH_DAYS:I = 0x1d

.field private static final LAUN_MONTH_DAYS:I = 0x1e

.field private static final LEAPMONTH_BIT_FLAG:I = 0xf

.field private static final LEAPMONTH_BIT_MASK:I = 0x10000

.field public static final LEAP_MONTH:I = 0x0

.field private static final LOW_BIT_VALUE:I = 0x8

.field private static final LUNAR_INFO:[J

.field private static final MAX_YEAR:I = 0x834

.field private static final MIN_YEAR:I = 0x76c

.field public static final NORMAL_MONTH:I = 0x1

.field private static final ONE:I = 0x1

.field private static final SOLAR_TERM_DAYS:[[I

.field private static final START_DATE:Ljava/lang/String; = "19000130"

.field private static final TAG:Ljava/lang/String; = "COUILunar"

.field private static final THIRTY:I = 0x1e

.field private static final TWELVE:I = 0xc

.field private static final YEAR_OF_MONTH:I = 0xc

.field private static sChineseDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 69

    const-string v10, "\u5341\u4e00"

    const-string v11, "\u5341\u4e8c"

    const-string v0, "\u4e00"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    const-string v23, "\u5927\u96ea"

    const-string v24, "\u51ac\u81f3"

    const-string v1, "\u5c0f\u5bd2"

    const-string v2, "\u5927\u5bd2"

    const-string v3, "\u7acb\u6625"

    const-string v4, "\u96e8\u6c34"

    const-string v5, "\u60ca\u86f0"

    const-string v6, "\u6625\u5206"

    const-string v7, "\u6e05\u660e"

    const-string v8, "\u8c37\u96e8"

    const-string v9, "\u7acb\u590f"

    const-string v10, "\u5c0f\u6ee1"

    const-string v11, "\u8292\u79cd"

    const-string v12, "\u590f\u81f3"

    const-string v13, "\u5c0f\u6691"

    const-string v14, "\u5927\u6691"

    const-string v15, "\u7acb\u79cb"

    const-string v16, "\u5904\u6691"

    const-string v17, "\u767d\u9732"

    const-string v18, "\u79cb\u5206"

    const-string v19, "\u5bd2\u9732"

    const-string v20, "\u971c\u964d"

    const-string v21, "\u7acb\u51ac"

    const-string v22, "\u5c0f\u96ea"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->ALL_SC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    const-string v23, "\u5927\u96ea"

    const-string v24, "\u51ac\u81f3"

    const-string v1, "\u5c0f\u5bd2"

    const-string v2, "\u5927\u5bd2"

    const-string v3, "\u7acb\u6625"

    const-string v4, "\u96e8\u6c34"

    const-string v5, "\u9a5a\u87c4"

    const-string v6, "\u6625\u5206"

    const-string v7, "\u6e05\u660e"

    const-string v8, "\u7a40\u96e8"

    const-string v9, "\u7acb\u590f"

    const-string v10, "\u5c0f\u6eff"

    const-string v11, "\u8292\u7a2e"

    const-string v12, "\u590f\u81f3"

    const-string v13, "\u5c0f\u6691"

    const-string v14, "\u5927\u6691"

    const-string v15, "\u7acb\u79cb"

    const-string v16, "\u8655\u6691"

    const-string v17, "\u767d\u9732"

    const-string v18, "\u79cb\u5206"

    const-string v19, "\u5bd2\u9732"

    const-string v20, "\u971c\u964d"

    const-string v21, "\u7acb\u51ac"

    const-string v22, "\u5c0f\u96ea"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    const/16 v0, 0xc9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->LUNAR_INFO:[J

    const/16 v0, 0x18

    new-array v2, v0, [I

    move-object v1, v2

    fill-array-data v2, :array_1

    new-array v3, v0, [I

    move-object v2, v3

    fill-array-data v3, :array_2

    new-array v4, v0, [I

    move-object v3, v4

    fill-array-data v4, :array_3

    new-array v5, v0, [I

    move-object v4, v5

    fill-array-data v5, :array_4

    new-array v6, v0, [I

    move-object v5, v6

    fill-array-data v6, :array_5

    new-array v7, v0, [I

    move-object v6, v7

    fill-array-data v7, :array_6

    new-array v8, v0, [I

    move-object v7, v8

    fill-array-data v8, :array_7

    new-array v9, v0, [I

    move-object v8, v9

    fill-array-data v9, :array_8

    new-array v10, v0, [I

    move-object v9, v10

    fill-array-data v10, :array_9

    new-array v11, v0, [I

    move-object v10, v11

    fill-array-data v11, :array_a

    new-array v12, v0, [I

    move-object v11, v12

    fill-array-data v12, :array_b

    new-array v13, v0, [I

    move-object v12, v13

    fill-array-data v13, :array_c

    new-array v14, v0, [I

    move-object v13, v14

    fill-array-data v14, :array_d

    new-array v15, v0, [I

    move-object v14, v15

    fill-array-data v15, :array_e

    new-array v15, v0, [I

    move-object/from16 v16, v15

    fill-array-data v16, :array_f

    move-object/from16 v68, v1

    new-array v1, v0, [I

    move-object/from16 v16, v1

    fill-array-data v1, :array_10

    new-array v1, v0, [I

    move-object/from16 v17, v1

    fill-array-data v1, :array_11

    new-array v1, v0, [I

    move-object/from16 v18, v1

    fill-array-data v1, :array_12

    new-array v1, v0, [I

    move-object/from16 v19, v1

    fill-array-data v1, :array_13

    new-array v1, v0, [I

    move-object/from16 v20, v1

    fill-array-data v1, :array_14

    new-array v1, v0, [I

    move-object/from16 v21, v1

    fill-array-data v1, :array_15

    new-array v1, v0, [I

    move-object/from16 v22, v1

    fill-array-data v1, :array_16

    new-array v1, v0, [I

    move-object/from16 v23, v1

    fill-array-data v1, :array_17

    new-array v1, v0, [I

    move-object/from16 v24, v1

    fill-array-data v1, :array_18

    new-array v1, v0, [I

    move-object/from16 v25, v1

    fill-array-data v1, :array_19

    new-array v1, v0, [I

    move-object/from16 v26, v1

    fill-array-data v1, :array_1a

    new-array v1, v0, [I

    move-object/from16 v27, v1

    fill-array-data v1, :array_1b

    new-array v1, v0, [I

    move-object/from16 v28, v1

    fill-array-data v1, :array_1c

    new-array v1, v0, [I

    move-object/from16 v29, v1

    fill-array-data v1, :array_1d

    new-array v1, v0, [I

    move-object/from16 v30, v1

    fill-array-data v1, :array_1e

    new-array v1, v0, [I

    move-object/from16 v31, v1

    fill-array-data v1, :array_1f

    new-array v1, v0, [I

    move-object/from16 v32, v1

    fill-array-data v1, :array_20

    new-array v1, v0, [I

    move-object/from16 v33, v1

    fill-array-data v1, :array_21

    new-array v1, v0, [I

    move-object/from16 v34, v1

    fill-array-data v1, :array_22

    new-array v1, v0, [I

    move-object/from16 v35, v1

    fill-array-data v1, :array_23

    new-array v1, v0, [I

    move-object/from16 v36, v1

    fill-array-data v1, :array_24

    new-array v1, v0, [I

    move-object/from16 v37, v1

    fill-array-data v1, :array_25

    new-array v1, v0, [I

    move-object/from16 v38, v1

    fill-array-data v1, :array_26

    new-array v1, v0, [I

    move-object/from16 v39, v1

    fill-array-data v1, :array_27

    new-array v1, v0, [I

    move-object/from16 v40, v1

    fill-array-data v1, :array_28

    new-array v1, v0, [I

    move-object/from16 v41, v1

    fill-array-data v1, :array_29

    new-array v1, v0, [I

    move-object/from16 v42, v1

    fill-array-data v1, :array_2a

    new-array v1, v0, [I

    move-object/from16 v43, v1

    fill-array-data v1, :array_2b

    new-array v1, v0, [I

    move-object/from16 v44, v1

    fill-array-data v1, :array_2c

    new-array v1, v0, [I

    move-object/from16 v45, v1

    fill-array-data v1, :array_2d

    new-array v1, v0, [I

    move-object/from16 v46, v1

    fill-array-data v1, :array_2e

    new-array v1, v0, [I

    move-object/from16 v47, v1

    fill-array-data v1, :array_2f

    new-array v1, v0, [I

    move-object/from16 v48, v1

    fill-array-data v1, :array_30

    new-array v1, v0, [I

    move-object/from16 v49, v1

    fill-array-data v1, :array_31

    new-array v1, v0, [I

    move-object/from16 v50, v1

    fill-array-data v1, :array_32

    new-array v1, v0, [I

    move-object/from16 v51, v1

    fill-array-data v1, :array_33

    new-array v1, v0, [I

    move-object/from16 v52, v1

    fill-array-data v1, :array_34

    new-array v1, v0, [I

    move-object/from16 v53, v1

    fill-array-data v1, :array_35

    new-array v1, v0, [I

    move-object/from16 v54, v1

    fill-array-data v1, :array_36

    new-array v1, v0, [I

    move-object/from16 v55, v1

    fill-array-data v1, :array_37

    new-array v1, v0, [I

    move-object/from16 v56, v1

    fill-array-data v1, :array_38

    new-array v1, v0, [I

    move-object/from16 v57, v1

    fill-array-data v1, :array_39

    new-array v1, v0, [I

    move-object/from16 v58, v1

    fill-array-data v1, :array_3a

    new-array v1, v0, [I

    move-object/from16 v59, v1

    fill-array-data v1, :array_3b

    new-array v1, v0, [I

    move-object/from16 v60, v1

    fill-array-data v1, :array_3c

    new-array v1, v0, [I

    move-object/from16 v61, v1

    fill-array-data v1, :array_3d

    new-array v1, v0, [I

    move-object/from16 v62, v1

    fill-array-data v1, :array_3e

    new-array v1, v0, [I

    move-object/from16 v63, v1

    fill-array-data v1, :array_3f

    new-array v1, v0, [I

    move-object/from16 v64, v1

    fill-array-data v1, :array_40

    new-array v1, v0, [I

    move-object/from16 v65, v1

    fill-array-data v1, :array_41

    new-array v1, v0, [I

    move-object/from16 v66, v1

    fill-array-data v1, :array_42

    new-array v0, v0, [I

    move-object/from16 v67, v0

    fill-array-data v0, :array_43

    move-object/from16 v1, v68

    filled-new-array/range {v1 .. v67}, [[I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->SOLAR_TERM_DAYS:[[I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x16a95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
        0x14b63
        0x9370
        0x49f8
        0x4970
        0x64b0
        0x168a6
        0xea50
        0x6b20
        0x1a6c4
        0xaae0
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x14b55
        0x4b60
        0xa570
        0x54e4
        0xd160
        0xe968
        0xd520
        0xdaa0
        0x16aa6
        0x56d0
        0x4ae0
        0xa9d4
        0xa2d0
        0xd150
        0xf252
        0xd520
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x18
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x15
        0x5
        0x13
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x18
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_15
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_18
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_19
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_20
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_21
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_24
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_25
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_28
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_29
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_2c
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2e
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_30
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_31
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_32
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_34
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_35
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_36
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_37
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_38
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_39
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3a
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3b
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_3c
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_3d
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3e
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3f
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_40
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_41
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_42
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_43
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLunarByGregorian(III)[I
    .locals 9

    const-string v0, "COUILunar"

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v3, v1, v3

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v5, 0x3

    aput v3, v1, v5

    const/high16 v6, -0x80000000

    if-ne p0, v6, :cond_1

    aput p0, v1, v2

    sub-int/2addr p1, v3

    rem-int/lit8 p0, p1, 0xc

    add-int/2addr p0, v3

    aput p0, v1, v3

    aput p2, v1, v4

    div-int/lit8 p1, p1, 0xc

    if-gtz p1, :cond_0

    move v2, v3

    :cond_0
    aput v2, v1, v5

    return-object v1

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v8, "1900\u5e741\u670831\u65e5"

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v8, "calculateLunarByGregorian(),parse baseDate error."

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v6

    :goto_0
    if-nez v7, :cond_2

    const-string p0, "baseDate is null,return lunar date:2000.1.1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e74"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u6708"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u65e5"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_1
    sget-object p1, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "calculateLunarByGregorian(),parse currentDate error."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    if-nez v6, :cond_3

    const-string p0, "currentDate is null,return lunar date:2000.1.1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr p0, v6

    long-to-float p0, p0

    const p1, 0x4ca4cb80    # 8.64E7f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0x76c

    move p2, v2

    :goto_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_4

    if-lez p0, :cond_4

    invoke-static {p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLunarYear(I)I

    move-result p2

    sub-int/2addr p0, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-gez p0, :cond_5

    add-int/2addr p0, p2

    add-int/lit8 p1, p1, -0x1

    :cond_5
    invoke-static {p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result p2

    move v6, v2

    move v7, v6

    move v0, v3

    :goto_3
    const/16 v8, 0xd

    if-ge v0, v8, :cond_8

    if-lez p0, :cond_8

    if-lez p2, :cond_6

    add-int/lit8 v7, p2, 0x1

    if-ne v0, v7, :cond_6

    if-nez v6, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v6

    move v7, v6

    move v6, v3

    goto :goto_4

    :cond_6
    invoke-static {p1, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v7

    :goto_4
    sub-int/2addr p0, v7

    if-eqz v6, :cond_7

    add-int/lit8 v8, p2, 0x1

    if-ne v0, v8, :cond_7

    move v6, v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    if-nez p0, :cond_a

    if-lez p2, :cond_a

    add-int/2addr p2, v3

    if-ne v0, p2, :cond_a

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, -0x1

    move v6, v3

    :cond_a
    :goto_5
    if-gez p0, :cond_b

    add-int/2addr p0, v7

    add-int/lit8 v0, v0, -0x1

    :cond_b
    add-int/2addr p0, v3

    aput p1, v1, v2

    aput v0, v1, v3

    aput p0, v1, v4

    xor-int/lit8 p0, v6, 0x1

    aput p0, v1, v5

    return-object v1
.end method

.method public static changeALunarYear(IIII)Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;
    .locals 3

    invoke-static {p0, p1, p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->clampMonth(III)[I

    move-result-object p1

    const/4 p3, 0x0

    aget v0, p1, p3

    const/4 v1, 0x1

    aget v2, p1, v1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    invoke-static {p0, v0, p2, v2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->clampDay(IIIZ)I

    move-result p2

    aget v0, p1, p3

    aget p1, p1, v1

    if-nez p1, :cond_1

    move p3, v1

    :cond_1
    invoke-static {p0, v0, p2, p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->lunarToSolar(IIIZ)Ljava/util/Date;

    move-result-object p0

    new-instance p1, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p1}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/picker/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    :cond_2
    return-object p1
.end method

.method public static changeALunarYearByOne(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p4, p1, p2, p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getDays(IIII)I

    move-result p0

    invoke-static {p5, p1, p2, p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getDays(IIII)I

    move-result p1

    const/4 p2, 0x5

    if-le p4, p5, :cond_0

    invoke-static {p5}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLunarYear(I)I

    move-result p3

    sub-int/2addr p3, p1

    add-int/2addr p3, p0

    neg-int p0, p3

    invoke-virtual {v0, p2, p0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-ge p4, p5, :cond_1

    invoke-static {p4}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLunarYear(I)I

    move-result p3

    add-int/2addr p3, p1

    sub-int/2addr p3, p0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static chineseStringOfALunarDay(I)Ljava/lang/String;
    .locals 5

    const-string v0, "\u5eff"

    const-string v1, "\u5345"

    const-string v2, "\u521d"

    const-string v3, "\u5341"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    rem-int/lit8 v1, p0, 0xa

    if-nez v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, 0x1e

    if-le p0, v2, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/16 v3, 0xa

    if-ne p0, v3, :cond_2

    const-string p0, "\u521d\u5341"

    return-object p0

    :cond_2
    const/16 v4, 0x14

    if-ne p0, v4, :cond_3

    const-string p0, "\u4e8c\u5341"

    return-object p0

    :cond_3
    if-ne p0, v2, :cond_4

    const-string p0, "\u4e09\u5341"

    return-object p0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p0, v3

    aget-object p0, v0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clampDay(IIIZ)I
    .locals 0

    if-nez p3, :cond_0

    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result p0

    :goto_0
    if-le p2, p0, :cond_1

    return p0

    :cond_1
    return p2
.end method

.method private static clampMonth(III)[I
    .locals 1

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result p0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static daysOfALunarMonth(II)I
    .locals 4

    const/high16 v0, -0x80000000

    const/16 v1, 0x1e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x76c

    if-lt p0, v0, :cond_0

    sget-object v2, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->LUNAR_INFO:[J

    sub-int/2addr p0, v0

    aget-wide v2, v2, p0

    const/high16 p0, 0x10000

    shr-int/2addr p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    return v1
.end method

.method public static daysOfLeapMonthInLunarYear(I)I
    .locals 4

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    return p0

    :cond_0
    const/16 p0, 0x1d

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static daysOfLunarYear(I)I
    .locals 6

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    add-int/lit16 v2, p0, -0x76c

    if-ltz v2, :cond_1

    sget-object v3, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->LUNAR_INFO:[J

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-wide v2, v3, v2

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getAMonthSolarTermDays(II)[I
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x2

    mul-int/2addr p1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    aput v2, v1, v0

    const/16 v3, 0x7b1

    if-le p0, v3, :cond_0

    const/16 v3, 0x7f5

    if-ge p0, v3, :cond_0

    sget-object v3, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->SOLAR_TERM_DAYS:[[I

    add-int/lit16 p0, p0, -0x7b2

    aget-object p0, v3, p0

    aget v3, p0, p1

    add-int/2addr p1, v0

    aget p0, p0, p1

    aput v3, v1, v2

    aput p0, v1, v0

    :cond_0
    return-object v1
.end method

.method private static getAMonthSolarTermNames(I)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v1, 0xc

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x2

    sget-object v1, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    aget-object v2, v1, p0

    add-int/2addr p0, v0

    aget-object p0, v1, p0

    filled-new-array {v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAMonthSolarTermNames(),param gregorianMonth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUILunar"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDays(IIII)I
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-static {p0, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result v0

    if-ge v0, p1, :cond_2

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result p0

    :goto_1
    add-int/2addr p2, p0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    if-nez p3, :cond_3

    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p0

    goto :goto_1

    :cond_3
    :goto_2
    return p2
.end method

.method private static getGregFestival(II)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    if-ne p1, v1, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLunarDateString(III)Ljava/lang/String;
    .locals 2

    .line 6
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 7
    aget p1, p0, p1

    const/4 p2, 0x1

    aget p2, p0, p2

    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x3

    aget p0, p0, v1

    invoke-static {p1, p2, v0, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLunarDateString(IIII)Ljava/lang/String;
    .locals 4

    const/high16 v0, -0x80000000

    .line 8
    const-string v1, "\u6708"

    const-string v2, ""

    const-string v3, "\u95f0"

    if-eq p0, v0, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5e74"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2

    move-object v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p3, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    .line 3
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 4
    invoke-static {v1, v3, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object p0

    const/4 v1, 0x0

    .line 5
    aget v1, p0, v1

    aget v0, p0, v0

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {v1, v0, v2, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLunarFestival(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    const-string p0, "\u6625\u7bc0"

    return-object p0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    const-string p0, "\u7aef\u5348"

    return-object p0

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/16 p0, 0xf

    if-ne p1, p0, :cond_2

    const-string p0, "\u4e2d\u79cb"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLunarFestivalChineseString(III)Ljava/lang/String;
    .locals 5

    invoke-static {p1, p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getGregFestival(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v4, v0, v3

    invoke-static {v2, v4}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getLunarFestival(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getSolarTerm(III)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x3

    aget p0, v0, p0

    if-nez p0, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    aget p1, v0, v1

    aget p2, v0, v3

    invoke-static {p1, p2, p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getLunarNumber(IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLunarNumber(IIZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u95f0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    sub-int/2addr p0, v0

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u6708"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSolarTerm(III)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getAMonthSolarTermDays(II)[I

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_0

    aget v1, p0, v3

    if-eq p2, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getAMonthSolarTermNames(I)[Ljava/lang/String;

    move-result-object p1

    aget v1, p0, v0

    if-ne p2, v1, :cond_1

    aget-object p0, p1, v0

    return-object p0

    :cond_1
    aget p0, p0, v3

    if-ne p2, p0, :cond_2

    aget-object p0, p1, v3

    return-object p0

    :cond_2
    return-object v2
.end method

.method private static getYearDays(I)I
    .locals 6

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    sget-object v2, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    const-wide/32 v4, 0xfff0

    and-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static isLunarDate(IIIZ)Z
    .locals 3

    const/16 v0, 0x76c

    const/4 v1, 0x0

    if-lt p0, v0, :cond_4

    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v2, 0xc

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-lt p2, v0, :cond_4

    const/16 v2, 0x1e

    if-le p2, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result p0

    if-eqz p3, :cond_3

    if-ne p1, p0, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static leapMonth(I)I
    .locals 4

    const/16 v0, 0x76c

    if-lt p0, v0, :cond_1

    const/16 v1, 0x834

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->LUNAR_INFO:[J

    sub-int/2addr p0, v0

    aget-wide v0, v1, p0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get leapMonth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "is out of range.return 0."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUILunar"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static lunarToSolar(IIIZ)Ljava/util/Date;
    .locals 4

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->isLunarDate(IIIZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x76c

    :goto_0
    if-ge v2, p0, :cond_1

    invoke-static {v2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->getYearDays(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->leapMonth(I)I

    move-result v2

    if-eqz p3, :cond_2

    if-eq v2, p1, :cond_2

    return-object v1

    :cond_2
    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-lt p1, v2, :cond_7

    if-ne p1, v2, :cond_3

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-ge v3, p1, :cond_4

    invoke-static {p0, v3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p3

    add-int/2addr v0, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-le p1, v2, :cond_6

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result p3

    add-int/2addr v0, p3

    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p0

    if-le p2, p0, :cond_5

    return-object v1

    :cond_5
    add-int/2addr v0, p2

    goto :goto_3

    :cond_6
    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result p0

    if-le p2, p0, :cond_5

    return-object v1

    :cond_7
    :goto_2
    if-ge v3, p1, :cond_8

    invoke-static {p0, v3}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p3

    add-int/2addr v0, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result p0

    if-le p2, p0, :cond_5

    return-object v1

    :goto_3
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyyMMdd"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "19000130"

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method
