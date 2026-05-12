.class public final Lkotlinx/serialization/json/internal/ArrayPoolsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CHARS_IN_POOL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    const-string v0, "kotlinx.serialization.json.pool.size"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProperty(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/r;->m(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln8/r;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x200000

    :goto_1
    sput v0, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->MAX_CHARS_IN_POOL:I

    return-void
.end method

.method public static final synthetic access$getMAX_CHARS_IN_POOL$p()I
    .locals 1

    sget v0, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->MAX_CHARS_IN_POOL:I

    return v0
.end method
