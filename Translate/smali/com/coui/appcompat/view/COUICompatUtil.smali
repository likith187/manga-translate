.class public Lcom/coui/appcompat/view/COUICompatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_VIEW_INDEX:[I

.field private static final BUILD_INDEX:[I

.field private static final CHARS:[C

.field private static final CLICK_TOP_INDEX:[I

.field private static final CONFIGURATION_INDEX:[I

.field private static final LIST_VIEW_INDEX:[I

.field private static final OSVERSION_INDEX:[I

.field private static final THEME_VERSION_INDEX:[I

.field private static final VIEW_NATIVE_INDEX:[I

.field private static volatile sINSTANCE:Lcom/coui/appcompat/view/COUICompatUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x35

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    const/16 v0, 0x11

    const/16 v1, 0x15

    const/16 v2, 0x30

    const/16 v3, 0x20

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    sput-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->VIEW_NATIVE_INDEX:[I

    const/16 v3, 0x12

    const/16 v4, 0x17

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/coui/appcompat/view/COUICompatUtil;->BUILD_INDEX:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->OSVERSION_INDEX:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->CONFIGURATION_INDEX:[I

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->BASE_VIEW_INDEX:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->CLICK_TOP_INDEX:[I

    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->LIST_VIEW_INDEX:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->THEME_VERSION_INDEX:[I

    return-void

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x2es
    .end array-data

    nop

    :array_1
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0x8
        0xd
        0xd
        0x4
        0x11
        0x34
        0x15
        0x8
        0x4
        0x16
        0x34
        0x2f
        0x8
        0x4
        0x16
        0x30
        0x11
        0x0
        0xf
        0xf
        0x4
        0x11
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0xe
        0x12
        0x34
        0x1c
        0xe
        0xb
        0xe
        0x11
        0x1b
        0x14
        0x8
        0xb
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x4
        0x13
        0x1c
        0xe
        0xb
        0xe
        0x11
        0x28
        0x2c
        0x2f
        0x1e
        0x2b
        0x2c
        0x22
        0x28
        0x27
    .end array-data

    :array_4
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0x8
        0xd
        0xd
        0x4
        0x11
        0x34
        0x2
        0xe
        0xd
        0x13
        0x4
        0xd
        0x13
        0x34
        0x11
        0x4
        0x12
        0x34
        0x1c
        0xe
        0xd
        0x5
        0x8
        0x6
        0x14
        0x11
        0x0
        0x13
        0x8
        0xe
        0xd
        0x30
        0x11
        0x0
        0xf
        0xf
        0x4
        0x11
    .end array-data

    :array_5
    .array-data 4
        0x0
        0xd
        0x3
        0x11
        0xe
        0x8
        0x3
        0x34
        0x15
        0x8
        0x4
        0x16
        0x34
        0x28
        0xf
        0xf
        0xe
        0x1b
        0x0
        0x12
        0x4
        0x2f
        0x8
        0x4
        0x16
    .end array-data

    :array_6
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0x2
        0xb
        0x8
        0x2
        0xa
        0x13
        0xe
        0xf
    .end array-data

    :array_7
    .array-data 4
        0x2
        0xe
        0xc
        0x34
        0x2
        0xe
        0xb
        0xe
        0x11
        0x34
        0x8
        0xd
        0xd
        0x4
        0x11
        0x34
        0x16
        0x8
        0x3
        0x6
        0x4
        0x13
        0x34
        0x1a
        0x1
        0x12
        0x25
        0x8
        0x12
        0x13
        0x2f
        0x8
        0x4
        0x16
        0x30
        0x11
        0x0
        0xf
        0xf
        0x4
        0x11
    .end array-data

    :array_8
    .array-data 4
        0x11
        0xe
        0x34
        0xe
        0xf
        0xf
        0xe
        0x34
        0x13
        0x7
        0x4
        0xc
        0x4
        0x34
        0x15
        0x4
        0x11
        0x12
        0x8
        0xe
        0xd
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coui/appcompat/view/COUICompatUtil;
    .locals 2

    sget-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->sINSTANCE:Lcom/coui/appcompat/view/COUICompatUtil;

    if-nez v0, :cond_1

    const-class v0, Lcom/coui/appcompat/view/COUICompatUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coui/appcompat/view/COUICompatUtil;->sINSTANCE:Lcom/coui/appcompat/view/COUICompatUtil;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/view/COUICompatUtil;

    invoke-direct {v1}, Lcom/coui/appcompat/view/COUICompatUtil;-><init>()V

    sput-object v1, Lcom/coui/appcompat/view/COUICompatUtil;->sINSTANCE:Lcom/coui/appcompat/view/COUICompatUtil;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/coui/appcompat/view/COUICompatUtil;->sINSTANCE:Lcom/coui/appcompat/view/COUICompatUtil;

    return-object v0
.end method


# virtual methods
.method public getAbsListViewName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->LIST_VIEW_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->LIST_VIEW_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseViewName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->BASE_VIEW_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->BASE_VIEW_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClickTopName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->CLICK_TOP_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->CLICK_TOP_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfigurationName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->CONFIGURATION_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->CONFIGURATION_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOsBuildName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->BUILD_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->BUILD_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOsVersionMethodName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->OSVERSION_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->OSVERSION_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThemeVerisonName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->THEME_VERSION_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->THEME_VERSION_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViewNativeName()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/coui/appcompat/view/COUICompatUtil;->VIEW_NATIVE_INDEX:[I

    array-length p0, p0

    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/coui/appcompat/view/COUICompatUtil;->VIEW_NATIVE_INDEX:[I

    aget v2, v2, v1

    sget-object v3, Lcom/coui/appcompat/view/COUICompatUtil;->CHARS:[C

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
