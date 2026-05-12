.class public abstract Lb0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/d$e;,
        Lb0/d$c;,
        Lb0/d$b;,
        Lb0/d$a;,
        Lb0/d$f;,
        Lb0/d$d;
    }
.end annotation


# static fields
.field public static final a:Lb0/c;

.field public static final b:Lb0/c;

.field public static final c:Lb0/c;

.field public static final d:Lb0/c;

.field public static final e:Lb0/c;

.field public static final f:Lb0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/d$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb0/d$e;-><init>(Lb0/d$c;Z)V

    sput-object v0, Lb0/d;->a:Lb0/c;

    new-instance v0, Lb0/d$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb0/d$e;-><init>(Lb0/d$c;Z)V

    sput-object v0, Lb0/d;->b:Lb0/c;

    new-instance v0, Lb0/d$e;

    sget-object v1, Lb0/d$b;->a:Lb0/d$b;

    invoke-direct {v0, v1, v2}, Lb0/d$e;-><init>(Lb0/d$c;Z)V

    sput-object v0, Lb0/d;->c:Lb0/c;

    new-instance v0, Lb0/d$e;

    invoke-direct {v0, v1, v3}, Lb0/d$e;-><init>(Lb0/d$c;Z)V

    sput-object v0, Lb0/d;->d:Lb0/c;

    new-instance v0, Lb0/d$e;

    sget-object v1, Lb0/d$a;->b:Lb0/d$a;

    invoke-direct {v0, v1, v2}, Lb0/d$e;-><init>(Lb0/d$c;Z)V

    sput-object v0, Lb0/d;->e:Lb0/c;

    sget-object v0, Lb0/d$f;->b:Lb0/d$f;

    sput-object v0, Lb0/d;->f:Lb0/c;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
