.class public final Lf3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf3/g;
    .locals 1

    invoke-static {}, Lf3/g$a;->a()Lf3/g;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 1

    invoke-static {}, Lf3/e;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .locals 0

    invoke-static {}, Lf3/g;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf3/g;->b()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
