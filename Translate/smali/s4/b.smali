.class final synthetic Ls4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/f;


# static fields
.field private static final a:Ls4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls4/b;

    invoke-direct {v0}, Ls4/b;-><init>()V

    sput-object v0, Ls4/b;->a:Ls4/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lq4/f;
    .locals 1

    sget-object v0, Ls4/b;->a:Ls4/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lq4/g;

    invoke-static {p1, p2}, Ls4/d;->j(Ljava/lang/String;Lq4/g;)V

    return-void
.end method
