.class final Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    }
.end annotation


# static fields
.field private static final TEXT_DIRS_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristics"

.field private static final TEXT_DIR_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristic"

.field private static final TEXT_DIR_CLASS_LTR:Ljava/lang/String; = "LTR"

.field private static final TEXT_DIR_CLASS_RTL:Ljava/lang/String; = "RTL"

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static textDirection:Ljava/lang/Object;


# instance fields
.field private alignment:Landroid/text/Layout$Alignment;

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private end:I

.field private includePad:Z

.field private isRtl:Z

.field private maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private source:Ljava/lang/CharSequence;

.field private start:I

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    iput p3, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->width:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->start:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->end:I

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->maxLines:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->includePad:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method private createConstructorWithReflection()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-boolean p0, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->isRtl:Z

    const/4 v0, 0x1

    const-class v7, Landroid/text/TextDirectionHeuristic;

    if-eqz p0, :cond_1

    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    sput-object p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    const-class v1, Ljava/lang/CharSequence;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/text/TextPaint;

    const-class v6, Landroid/text/Layout$Alignment;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v11, Landroid/text/TextUtils$TruncateAt;

    move-object v2, v13

    move-object v3, v13

    move-object v5, v13

    move-object v8, v9

    move-object v12, v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Class;

    move-result-object p0

    const-class v1, Landroid/text/StaticLayout;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-boolean v0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->initialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 1

    new-instance v0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->maxLines:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    int-to-float v3, v0

    iget-object v4, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->end:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->end:I

    iget-boolean v3, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v3, :cond_2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v3, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    :cond_2
    iget v3, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->start:I

    iget-object v4, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    invoke-static {v1, v3, v2, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    iget-boolean v1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->includePad:Z

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    iget-boolean v1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->isRtl:Z

    if-eqz v1, :cond_3

    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    iget-object v1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    :cond_4
    iget p0, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->maxLines:I

    invoke-virtual {v0, p0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEnd(I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->end:I

    return-object p0
.end method

.method public setIncludePad(Z)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->includePad:Z

    return-object p0
.end method

.method public setIsRtl(Z)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->isRtl:Z

    return-object p0
.end method

.method public setMaxLines(I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->maxLines:I

    return-object p0
.end method

.method public setStart(I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->start:I

    return-object p0
.end method
