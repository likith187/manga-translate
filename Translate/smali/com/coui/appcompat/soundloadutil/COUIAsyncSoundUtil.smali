.class public Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COUI_DEBUG:Z

.field public static final FLAG_BYPASS_MUTE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "COUIAsyncSoundUtil"

.field private static sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSoundMap:Landroid/util/SparseIntArray;

.field private volatile mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "COUIAsyncSoundUtil"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static synthetic a([I)V
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->lambda$register$0([I)V

    return-void
.end method

.method private static ensureSoundPoolInstance()V
    .locals 2

    sget-object v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    iget-object v0, v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "COUIAsyncSoundUtil"

    const-string v1, "init sound pool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    invoke-direct {v0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->initSoundPool()V

    :cond_1
    return-void
.end method

.method private initSoundPool()V
    .locals 5

    sget-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    const-string v1, "COUIAsyncSoundUtil"

    if-eqz v0, :cond_0

    const-string v2, "init sound pool begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    invoke-virtual {v2, v3}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    const-string p0, "init sound pool end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$register$0([I)V
    .locals 5

    invoke-static {}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->ensureSoundPoolInstance()V

    sget-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "COUIAsyncSoundUtil"

    const-string v1, "sound pool initialized, load sound file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    sget-object v3, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    iget-object v4, v3, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->loadSoundFile(Landroid/content/Context;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadSoundFile(Landroid/content/Context;I)V
    .locals 4

    sget-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    const-string v1, "COUIAsyncSoundUtil"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load sound file id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already loaded"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static play(Landroid/content/Context;IFFIIF)V
    .locals 7

    sget-object v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    iget-object v0, v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->querySoundEffectsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->playSound(IFFIIF)V

    :cond_0
    return-void
.end method

.method private playSound(IFFIIF)V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    sget-boolean p1, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "soundId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "COUIAsyncSoundUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method

.method private static querySoundEffectsEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sound_effects_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static varargs register(Landroid/content/Context;[I)V
    .locals 4

    sget-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->COUI_DEBUG:Z

    const-string v1, "COUIAsyncSoundUtil"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register, sound file num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string v0, "init util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->sInstance:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->getInstance(I)Lcom/coui/appcompat/uiutil/COUIWorkHandler;

    move-result-object p0

    new-instance v0, Lr2/a;

    invoke-direct {v0, p1}, Lr2/a;-><init>([I)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;->start(Ljava/lang/Runnable;)V

    return-void
.end method
