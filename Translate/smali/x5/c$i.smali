.class final Lx5/c$i;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lx5/c$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx5/c$i;

    invoke-direct {v0}, Lx5/c$i;-><init>()V

    sput-object v0, Lx5/c$i;->INSTANCE:Lx5/c$i;

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
    invoke-virtual {p0}, Lx5/c$i;->invoke()Lx5/c$d;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lx5/c$d;
    .locals 0

    .line 2
    new-instance p0, Lx5/c$d;

    invoke-direct {p0}, Lx5/c$d;-><init>()V

    return-object p0
.end method
