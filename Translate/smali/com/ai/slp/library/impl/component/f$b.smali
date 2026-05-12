.class final Lcom/ai/slp/library/impl/component/f$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ai/slp/library/impl/component/f;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ai/slp/library/impl/component/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ai/slp/library/impl/component/f$b;

    invoke-direct {v0}, Lcom/ai/slp/library/impl/component/f$b;-><init>()V

    sput-object v0, Lcom/ai/slp/library/impl/component/f$b;->INSTANCE:Lcom/ai/slp/library/impl/component/f$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ai/slp/library/impl/component/f$b;->invoke(Ljava/lang/Object;)Ly0/a;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ly0/a;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, p1, Lz0/c;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lz0/c;

    invoke-interface {p1}, Lz0/c;->release()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
