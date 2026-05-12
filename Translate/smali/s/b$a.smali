.class public Ls/b$a;
.super Ls/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ls/b$a;->d(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ls/b$a;->e(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
