.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lz2/h;)Lz2/m;
    .locals 2

    new-instance p0, Lcom/google/android/datatransport/cct/d;

    invoke-virtual {p1}, Lz2/h;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lz2/h;->e()Lh3/a;

    move-result-object v1

    invoke-virtual {p1}, Lz2/h;->d()Lh3/a;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/datatransport/cct/d;-><init>(Landroid/content/Context;Lh3/a;Lh3/a;)V

    return-object p0
.end method
