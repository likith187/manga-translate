.class final Lz5/c$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lz5/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz5/c$a;

    invoke-direct {v0}, Lz5/c$a;-><init>()V

    sput-object v0, Lz5/c$a;->INSTANCE:Lz5/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz5/c$a;->invoke()Lz5/c$a$a;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lz5/c$a$a;
    .locals 1

    .line 2
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lz5/c$a$a;

    invoke-direct {v0, p0}, Lz5/c$a$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
