.class public final Lh3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lh3/d;
    .locals 1

    invoke-static {}, Lh3/d$a;->a()Lh3/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lh3/a;
    .locals 2

    invoke-static {}, Lh3/b;->b()Lh3/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, La3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/a;

    return-object v0
.end method


# virtual methods
.method public b()Lh3/a;
    .locals 0

    invoke-static {}, Lh3/d;->c()Lh3/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh3/d;->b()Lh3/a;

    move-result-object p0

    return-object p0
.end method
