.class public abstract Lw4/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final b:Lw4/d$b;


# instance fields
.field private final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw4/d$b$a;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lw4/d$b$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lw4/d$b;->b:Lw4/d$b;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/d$b;->a:Ljava/lang/Class;

    return-void
.end method

.method private c(Lw4/d;)Lcom/google/gson/w;
    .locals 0

    iget-object p0, p0, Lw4/d$b;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, Lw4/o;->b(Ljava/lang/Class;Lcom/google/gson/v;)Lcom/google/gson/w;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(II)Lcom/google/gson/w;
    .locals 2

    new-instance v0, Lw4/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lw4/d;-><init>(Lw4/d$b;IILw4/d$a;)V

    invoke-direct {p0, v0}, Lw4/d$b;->c(Lw4/d;)Lcom/google/gson/w;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/gson/w;
    .locals 2

    new-instance v0, Lw4/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lw4/d;-><init>(Lw4/d$b;Ljava/lang/String;Lw4/d$a;)V

    invoke-direct {p0, v0}, Lw4/d$b;->c(Lw4/d;)Lcom/google/gson/w;

    move-result-object p0

    return-object p0
.end method

.method protected abstract d(Ljava/util/Date;)Ljava/util/Date;
.end method
