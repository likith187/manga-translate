.class public final synthetic Lcom/coloros/translate/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/utils/u;->a:Ljava/lang/String;

    iput p2, p0, Lcom/coloros/translate/utils/u;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/utils/u;->a:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/translate/utils/u;->b:I

    invoke-static {v0, p0}, Lcom/coloros/translate/utils/w;->a(Ljava/lang/String;I)V

    return-void
.end method
