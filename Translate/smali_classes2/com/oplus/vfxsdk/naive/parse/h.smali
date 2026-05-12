.class public final synthetic Lcom/oplus/vfxsdk/naive/parse/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/vfxsdk/naive/parse/COEView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/parse/h;->a:Lcom/oplus/vfxsdk/naive/parse/COEView;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/parse/h;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oplus/vfxsdk/naive/parse/h;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/parse/h;->a:Lcom/oplus/vfxsdk/naive/parse/COEView;

    iget-object v1, p0, Lcom/oplus/vfxsdk/naive/parse/h;->b:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/parse/h;->c:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/vfxsdk/naive/parse/COEView;->g(Lcom/oplus/vfxsdk/naive/parse/COEView;Ljava/lang/String;Z)V

    return-void
.end method
