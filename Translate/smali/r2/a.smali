.class public final synthetic Lr2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/a;->a:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lr2/a;->a:[I

    invoke-static {p0}, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->a([I)V

    return-void
.end method
