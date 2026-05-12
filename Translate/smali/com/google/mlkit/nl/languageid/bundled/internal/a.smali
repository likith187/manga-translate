.class public final Lcom/google/mlkit/nl/languageid/bundled/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public final b(Landroid/content/Context;Lh5/b;)Lj5/b;
    .locals 0

    new-instance p0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;-><init>(Landroid/content/Context;Lh5/b;)V

    return-object p0
.end method
