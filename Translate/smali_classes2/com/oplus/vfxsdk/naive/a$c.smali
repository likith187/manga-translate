.class public final Lcom/oplus/vfxsdk/naive/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/a;->c(Lcom/oplus/vfxsdk/common/COEData;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/naive/a;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a$c;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(D)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$c;->a:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->o()Lcom/oplus/vfxsdk/common/t;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/common/t;->f(D)V

    return-void
.end method
