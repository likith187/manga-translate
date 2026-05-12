.class final synthetic Ls4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/f;


# static fields
.field private static final a:Ls4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls4/c;

    invoke-direct {v0}, Ls4/c;-><init>()V

    sput-object v0, Ls4/c;->a:Ls4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lq4/f;
    .locals 1

    sget-object v0, Ls4/c;->a:Ls4/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lq4/g;

    invoke-static {p1, p2}, Ls4/d;->k(Ljava/lang/Boolean;Lq4/g;)V

    return-void
.end method
