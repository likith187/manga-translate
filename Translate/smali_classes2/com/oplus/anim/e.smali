.class public final synthetic Lcom/oplus/anim/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/o$b;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/o;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/o;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/e;->a:Lcom/oplus/anim/o;

    iput p2, p0, Lcom/oplus/anim/e;->b:I

    iput p3, p0, Lcom/oplus/anim/e;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/oplus/anim/a;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/e;->a:Lcom/oplus/anim/o;

    iget v1, p0, Lcom/oplus/anim/e;->b:I

    iget p0, p0, Lcom/oplus/anim/e;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/anim/o;->e(Lcom/oplus/anim/o;IILcom/oplus/anim/a;)V

    return-void
.end method
