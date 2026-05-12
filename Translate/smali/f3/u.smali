.class final synthetic Lf3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$b;


# static fields
.field private static final a:Lf3/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/u;

    invoke-direct {v0}, Lf3/u;-><init>()V

    sput-object v0, Lf3/u;->a:Lf3/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lf3/b0$b;
    .locals 1

    sget-object v0, Lf3/u;->a:Lf3/u;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
