.class public Lr3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/c;


# static fields
.field private static final a:Lr3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr3/e;

    invoke-direct {v0}, Lr3/e;-><init>()V

    sput-object v0, Lr3/e;->a:Lr3/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lr3/c;
    .locals 1

    sget-object v0, Lr3/e;->a:Lr3/e;

    return-object v0
.end method
