.class abstract Lr7/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lr7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr7/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr7/d;-><init>(Lr7/d$a;)V

    sput-object v0, Lr7/d$c;->a:Lr7/d;

    return-void
.end method

.method static synthetic a()Lr7/d;
    .locals 1

    sget-object v0, Lr7/d$c;->a:Lr7/d;

    return-object v0
.end method
