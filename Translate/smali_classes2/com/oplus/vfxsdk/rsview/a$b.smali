.class final Lcom/oplus/vfxsdk/rsview/a$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/rsview/a;-><init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/vfxsdk/rsview/a;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/rsview/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/a$b;->this$0:Lcom/oplus/vfxsdk/rsview/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/a$b;->invoke()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/o;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/a$b;->this$0:Lcom/oplus/vfxsdk/rsview/a;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/a;->r()Ljava/util/HashMap;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method
