.class public abstract Ly9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ly9/a;


# instance fields
.field public final a:Lx9/g;

.field public final b:Lx9/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ly9/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly9/b;->b()Ly9/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Ly9/a;->c:Ly9/a;

    return-void
.end method

.method public constructor <init>(Lx9/g;Lx9/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9/a;->a:Lx9/g;

    iput-object p2, p0, Ly9/a;->b:Lx9/h;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Ly9/a;->c:Ly9/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()Ly9/a;
    .locals 1

    sget-object v0, Ly9/a;->c:Ly9/a;

    return-object v0
.end method
