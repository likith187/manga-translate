.class public abstract Lcom/coloros/translate/utils/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/utils/c0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/utils/c0$a;

.field private static final b:Ljava/lang/StringBuilder;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/utils/c0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/c0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/coloros/translate/utils/c0;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/coloros/translate/utils/c0$a;->b(Lcom/coloros/translate/utils/c0$a;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/translate/utils/c0;->c:Z

    invoke-static {v0}, Lcom/coloros/translate/utils/c0$a;->a(Lcom/coloros/translate/utils/c0$a;)V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/translate/utils/c0;->d:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/StringBuilder;
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->b:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lcom/coloros/translate/utils/c0;->f:I

    return v0
.end method

.method public static final synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/translate/utils/c0;->c:Z

    return v0
.end method

.method public static final synthetic e(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/utils/c0;->c:Z

    return-void
.end method

.method public static final synthetic f(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/utils/c0;->e:Z

    return-void
.end method

.method public static final synthetic g(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/utils/c0;->d:Z

    return-void
.end method

.method public static final synthetic h(I)V
    .locals 0

    sput p0, Lcom/coloros/translate/utils/c0;->f:I

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
