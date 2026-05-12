.class public abstract Lcom/google/android/gms/common/c;
.super Lcom/google/android/gms/common/d;
.source "SourceFile"


# static fields
.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/d;->a:I

    sput v0, Lcom/google/android/gms/common/c;->d:I

    return-void
.end method

.method public static c(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/d;->c(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method
