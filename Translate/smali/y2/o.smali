.class final synthetic Ly2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/h;


# static fields
.field private static final a:Ly2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/o;

    invoke-direct {v0}, Ly2/o;-><init>()V

    sput-object v0, Ly2/o;->a:Ly2/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lw2/h;
    .locals 1

    sget-object v0, Ly2/o;->a:Ly2/o;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Ly2/p;->b(Ljava/lang/Exception;)V

    return-void
.end method
