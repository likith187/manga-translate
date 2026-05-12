.class public final Lcom/coloros/translate/screen/translate/business/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/business/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/business/h$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/coloros/translate/screen/translate/business/h$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/coloros/translate/screen/translate/business/d$a;

.field private final c:Lcom/coloros/translate/screen/translate/engine/language/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/business/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/business/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/h;->d:Lcom/coloros/translate/screen/translate/business/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/translate/screen/translate/business/d$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iBridge"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    sget-object p1, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/h;->c:Lcom/coloros/translate/screen/translate/engine/language/j;

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/translate/business/h;Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/h;->k(Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    return-void
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/translate/business/h;Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/h;->l(Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/translate/business/h;Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/h;->m(Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V

    return-void
.end method

.method public static final synthetic f(Lcom/coloros/translate/screen/translate/business/h;)Lcom/coloros/translate/screen/translate/business/d$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    return-object p0
.end method

.method private final g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 p0, 0x0

    const-string v0, "ScreenTranslationModel"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base64Data onFailure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "base64Data is empty"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final h(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, p2, p3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "encodeToString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/translate/screen/translate/business/h;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x50

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/screen/translate/business/h;->h(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final j([I)[I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/i;->Q([I)[I

    move-result-object p0

    return-object p0
.end method

.method private final k(Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 11

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "dealGetResultString"

    const-string v2, "ScreenTranslationModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->g()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getTranslate()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p2, "dealGetResultString data is null"

    invoke-virtual {v0, v2, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p2}, Lcom/coloros/translate/screen/translate/business/d$a;->d(Lcom/coloros/translate/screen/translate/business/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/o;->q()V

    :cond_1
    check-cast v5, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getParagraphNo()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getAlgorithmModel()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x3

    if-ne v7, v10, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_5

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getSourceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v9, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getSourceText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v9, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v2, v6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/coloros/translate/screen/translate/business/d$a;->d(Lcom/coloros/translate/screen/translate/business/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final l(Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getTranslate()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getTranslateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "ScreenTranslationModel"

    if-nez v1, :cond_1

    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "dealImageResultView translateText is empty"

    invoke-virtual {p2, v2, v0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    const p2, 0x30d4b

    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/d$a;->a(Lcom/coloros/translate/screen/translate/business/g;I)V

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getRenderImage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/coloros/translate/screen/translate/business/h;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "renderedBitmap is empty"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "dealImageResultView"

    invoke-virtual {v1, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lcom/coloros/translate/screen/translate/business/d$a;->b(Lcom/coloros/translate/screen/translate/business/g;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dealImageResultView "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final m(Lcom/coloros/translate/screen/translate/business/g;Lcom/oplus/aiunit/translation/model/ImageTranslateResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "ScreenTranslationModel"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bitmap is recycled:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->g()V

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->c()F

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/coloros/translate/screen/translate/business/h;->o(Lcom/oplus/aiunit/translation/model/ImageTranslateResult;F)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "dealRenderResultView renderDataList is null"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v3, Lj8/n0$a;

    invoke-direct {v3}, Lj8/n0$a;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lj8/n0$a;->b:Z

    iget-object v4, p0, Lcom/coloros/translate/screen/translate/business/h;->a:Landroid/content/Context;

    invoke-static {v0, v2, v4, v3}, Lj8/n0;->c(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/content/Context;Lj8/n0$a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v4, "dealRenderResultView"

    invoke-virtual {v3, v1, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getTranslate()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;

    invoke-virtual {v4}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getTranslateText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/h;->b:Lcom/coloros/translate/screen/translate/business/d$a;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v2, p2}, Lcom/coloros/translate/screen/translate/business/d$a;->b(Lcom/coloros/translate/screen/translate/business/g;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealRenderResultView "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void
.end method

.method private final n(Ljava/util/List;F)[[I
    .locals 5

    const/4 p0, 0x4

    new-array v0, p0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, p0, :cond_0

    new-array v3, v3, [I

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :cond_1
    aget-object p0, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/Coordinates;->getX()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result v2

    aput v2, p0, v1

    aget-object p0, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/Coordinates;->getY()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result v2

    const/4 v4, 0x1

    aput v2, p0, v4

    aget-object p0, v0, v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/Coordinates;->getX()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result v2

    aput v2, p0, v1

    aget-object p0, v0, v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/Coordinates;->getY()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result v2

    aput v2, p0, v4

    aget-object p0, v0, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/Coordinates;->getX()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result v2

    aput v2, p0, v1

    aget-object p0, v0, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/Coordinates;->getY()F

    move-result v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result v2

    aput v2, p0, v4

    const/4 p0, 0x3

    aget-object v2, v0, p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {v3}, Lcom/oplus/aiunit/translation/model/Coordinates;->getX()F

    move-result v3

    div-float/2addr v3, p2

    invoke-static {v3}, Ly8/a;->b(F)I

    move-result v3

    aput v3, v2, v1

    aget-object v1, v0, p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/translation/model/Coordinates;

    invoke-virtual {p0}, Lcom/oplus/aiunit/translation/model/Coordinates;->getY()F

    move-result p0

    div-float/2addr p0, p2

    invoke-static {p0}, Ly8/a;->b(F)I

    move-result p0

    aput p0, v1, v4

    :cond_2
    :goto_1
    return-object v0
.end method

.method private final o(Lcom/oplus/aiunit/translation/model/ImageTranslateResult;F)Ljava/util/List;
    .locals 13

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getTranslate()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;

    new-instance v12, Lj8/v;

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getCoordinates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/coloros/translate/screen/translate/business/h;->n(Ljava/util/List;F)[[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getTranslateText()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/coloros/translate/screen/translate/engine/language/j;->i:Lcom/coloros/translate/screen/translate/engine/language/j$b;

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/j$b;->a()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getParagraphNo()I

    move-result v7

    invoke-virtual {p1}, Lcom/oplus/aiunit/translation/model/ImageTranslateResult;->getAngle()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getTextColor()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coloros/translate/screen/translate/business/h;->j([I)[I

    move-result-object v9

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getBackgroundColor()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coloros/translate/screen/translate/business/h;->j([I)[I

    move-result-object v10

    invoke-virtual {v2}, Lcom/oplus/aiunit/translation/model/ImageTranslateItem;->getParagraphCoordinates()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/coloros/translate/screen/translate/business/h;->n(Ljava/util/List;F)[[I

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lj8/v;-><init>([[ILjava/lang/String;Ljava/lang/String;IF[I[I[[I)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;->getINSTANCE()Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->cancelTranslate()V

    return-void
.end method

.method public b(Lcom/coloros/translate/screen/translate/business/g;)V
    .locals 13

    const-string v0, "presenterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lz8/c;->Default:Lz8/c$a;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lz8/c$a;->nextInt(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    move-object v3, v1

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/h;->c:Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->t()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coloros/translate/screen/translate/engine/language/a;->AUTO:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/business/m;->e()Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->f()Z

    move-result v2

    const-string v11, "ScreenTranslationModel"

    if-eqz v2, :cond_2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "translate PresenterRequest isRecycled"

    invoke-virtual {p0, v11, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v12, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/business/h;->c:Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->z()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/coloros/translate/screen/translate/business/h;->i(Lcom/coloros/translate/screen/translate/business/h;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v12

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v12}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getSourceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;->getTargetLanguage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translate translateImage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->Companion:Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager$Companion;->getINSTANCE()Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;

    move-result-object v0

    new-instance v1, Lcom/coloros/translate/screen/translate/business/h$b;

    invoke-direct {v1, p1, p0}, Lcom/coloros/translate/screen/translate/business/h$b;-><init>(Lcom/coloros/translate/screen/translate/business/g;Lcom/coloros/translate/screen/translate/business/h;)V

    invoke-virtual {v0, v12, v1}, Lcom/coloros/translate/screen/translate/engine/translate/TranslateManager;->translateImage(Lcom/coloros/translate/screen/translate/engine/translate/ScreenTranslateRequest;Lcom/coloros/translate/screen/translate/engine/translate/ImageTranslateListener;)V

    return-void
.end method
