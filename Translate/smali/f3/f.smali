.class public final Lf3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf3/f;
    .locals 1

    invoke-static {}, Lf3/f$a;->a()Lf3/f;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lf3/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, La3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lf3/f;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf3/f;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
