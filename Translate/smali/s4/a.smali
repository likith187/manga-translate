.class final synthetic Ls4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# static fields
.field private static final a:Ls4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls4/a;

    invoke-direct {v0}, Ls4/a;-><init>()V

    sput-object v0, Ls4/a;->a:Ls4/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lq4/d;
    .locals 1

    sget-object v0, Ls4/a;->a:Ls4/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lq4/e;

    invoke-static {p1, p2}, Ls4/d;->i(Ljava/lang/Object;Lq4/e;)V

    return-void
.end method
